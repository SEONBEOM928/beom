import React, { useState } from 'react';
import img1 from '../image/c1.png';
import img2 from '../image/c2.png';
import img3 from '../image/c3.png';
import img4 from '../image/c4.png';
import img5 from '../image/c5.png';

function ThreeApp(props) {
    
    const[hp1,setHp1]=useState('02');
    const[hp2,setHp2]=useState('1111');
    const[hp3,setHp3]=useState('1111');
    const[photo,setPhoto]=useState(1);

    const changeHp1=(e)=>{
        setHp1(e.target.value);
    }

    const changeHp2=(e)=>{
        setHp2(e.target.value);
    }

    const changeHp3=(e)=>{
        setHp3(e.target.value);
    }

    const changePhoto=(e)=>{
        setPhoto(Number(e.target.value));
    }

    return (
        <div>
            <h3 className='alert alert-info'>ThreeApp입니다_문제1</h3>
        <div className='d-inline-flex' style={{height:'35px'}}>
            <select style={{width:'100px'}} defaultValue={hp1} onChange={changeHp1}>
                <option value='02'>02</option>
                <option value='010'>010</option>
                <option value='031'>031</option>
                <option value='017'>017</option>
                <option value='052'>052</option>
            </select>
            <b>-</b>
            <input type='text' maxLength='4' className='form-control' style={{width:'120px'}}
            defaultValue={hp2} onKeyUp={changeHp2}/>
            <b>-</b>
            <input type='text' maxLength='4' className='form-control' style={{width:'120px'}}
            defaultValue={hp3} onChange={changeHp3}/>
        
        
        <b style={{marginLeft:'50px',width:'300px'}}>이미지 선택: </b>
        <select className='form-control' onChange={changePhoto}>
            <option value='1'>이미지1</option>
            <option value='2'>이미지2</option>
            <option value='3'>이미지3</option>
            <option value='4'>이미지4</option>
            <option value='5'>이미지5</option>
        </select>
        </div>

<br/><br/>
    <h1>{hp1}-{hp2}-{hp3}</h1>
    <img src={photo===1?img1:photo===2?img2:photo===3?img3:photo===4?img4:photo===5?img5:''}/>
        <span>선범이 바보</span>
        </div>
    );
}

export default ThreeApp;<h3 className='alert alert-info'>ThreeApp입니다</h3>