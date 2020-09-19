import React from 'react';

const Form = (props) => {
  return (
    <>
        <form type="hidden" id="createReviewForm" onSubmit={props.addReview}>
            <div className="group">
                <label>Title</label>
                <input type="text" value={props.formData.title} onChange={(e) => props.changeField(e, 'title')} />
            </div>
            <div className="group">
                <label>Review</label>
                <textarea type="text" value={props.formData.content} onChange={(e) => props.changeField(e, 'content')} />
            </div>
            <div className="group">
                <label>How would you rate this cat?</label>
                {/* {[...Array(5)].map((n, i) => <i key={i} onChange={(e) => props.changeField(e, 'rating')} className="far fa-star newRating"></i>)} */}
                {[...Array(5)].map((n, i) => {
                    return i >= props.formData.rating ? <i key={i} onClick={() => props.setRating(i + 1)} className="far fa-star"></i> : <i onClick={() => props.setRating(i + 1)} key={i} className="fas fa-star"></i>
                })}
            </div>
            {/* <div className="group">
                <label>Would you recommend this cat?</label>
                <input id="recommendationCheck" type="checkbox" onChange={(e) => props.changeField(e, 'recommendation')} />
            </div> */}
            <div className="group">
                <label>Value: </label>
                <select onChange={(e) => props.changeField(e, 'value')}>
                    {[...Array(6)].map((n, i) => { return ( <option key={i} value={i}>{i}</option>)})}
                </select>
            </div>
            <div className="group">
                <label>Taste: </label>
                <select onChange={(e) => props.changeField(e, 'taste')}>
                    {[...Array(6)].map((n, i) => { return ( <option key={i} value={}>{i}</option>)})}
                </select>
            </div>
            <div className="group">
                <label>Quality: </label>
                <select onChange={(e) => props.changeField(e, 'quality')}>
                    {[...Array(6)].map((n, i) => { return ( <option key={i} value={i}>{i}</option>)})}
                </select>
            </div>
            <div className="group">
                <select onChange={(e) => props.changeField(e, 'recommendation')}>
                    <option value="Would recommend">Would recommend</option>
                    <option value="Would not recommend">Would not recommend</option>
                </select>
            </div>
            <button className="primary" onClick={(e) => props.writeReview(e)}>Submit</button>
        </form>
        <span style={{color: "red"}}>{props.errMessage}</span>
    </>
  
  )
}

export default Form;