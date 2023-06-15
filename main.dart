import 'dart:math';

import 'nodes/nodeIn.dart';
import 'nodes/nodeOut.dart';
import 'nodes/node.dart';
import 'nodes/nodeRELu.dart';
import 'utils/pair.dart';
// import 'nodes/nodeRELu.dart';
// import 'nodes/nodeSigmoid.dart';
void main (){
  
  List<List<Node>> M = [];
  final input = NodeInput();
  final output = NodeOutput();

  List<Node> layer0 = [input];
  List<Node> layer1 = [NodeRELu(), NodeRELu()];
  List<Node> layer2 = [output];

  for(Node node in layer1){ // TODO this is pretty much a layer setter
    node.next = layer2;
    for(Node _ in layer2){
      final w = Random().nextDouble() * 2 - 1;
      final b = Random().nextDouble() * 4 - 1;
      node.nextWB.add(Pair(w, b));
    }
  }

  for(Node node in layer0){ // TODO this is pretty much a layer setter
    node.next = layer1;
    for(Node _ in layer1){
      final w = Random().nextDouble() * 2 - 1;
      final b = Random().nextDouble() * 4 - 1;
      node.nextWB.add(Pair(w, b));
    }
  }

  input.call(1.0, 0, 0);
  print('output weights ${output.nextWB}, output: ${NodeOutput.output}');
}