let head = {
  glasses: 1
};
let table = {
  pen: 3
};
let bed = {
  sheet: 1,
  pillow: 2
};
let pockets = {
  money: 2000
};

pockets.__proto__=bed;
bed.__proto__=table;
table.__proto__=head;

console.log(table.__proto__);
console.log(table.glasses);
console.log(pockets.glasses);
console.log(head.glasses);

/* 2. pretty equal return time*/


var x = Object.create (pockets);
console.log(x);
console.log(x.money);
const a = () => {};
undefined
 function B() {}
undefined
 typeof a;
'function'
 typeof b;
'undefined'
 Object.getPrototypeOf(a);
[Function]
 Object.getPrototypeOf(b);
ReferenceError: b is not defined
 a.prototype;
undefined
b.prototype;
ReferenceError:

