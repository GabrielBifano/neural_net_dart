import 'dart:math';

import '../nodes/node.dart';
import '../nodes/nodeIn.dart';
import '../utils/pair.dart';
import 'layer.dart';

class LayerInput extends Layer {

  int size = 0;
  Layer nextLayer;
  List<Node> layer = [];
  List<int>? data;
  
  LayerInput.allocate(List<NodeInput> nodes, Layer nextLayer)
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

  void start(){
    int i = 0, j = 0;
    for(Node node in layer){
      // TODO: é possivel eliminar o next layer, uma vez que a
      // lista de pesos e viéses está guardada dentro de node
      for(Node _ in nextLayer.layer){
        _.call(data![i], node.nextWB[j].w, node.nextWB[j].b);
        j++;
      }
      j = 0;
      i++; 
    }
  }
}