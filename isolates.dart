import 'dart:isolate';

echo() {

  port.receive((msg,reply){

    print("received $msg");
    reply.send( "Got It!" );

  });

}

child() {

  port.receive((_,replyTo){

    print("Done");
    replyTo.send("shutdown");

  });
}

main() {
  
  var p = spawnFunction(echo);

  p.call("Test").then((reply){
    print(reply);
  });

  var port = new ReceivePort();
  
  port.receive((msg,_){

    if (msg == "shutdown") {
      port.close();
    }

  });

  var c = spawnFunction(child);
  c.send("Yep", port.toSendPort());

}
