import React from 'react';

const Filter = (props) => {

    return (
      <>
        <div className="filters">
          <form>
            <select onChange={(e) => props.sort(e)}>
                {props.sortTypes.map((e, i) => { return ( <option key={i} value={e}>sort by {e}</option> )})}
            </select>
            <select id="filterSelector" onChange={(e) => props.filter(e)}>
                {[...Array(6)].map((n, i) => { return ( <option key={i} value={i}>filter by {i} stars</option> )}).reverse()}
            </select>
          </form>
        </div>
      </>
    )
}
 
export default Filter;