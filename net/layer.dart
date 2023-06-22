import 'dart:math';

import '../nodes/node.dart';
import '../utils/pair.dart';

class Layer {

  int size = 0;
  List<Node> layer = [];
  
  Layer.allocate(List<Node> nodes)
    : layer = nodes;
  
  void init(){
    for(Node node in layer){ // TODO this is pretty much a layer setter
      node.next = layer2;
      for(Node _ in layer2){
        final w = Random().nextDouble() * 2 - 1;
        final b = Random().nextDouble() * 4 - 1;
        node.nextWB.add(Pair(w, b));
      }
    }
  }
}