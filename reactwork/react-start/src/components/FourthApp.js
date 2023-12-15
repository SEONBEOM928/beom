import React, { useState } from 'react';
import img1 from '../image/07.png';

function FourthApp(props) {

    const [name,setName]=useState('김선범');
    const [age,setAge]=useState(22);

    return (
        <div>
            <h3 className='alert alert-info'>FourApp입니다
            <img src={img1} className='rounded-circle' 
            style={{width:'50px',border:'2px solid black',marginLeft:'30px'}} /></h3>
            <b style={{fontSize:'25px'}}>이름:{name} <span style={{marginLeft:'20px'}}>나이:{age}세</span></b>
            <br/><br/>
            <button type='button' className='btn btn-outline-info'
            onClick={()=>{
                setName('김영환');
                setAge(25);
            }}>값변경</button>

            <button type='button' className='btn btn-outline-info' style={{marginLeft:'20px'}}
            onClick={()=>{
                setName('');
                setAge(0);
            }}>초기화</button>
        </div>
    );
}

export default FourthApp;