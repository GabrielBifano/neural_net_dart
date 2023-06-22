import 'dart:math';

import '../nodes/node.dart';
import '../utils/pair.dart';
import 'layer.dart';

class LayerHidden extends Layer {

  int size = 0;
  Layer nextLayer;
  List<Node> layer = [];
  
  LayerHidden.allocate(List<Node> nodes, Layer nextLayer)
    : layer = nodes,
      nextLayer = nextLayer;
  
  void init(){
    for(Node node in layer){
      node.next = nextLayer.layer;
      for(Node _ in nextLayer.layer){
        final w = Random().nextDouble() * 2 - 1;
        final b = Random().nextDouble() * 4 - 1;
        node.nextWB.add(Pair(w, b));
      }
    }
  }
}