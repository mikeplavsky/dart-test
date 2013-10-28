import "dart:html";

reverseText(MouseEvent event){
  
  var text = query('#main').text;
  var buffer = new StringBuffer();

  for (var i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }

  query('#main').text = buffer.toString();

}

var toDoInput;
var toDoList;

addToDoItem(Event e){
  
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;

  toDoInput.value = '';
  toDoList.children.add(newToDo);

}

main() {
  query('#main')
    ..text = "Hello, World!"
    ..onClick.listen(reverseText);

  toDoInput = query("#to-do-input");
  toDoList = query("#to-do-list");

  toDoInput.onChange.listen(addToDoItem);
}
