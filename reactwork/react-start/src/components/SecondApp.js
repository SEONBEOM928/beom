import React from 'react';
import img1 from '../image/04.png';

function SecondApp(props) {

    const imgstyle={
        width:'150px',
        border:'2px solid blue',
        borderRadius:'20px'
    }

    let helloEle=<h2 className='alert alert-info'>Hello~~</h2>;
    return (
        <div>
            <h2 className='alert alert-danger'>SecondApp 입니다.</h2>
            <img src={img1} style={imgstyle}/>
            {helloEle}
            {helloEle}
        </div>
    );
}

export default SecondApp;