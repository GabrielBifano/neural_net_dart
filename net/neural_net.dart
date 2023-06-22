import 'dart:math';

import '../nodes/node.dart';
import '../nodes/nodeIn.dart';
import '../nodes/nodeOut.dart';
import '../utils/pair.dart';

class Cerebro { // Cerebro = Brain in portuguese

  Cerebro();

  int? INPUT;
  int? OUTPUT;
  final layers = {};

  /// [hlayers] is a [int] vector,
  /// each element representing the
  /// ammount of [nodes] inside each layer

  void setLayers(hlayers) { // TODO just hlayers is fine
    
    INPUT = 0;
    OUTPUT = hlayers.length - 1;
    
    for(int i = hlayers.length - 1; i >= 0; i--){

      if (i == OUTPUT){
        layers[OUTPUT] = <NodeOutput>[];
        for(int j = 0; j < hlayers[OUTPUT]; j++)
          layers[OUTPUT].add(NodeOutput());
      
      } else if(i == INPUT){
        layers[INPUT] = <NodeInput>[];
        final adjacent = hlayers[INPUT! + 1];
        final wb = _generateWB(adjacent);
        for(int j = 0; j < hlayers[INPUT]; j++)
          layers[INPUT].add(NodeInput.set(adjacent, wb));
      
      } else {
        layers[i] = <Node>[];
        final adjacent = hlayers[i + 1];
        final wb = _generateWB(adjacent);
        for(int j = 0; j < hlayers[i]; j++)
          layers[i].add(Node.set(adjacent, wb));

      }
    }
  }

  // Internal process functions
  void forward(){
    // input.start();
  }

  void backward(){

  }

  // Inteface functions

  // uses the stored data to train
  void train() {
    // TODO logic here
  }

  // uses the stored data to validate its precision
  void validate() {
    // TODO logic here
  }

  // uses the stored data to find a 'squigle'
  void apply() {
    // TODO logic here
  }

  // Utils
  List<dynamic> _generateWB(size){
    List<dynamic> wb = [];
    for(int i = 0; i < size; i++){
      final w = Random().nextDouble() * 2 - 1;
      final b = Random().nextDouble() * 4 - 1;
      wb.add(Pair(w, b));
    }
    return wb;
  }
}