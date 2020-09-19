import React from 'react';
import axios from 'axios';
import $ from "jquery";
import Reviews from './components/Reviews.jsx';
import DashBoard from './components/Dashboard.jsx';

class App extends React.Component {
  constructor(props) {
    super(props);
      this.state = {
        reviews: [],
        currentCat: '',
        expanded: false,
        sortTypes: ['most recent', 'highest rated', 'lowest rated', 'most helpful'],
        numberOfReviews: 0,
        totalNumberOfRatings: 0,
        avgRating: 0,
        avgRatings:
        [
          [ "Value", 0 ],
          [ "Taste", 0 ],
          [ "Quality", 0 ]
        ],
        numberOfRatings: 0,
        recommendations: 0,
        recommendationPercent: 0,
        form: {
          catId: 9,
          author: 'user_name',
          title: '',
          content: '',
          rating: 0,
          value: 0,
          taste: 0,
          quality: 0,
          recommendation: 'Would recommend'
        },
        modal: false,
        errMessage: ''
      }
	    this.toggle = this.toggle.bind(this);
      this.getAverageRating = this.getAverageRating.bind(this);
      this.getAllReviewsAverages = this.getAllReviewsAverages.bind(this);
      this.getRecommendations = this.getRecommendations.bind(this);
      this.filterByRating = this.filterByRating.bind(this);
      this.getReviews = this.getReviews.bind(this);
      this.updateHelpfulCounter = this.updateHelpfulCounter.bind(this);
      this.sortBy = this.sortBy.bind(this);
      this.writeReview = this.writeReview.bind(this);
      this.changeField = this.changeField.bind(this);
      this.addReview = this.addReview.bind(this);
  }


	toggle() {
		this.setState(prevState => ({
			modal: !prevState.modal
		}))
	}

  filterByRating(e) {
    e.preventDefault();
    let filter = e.target.value;
    var filteredReviews = this.state.reviews;
    if (filter === '5')
      filteredReviews = this.state.reviews.filter((review) => { return review.review_value == filter })
    else if (filter === '4')
      filteredReviews = this.state.reviews.filter((review) => { return review.review_value == filter })
    else if (filter === '3')
      filteredReviews = this.state.reviews.filter((review) => { return review.review_value == filter })
    else if (filter === '2')
      filteredReviews = this.state.reviews.filter((review) => { return review.review_value == filter })
    else if (filter === '1')
      filteredReviews = this.state.reviews.filter((review) => { return review.review_value == filter })
      this.setState({
        reviews: filteredReviews,
        numberOfReviews: filteredReviews.length
        // recommendations: recs,
      })
      this.getAllReviewsAverages(filteredReviews);
      let avg =this.getAverageRating(filteredReviews);
      let recs = this.getRecommendations(filteredReviews);
      this.setState({ recommendations: recs.length, avgRating: avg  });
  }

  getRecommendations(reviews) {
    var totalRecommendations = 0;
    for (var i = 0; i < reviews.length; i++) {
      var currentRecommendation = reviews[i].recommendation;
      if (currentRecommendation === "Would recommend") {
        totalRecommendations ++;
      }
    }
    var total = totalRecommendations / reviews.length;
    var percent = total * 100;
    this.setState({
      recommendations: totalRecommendations,
      recommendationPercent: percent
    })
  }

  getAverageRating(reviews) {
      for (var i = 0; i < reviews.length; i++) {
        var totalRatings = 0;
        var rating = reviews[i].rating;
        for (var j = 0; j < rating.length; j++) {
          var currentRating = rating[j][1]
            totalRatings += currentRating;
        }
      }
      var avg = this.state.totalNumberOfRatings / reviews.length;
      this.setState({
        avgRating: avg
      });
  }

  getAllReviewsAverages(reviews) {
  var reviews = this.state.reviews;
      var totalStars = 0,
          totalVal = 0,
          totalTaste = 0,
          totalQuality = 0;
      for (var i = 0; i < reviews.length; i++) {
        var rating = reviews[i].rating,
          currentVal = rating[0][1],
          currentTaste = rating[1][1],
          currentQuality = rating[2][1];
        totalVal += currentVal;
        totalTaste += currentTaste;
        totalQuality += currentQuality;
      }
        totalStars += totalVal;
      let avgVal = totalVal / reviews.length,
       avgTaste = totalTaste / reviews.length,
       avgQuality = totalQuality / reviews.length,
       averages = [
        ["Value", Math.round(avgVal)],
        ["Taste", Math.round(avgTaste)],
        ["Quality", Math.floor(avgQuality)]
      ];
        this.setState({
        avgRatings: averages,
        totalNumberOfRatings: totalStars
        });
  }

  sortBy(e) {
    let type = e.target.value;
    console.log(type)
    let filteredReviews = this.state.reviews;
    if (type === 'most recent')
        filteredReviews = this.state.reviews.sort((a, b) => { return a.review_date - b.review_date })
    else if (type === 'highest rated')
        filteredReviews = this.state.reviews.sort((a, b) => { return b.review_value - a.review_value })
    else if (type === 'lowest rated')
        filteredReviews = this.state.reviews.sort((a, b) => { return a.review_value - b.review_value })
    else if (type === 'most helpful')
        filteredReviews = this.state.reviews.sort((a, b) => { return b.review_Is_Helpful - a.review_Is_Helpful })
    else { filteredReviews = this.state.reviews.sort((a, b) => { return a.id - b.id }) }
    this.setState({
      reviews: filteredReviews
    })
  }

  updateHelpfulCounter(e, i) {
    e.preventDefault();
    let reviews = this.state.reviews;
    let review = reviews[i];
    review.review_is_helpful ++;
    this.setState({ reviews });
    axios.patch('/reviews', { params: { review }})
    .then(res => {
      console.log('review was successfully updated');
    })
    .catch(err => {
      console.log(err, 'review could not be updated');
    })
  }

  getReviews(catName) {
    axios.get('/reviews', { params: {catName}})
      .then((res) => {
      let reviews = res.data;
      reviews.forEach((review) => {
        review.rating = [
          ['Value', review.review_value],
          ['Taste', review.review_taste],
          ["Quality", review.review_quality]
        ]
      })
      window.totalReviews = res.data.length;
      this.setState({
        reviews: reviews,
        numberOfReviews: reviews.length,
        currentCat: catName
      })
      return this.state.reviews;
    })
    .then(res => {
      this.getAllReviewsAverages(res);
      this.getAverageRating(res);
      this.getRecommendations(res);
    })
    .catch(err => {
      console.log(err, 'err getting reviews')
    })
  }

  writeReview() {
    $('#reviewButton').on('click', function() {
      if ($('#createReview').attr('hidden', 'true')) {
        $('#createReview').css('visibility', 'visibile');
      } else {
        $('#createReview').css('visibility', 'hidden');
      }
    });
  }

  addReview(e) {
  e.preventDefault();
  let form = this.state.form
  console.log(form);
    axios.post('./reviews', { form })
    .then(res => console.log(res, 'review was successfully created'))
    .catch(err => console.log(err, 'err creating review from client'))
  }

  componentDidMount() {
    this.getReviews('Luna');
    $('body').on('submit', '.form', (e) => {
      console.log(e.target[0].value);
      let formatted = e.target[0].value.replace(/(^\w|\s\w)(\S*)/g, (_,m1,m2) => m1.toUpperCase()+m2.toLowerCase());
      this.getReviews(formatted);
    });
     $('body').on('click', '.catRows', (e) => {
      this.getReviews(e.currentTarget.value);
    });
    $('body').on('click', '.catLinks', (e) => {
      this.getReviews(e.currentTarget.value);
    });
  }

  changeField(e, field) {
    e.preventDefault();
    let newReview = this.state.form;
    newReview[field] = e.target.value;
    newReview.forEach((f) => {
      if (newReview[f] === '') {
        this.setState({ errMessage: `missing ${f}`
        })
        return true
      } 
      else { return false }
    })
  }

  render() {
    return ( 
      <>
        <DashBoard data={this.state} totalRatings={this.state.totalNumberOfRatings} averages={this.state.avgRatings} />
        <Reviews
          reviews={this.state.reviews}
          state={this.state}
          sort={this.sortBy}
          sortTypes={this.state.sortTypes}
          filter={this.filterByRating}
          helpful={this.updateHelpfulCounter}
          createReview={this.writeReview}
          expanded={this.state.expanded}
          formData={this.state.form}
          changeField={this.changeField}
          writeReview={this.writeReview}
          addReview={this.addReview}
          toggle={this.toggle}
          modal={this.state.modal}
        />
      </>
     )
  };
};
 
export default App;