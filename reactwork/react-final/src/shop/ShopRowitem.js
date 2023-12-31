import React from 'react';
import { useNavigate } from 'react-router-dom';

function ShopRowitem({idx,row}) {
    
    let photoUrl="http://localhost:9000/save/";

    const navi=useNavigate();

    return (
        <tr>
            <td>{idx+1}</td>
            <td>
                <img src={photoUrl+row.photo} className='small'/>
                <b>{row.sangpum}</b></td>
            <td>
                <button type='button' className='btn btn-info'
                onClick={()=>{
                   //navi("/shop/detail/"+row.num); 같은표현
                    navi(`/shop/detail/${row.num}`);
                }}>상세보기</button>
            </td>
        </tr>
    );
}

export default ShopRowitem;