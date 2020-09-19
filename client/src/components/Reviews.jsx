import React from 'react';
import axios from 'axios';
import Review from './Review.jsx';
import Filter from './Filter.jsx';
import Button from './Button.jsx';


const Reviews = (props) => {
    return (
      <>
        <Button expanded={props.expanded} modal={props.modal} toggle={props.toggle} changeField={props.changeField} writeReview={props.writeReview} formData={props.formData} addReview={props.addReview} setRating={props.setRating} />
        <div className="reviews-h">
        <Filter sort={(e) => props.sort(e)} sortTypes={props.sortTypes} filter={props.filter} />
        <div className="matching-reviews">We found {props.state.numberOfReviews} matching reviews</div>
          {props.reviews.map((review, i) =>  {
            return ( <Review
                key={i}
                id={review.id}
                name={review.catName}
                review={review}
                index={i}
                sort={(e) => props.sortBy(e)}
                sortTypes={props.sortTypes}
                helpful={props.helpful}
                expanded={props.expanded}
              />
          )})}
        </div>
        <Button createReview={props.createReview} form={props.form} formData={props.formData}/>
      </>
    )
}

export default Reviews;