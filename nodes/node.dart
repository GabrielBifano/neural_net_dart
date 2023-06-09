import '../ropes/rope.dart';

class Node {
  
  late double _output;
  List<Rope> _next = [];

  Node(next, input){
    _next = next;
    _output = activate(input);
  }

  double activate(double input) => input;
  void spy() => print('Node operation result: $_output');
  
  void call() {
    for(final rope in _next){
      rope.call(_output);
    }
  }

}