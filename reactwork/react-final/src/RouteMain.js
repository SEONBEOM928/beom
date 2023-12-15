import React from 'react';
import {Title, Main, Menu, Info} from './components';
import {Route, Routes} from 'react-router-dom';
import Login from './login/Login';
import Shop from './shop/Shop';
import Board from './board/Board';
import Member from './member/Member';
import About from './components/About';
import { ShopDetail, ShopForm } from './shop';

function RouteMain(props) {
    return (
        <div>
            <div className='title'><Title/></div>
            <div className='info'><Info/></div>
            <div className='menu'><Menu/></div>
            <div className='main'>
                <Routes>
                    <Route path='/' element={<Main/>}/>
                    <Route path='/shop/list' element={<Shop/>}/>
                    <Route path='/shop/form' element={<ShopForm/>}/>
                    <Route path='/shop/detail/:num' element={<ShopDetail/>}/>

                    <Route path='/board/list' element={<Board/>}/>
                    <Route path='/member/form' element={<Member/>}/>
                    <Route path='/login' element={<Login/>}/>
                    <Route path='/about' element={<About/>}/>
                    <Route path='*' element={
                        <div>
                            <h1>잘못된 주소입니다</h1>
                        </div>
                    }></Route>
                </Routes>
            </div>

        </div>
    );
}

export default RouteMain;