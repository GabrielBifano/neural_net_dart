import 'layer.dart';
import '../nodes/node.dart';

class LayerOut extends Layer {

  int size = 0;
  List<Node> layer = [];
  

  LayerOut.allocate(List<Node> nodes,)
    : layer = nodes;
  
}