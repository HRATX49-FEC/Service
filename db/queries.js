const mysql = require('mysql');

const connection = mysql.createConnection({
    host: process.env.RDS_HOSTNAME || 'localhost',
    user: process.env.RDS_USERNAME || 'root',
    password: process.env.RDS_PASSWORD || 'HackReactor1',
    port: process.env.RDS_PORT || 3306,
    database: 'purrget'
})

connection.connect(err => {
    if(err) {
        console.log('error connecting to database.', err);
    } else {
        console.log('successfully connected to db.');
    }
})

connection.getCatReviews = (catName, cb) => {
    connection.query(`select * from reviews INNER JOIN cats ON (cats.catName='${catName}' AND reviews.cat_id=cats.id)`, catName, (err, results) => {
        if (err) {
            console.log(err, 'err in database query')
            cb(err, null);
        } else {
            cb(null, results);
        }
    })
}

connection.addReview = (body, cb) => {
const { catId, author, title, content, rating, value, taste, quality, recommendation } = body;
    connection.query(`insert into reviews (cat_id, review_author, review_title, review_content, review_rating, review_value, review_taste, review_quality, recommendation) values ('${body.catId}', '${body.author}', '${body.title}', '${body.content}', '${body.rating}', '${body.value}', '${body.taste}', '${body.quality}', '${body.recommendation}')`, (err, results) => {
        if (err) {
        console.log(err, 'err in db query')
            cb(err, null);
        } else {
        console.log('successfully added review to db')
            cb(null, results);
        }
    })
}

connection.updateReview = (body, cb) => {
const { review_is_helpful, id } = body;
    connection.query(`update reviews set review_is_helpful='${body.review_is_helpful}' where id='${body.id}'`, (err, results) => {
        if (err) {
            console.log(err, 'err in db query')
            cb(err, null);
        } else {
            console.log(results)
            cb(null, results);
        }
    })
}
 
module.exports = connection;