import 'dart:math';
import 'node.dart';

class NodeSigmoid extends Node{
  
  NodeSigmoid(next, input) : super(next, input);

  @override
  double activate(double input) => atan(input);
}