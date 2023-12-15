//es6 좀 더 언어적으로 바뀜 ,set,map 기능(컬렉션)
let set = new Set("abbcccddddeeeeeffffffggggggghhhhhhh");//중복문자 걸러짐
console.log(set);

set.add("i");//없으니까 추가됨
console.log(set);

console.log(set.has("a")); //있으면 true 반환
console.log(set.has("r")); //없으면 false 반환
console.log("길이: "+set.size);

console.log(...set); //중복되지 않으면서 펼쳐준다
set.delete("a"); //하나씩 삭제
console.log(...set);

set.clear(); //전체 삭제
console.log(set.size);

//비교연산자
let a=6;
let b="6";

console.log(a==b); //true 값으로만 비교
console.log(a===b); //false type까지 같아야함