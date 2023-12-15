import React from 'react';

function SixSubApp3({incre,decre}) {
    return (
        <div>
            <h3 className='alert alert-success'>3번째 자식</h3>
            <button type='button' className='btn btn-success' 
            onClick={incre}>증가</button>
            <button type='button' className='btn btn-danger' style={{marginLeft:'10px'}} 
            onClick={decre}>감소</button>
        </div>
    );
}

export default SixSubApp3;