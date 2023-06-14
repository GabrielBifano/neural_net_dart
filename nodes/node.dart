class Node {
  
  static double maxW = 1, minW = -1;
  static double step = 0.05;
  late double _output;
  List<Node> _next = [];

  Node(next, input){
    _next = next;
    _output = activate(input);
  }

  Node.configure(
    next,
    input,
    maxW,
    minW,
    step,
    ){
      
  }

  double activate(double input) => input;
  void spy() => print('Node operation result: $_output');
  
  void call() {
    for(final rope in _next){
      
    }
  }

}