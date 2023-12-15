//화살표 함수 : new 객체 생성 안됨
//자바의 random 익명 함수와 같은 방식(function키워드 대신 화살표사용)
/*
function 함수명(){
    함수 로직
}
function(){
    함수 로직
}
const 변수=function(){
    함수 로직
}
const 변수=()=>{
    함수 로직
}
*/
function f1(){
    console.log("일반함수 f1");
}
f1();

//화살표
let f2=()=>console.log("화살표함수 f2");
f2();

//일반
function f3(a,b){
    return a+b;
}

let a=f3(5,7);
console.log(a);

//화살표
let f4=(a,b)=>a+b;
let b = f4(11,22);
console.log(b);

//일반 
function f5(x,y,z=100){
    return x+y+z;
}
console.log(f5(1,2,3));
console.log(f5(40,50));

//f5를 화살표 함수 f6 으로 구현후 호출
let f6=(x,y,z)=>x+y+z;
console.log(f6(4,5,6));