import React, { useState } from 'react';
import Alert from '@mui/material/Alert';
import BoatIcon from '@mui/icons-material/DirectionsBoat';
import RowitemApp from './RowitemApp';
import WriteForm from './WriteForm';

function OneApp(props) {
    
    const[board,setBoard]=useState([

        {
            name:'여진구',
            photo:'1',
            blood:'O',
            today:new Date()
        },
        {
            name:'김우빈',
            photo:'2',
            blood:'AB',
            today:new Date()
        },
        {
            name:'김영광',
            photo:'3',
            blood:'B',
            today:new Date()
        },
        {
            name:'박서준',
            photo:'4',
            blood:'A',
            today:new Date()
        }
    ]);

    //데이터 추가하는 함수이벤트
    //board를 바꾸면 렌더링이 되면서 추가된다
    const datasave=(data)=>{
        setBoard(board.concat({

            ...data,
            today:new Date()
    }))
}
    const deletedata=(idx)=>{
        setBoard(board.filter((item,i)=>(i!==idx)));
    }
    return (
        <div style={{marginLeft:'100px'}}>
            <Alert severity="info"><BoatIcon/>OneApp!!_테이블만들기(부모자식간의 통신)</Alert>
            
            <WriteForm onSave={datasave}/>

            <table className='table table-bordered' style={{width:'500px'}}>
                <caption align='top'><b>Board배열출력</b></caption>
                <thead>
                    <tr className='table-success'>
                        <th width='100'>이름</th>
                        <th width='120'>사진</th>
                        <th width='80'>혈액형</th>
                        <th width='160'>날짜</th>
                        <th width='70'>삭제</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        //데이터 개수만큼 호출됨..출력은 아직안됨..출력은 RowItem
                        board.map((row,index)=>(<RowitemApp row={row} idx={index} onDelete={deletedata}/>))
                        
                    }
                </tbody>
            </table>
        </div>
    );
}

export default OneApp;