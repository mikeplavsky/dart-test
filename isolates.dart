import 'dart:isolate';

echo() {

  port.receive((msg,reply){

    print("received $msg");
    reply.send( "Got It!" );

  });

}

main() {
  
  var p = spawnFunction(echo);

  p.call("Test").then((reply){
    print(reply);
  });

}
