import 'dart:math';

import 'net/neural_net.dart';

void main (){
  
  final c = Cerebro();

  c.setLayers([1, 2, 1]);
  c.printLayers();
  // print('output weights ${output.nextWB}, output: ${NodeOutput.output}');
}