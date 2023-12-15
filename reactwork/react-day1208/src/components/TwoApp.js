import React, { useState } from 'react';

function TwoApp(props) {
    
    const[photo,setPhoto]=useState('../image2/f2.png');
    const changePhoto=(e)=>{
        setPhoto(e.target.value);
    }
    
    return (
        <div>
            <h3 className='alert alert-info'>TwoApp입니다_Radio버튼</h3>
            <div>
                <b>이미지선택: </b>
                <label>
                    <input type='radio' name='photo' value='../image2/f1.png'
                    onClick={changePhoto}/> 이미지1
                </label>
                &nbsp;&nbsp;
                <label>
                    <input type='radio' name='photo' value='../image2/f2.png' onClick={changePhoto}
                    defaultChecked/> 이미지2
                </label>
                &nbsp;&nbsp;
                <label>
                    <input type='radio' name='photo' value='../image2/f3.png'
                    onClick={changePhoto}/> 이미지3
                </label>
                &nbsp;&nbsp;
                <label>
                    <input type='radio' name='photo' value='../image2/f4.png'
                    onClick={changePhoto}/> 이미지4
                </label>
                &nbsp;&nbsp;
                <label>
                    <input type='radio' name='photo' value='../image2/f5.png'
                    onClick={changePhoto}/> 이미지5
                </label>
                &nbsp;&nbsp;
            </div>
            <div>
                <img src={photo}></img>
            </div>
        </div>
    );
}

export default TwoApp;