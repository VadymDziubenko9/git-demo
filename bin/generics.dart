class Stack <Elements> {

  var elements = <Elements>[];

  void push(Elements a) => elements.add(a);

  Elements pop() => elements.removeLast();

  @override
  String toString() {
    return elements.toString();
  }
}

void main() async{
 final elem = Stack<int>();
 elem.push(5);
 print(elem);
 elem.push(10);
 print(elem);
 elem.push(15);
 print(elem);
 elem.push(20);
 print(elem);


 final a = elem.pop();
 print('$a: $elem');
 final b = elem.pop();
 print('$b: $elem');
 final v = elem.pop();
 print('$v: $elem');
}
