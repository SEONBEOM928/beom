import React, {useState} from 'react';
import Alert from '@mui/material/Alert';
import BalanceIcon from '@mui/icons-material/Balance';
import img1 from '../image/c1.png';
import img2 from '../image/c2.png';
import img3 from '../image/c3.png';
import img4 from '../image/c4.png';
import img5 from '../image/c5.png';
import img6 from '../image/c6.png';

function FiveApp(props) {
    
    //이미지를 배열변수에 넣기(src)
    const imgArr=[img1,img2,img3,img4,img5,img6];

    //이미지를 배열변수에 넣기(public)
    const imgArr2=['1','2','3','4','5'];

    return (
        <div>
            <h3 className='alert alert-info'>FiveApp입니다</h3>
            <Alert severity="success"><BalanceIcon/>배열연습_#5</Alert>
            <h4>src의 이미지를 배열로 넣어 반복하기</h4>
            {
            imgArr.map((img)=>(<img src={img} style={{width:'70px'}}/>))
            }
            <h4>public의 이미지를 배열로 넣어 반복하기</h4>
            {
                //예전방식
                // imgArr2.map((photo)=>(<img className='photo' src={'../image2/f'+photo+'.png'}/>))
                   
                //리터럴방식
            imgArr2.map((photo)=>(<img src={`../image2/f${photo}.png`} className='photo'/>))
            }
        
        </div>
    );
}

export default FiveApp;