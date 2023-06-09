import '../nodes/node.dart';

class Rope {
  
  double _weight = 0, _bias = 0;
  Node? _exit = null;

  Rope();
  Rope.fill(double weight, double bias)
    : _weight = weight,
      _bias = bias;

  void set(node) => _exit = node;
  void call(input) => 
    _exit!.activate(input * _weight + _bias);
}