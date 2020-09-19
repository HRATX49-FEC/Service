const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const db = require('../db/queries.js');

const PORT = process.env.PORT || 5200;

const app = express();

// MiddleWare
// app.use(favicon());
app.use(express.static(path.join(__dirname, '..', 'client', 'dist')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


// Routes

app.get(`/reviews`, (req, res) => {
    db.getCatReviews(req.query.catName, (err, results) => {
    if (err) {
      console.log(err, 'err getting reviews from server')
      res.sendStatus(404);
    } else {
      res.status(200)
      .send(results);
    }
  })
})

app.get(`/reviews`, (req, res) => {
    db.filterReviewsByType(req.query.catName, (err, results) => {
    if (err) {
      console.log(err, 'err getting filtered reviews from server')
      res.sendStatus(404);
    } else {
      res.status(200)
      .send(results);
    }
  })
})

app.post(`/reviews`, (req, res) => {
    db.addReview(req.body.form, (err, results) => {
    if (err) {
      console.log(err, 'err posting review from server')
      res.sendStatus(404)
    } else {
    console.log('successfully created review')
      res.status(200)
      res.send(results)
    }
  })
})

app.patch('/reviews', (req, res) => {
console.log(req.body.review.id)
  db.updateReview(req.body.review, (err, results) => {
    if (err) {
    console.log(err, 'err updating review from server')
      res.sendStatus(404)
    } else {
    // console.log(results, 'successfully updated review from server')
      res.status(200)
      res.send(results)
    }
  })
})


// Run Server
app.listen(PORT, () => {
    console.log(`Ready on port ${PORT}`);
})