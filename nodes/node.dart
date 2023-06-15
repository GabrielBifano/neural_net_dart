import '../utils/pair.dart';

class Node {
  
  static double maxW = 1, minW = -1;
  static double step = 0.05;
  
  List<Node> next = [];
  List<Pair<double>> nextWB = [];

  Node();

  Node.configure(
    next,
    maxW,
    minW,
    step,
    ){
    next = next;
    Node.step = step;
    Node.maxW = maxW;
    Node.minW = minW;
  }


  double activate(double input) => input;

  void spy(out) => print('Node operation result: $out');
  void spyWB(){for(Pair p in nextWB) print('Node operation result: ${p.toString()}');}
  
  void call(input, weight, bias) {
    
    double output = activate(input);
    output *= weight;
    output += bias;
    spyWB(); //TODO remove this
    for(int i = 0; i < next.length; i++){
      final node = next[i];
      final params = nextWB[i];
      node.call(output, params.w, params.b);
    }
  }

}