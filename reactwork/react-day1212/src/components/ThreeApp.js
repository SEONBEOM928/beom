import React, { useState } from 'react';

function ThreeApp(props) {
    
    const [boards,setBoards]=useState([

        {
            no:1,
            writer:'김선범',
            subject:'안녕?',
            photo:'01'
        },
        {
            no:2,
            writer:'최진평',
            subject:'국밥 마렵네',
            photo:'02'
        },
        {
            no:3,
            writer:'김석진',
            subject:'코딩 very easy',
            photo:'03'
        },
        {
            no:4,
            writer:'최성현',
            subject:'나는 하남자 ㅋ',
            photo:'04'
        },
        {
            no:5,
            writer:'장순영',
            subject:'면접 떨려요',
            photo:'05'
        },
    ])

    return (
        <div style={{marginLeft:'100px'}}>
            <h3 className='alert alert-danger'>ThreeApp입니다_객체배열 컴포넌트 배열안에 출력</h3>
            <table className='table table-bordered' style={{width:'600px'}}>
                <caption align='top'><b>배열객체출력</b></caption>
                <thead>
                    <tr>
                        <th width='60'>번호</th>
                        <th width='100'>사진</th>
                        <th width='260'>제목</th>
                        <th width='100'>작성자</th>
                    </tr>
                </thead>

                <tbody>
                    {
                        boards.map((row,index)=>(<tr>
                            <td>{row.no}</td>
                            <td><img src={`../image2/${row.photo}.png`} style={{width:'50px'}}/></td>
                            <td>{row.subject}</td>
                            <td>{row.writer}</td>
                        </tr>))
                    }
                </tbody>
            </table>
        </div>
    );
}

export default ThreeApp;