import 'dart:math';
import 'node.dart';

class NodeSigmoid extends Node{

  @override
  double activate(double input) => atan(input);
}