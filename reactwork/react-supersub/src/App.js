import logo from './logo.svg';
import './App.css';
import OneApp from './components/OneApp';
import TwoApp from './components/TwoApp';
import { useState } from 'react';


function App() {
  
  const [idx,setIdx]=useState(2);
  const selectComponent=(e)=>{
  setIdx(Number(e.target.value));
  }
  
  return (
    <div className="App">
      <div>
      <label>
        <input type='radio' name='compo' defaultValue='1' 
        onClick={selectComponent}/>OneApp
      </label>&nbsp;
      <label>
        <input type='radio' name='compo' defaultValue='2' 
        onClick={selectComponent}/>TwoApp
      </label>&nbsp;
      </div>
      <hr></hr>
      {idx===1?<OneApp/>:<TwoApp/>}
    </div>
  );
}

export default App;
