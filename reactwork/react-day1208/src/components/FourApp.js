import React from 'react';
import Alert from '@mui/material/Alert';
import AirplaneIcon from '@mui/icons-material/AirplanemodeActive';

function FourApp(props) {

    //배열변수선언
    const names=['영환','성경','호석','민규','성신','형준'];
    
    //반복문을 변수에 저장후 출력해도 된다
    const nameList=names.map((name)=>(<li>{name}</li>));

    //색상을 5개 배열로 주시고...결과물을 div로 출력하세요(box로 className주고 할것)
    const colornames=['red','blue','white','yellow','gold'];

    // const color=colornames.map((name)=>({name}));

    return (
        <div>
            <h3 className='alert alert-info'>FourApp입니다</h3>
            <Alert severity="error"><AirplaneIcon/>배열연습</Alert>
            <div>
                <h3>map연습</h3>
                <ol>
                    {
                        //반복문을 직접 리턴
                        names.map((name,index)=>(<b style={{marginLeft:'10px'}}>{index}:{name}</b>))
                    }
                    </ol>

                    <ul>{nameList}</ul>
                    <hr/>
                    <Alert severity="success"><h3>과제_배열색상 가로로 출력하기</h3></Alert>
                    <ol>
                    <div className='d-inline-flex'>
                        {
                        colornames.map((color,index)=>(<div className='box' style={{backgroundColor:color}}>{color}</div>))
                        }
                    </div>    
                    </ol>
            </div>
            
        </div>
    )
}

export default FourApp;