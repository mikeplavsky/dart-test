makeAdder(var addBy) {
  adder(var i) {
    return i + addBy;
  }
  return adder;
}

var l = [1,2,3,4];
var g = {"test": 1, "next": 2, "prev": "a"};

main() {

  print("Yep!");
  print(l);
  print(g);

  print(makeAdder(12)(2));

}
