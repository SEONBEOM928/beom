import React, { useState } from 'react';
import Alert from '@mui/material/Alert';
import Brightness5Icon from '@mui/icons-material/Brightness5';
import TwoSubApp from './TwoSubApp';

function TwoApp(props) {
    
    const [color,setColor]=useState("green");
    const [message,setMessage]=useState('오늘은 수요일');
    const [photo,setPhoto]=useState('5');
    
    //3개의 이벤트를 만들어 전달
    const changeMessage=(msg)=>{
        setMessage(msg);
    }

    const changeColor=(color)=>{
        setColor(color);
    }

    const changePhoto=(photo)=>{
        setPhoto(photo);
    }
    return (
        <div>
            <Alert severity="warning"><Brightness5Icon/>TwoApp!!</Alert>
            <br/>
            <h1 style={{color:color}}>{message}</h1>
            <img src={`../image/${photo}.jpg`} style={{width:'200px'}}/>
            <br/>
            <TwoSubApp onMessage={changeMessage} onColor={changeColor} onPhoto={changePhoto}/>
        </div>
    );
}

export default TwoApp;