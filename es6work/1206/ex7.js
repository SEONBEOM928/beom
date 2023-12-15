let irum="강호동";
let birth=1989;
let likefood="삼겹살";
let guboon="===========================";

let curYear=new Date().getFullYear();//숫자 4자리반환

//예전 방식
let result="이름:"+irum+"\n태어난 년도: "+birth+"\n나이: "+(curYear-birth)+"\n좋아하는음식: "+likefood;

console.log(result);
console.log(guboon);

//리터럴(백틱 맥북 ``)..중간변수 ${변수명}
let result2=`이름: ${irum}
태어난연도:${birth}
나이:${curYear-birth}
최애음식:${likefood}
`;
console.log(result2);