import '../nodes/node.dart';

class Layer {

  int size = 0;
  List<Node> layer = [];
  
  Layer();
  Layer.allocate(List<Node> nodes)
    : layer = nodes;
}