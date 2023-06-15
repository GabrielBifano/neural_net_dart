import 'node.dart';

class NodeOutput extends Node {

  static double output = 0;

  @override
  void call(input, weight, bias) {
    output += input;
  }
}