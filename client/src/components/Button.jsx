import React from 'react';
import Form from './Form.jsx';

const Button = (props) => {
  return (
    <>
      <div className="review-button-contaner">
        <button id="reviewButton" className="primary review-button" onClick={props.writeReview}>Write a review</button>
        <div id="createReview" className="createReview">
          <Form isOpen={props.modal} toggle={props.toggle}  changeField={props.changeField} formData={props.formData} writeReview={props.writeReview} addReview={props.addReview} setRating={props.setRating} />
        </div>
      </div>
    </>
  )

}

export default Button;