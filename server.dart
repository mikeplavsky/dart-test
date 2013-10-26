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

  var s = "some string";

  var splitClosure1 = s.split;
  var splitClosure2 = s.split;

  print( splitClosure1 );
  print( makeAdder );

  print( splitClosure1 == splitClosure2 );
  print( s.split == s.split );

}
