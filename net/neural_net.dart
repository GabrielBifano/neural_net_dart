import 'layer.dart';
import 'layerIn.dart';

class Cerebro { // Cerebro = Brain in portuguese

  int hiddenSize;
  List<double> dataStream;
  List<Layer> layers = [];
  late LayerInput input;
  
  Cerebro(List<double> data, int size)
    : dataStream = data,
      hiddenSize = size;

  void setLayers() {
    layers.add(LayerInput.allocate(nodes, nextLayer));
    for(int i = 1; i < hiddenSize; i++){

    }
  }

  // change the data stored at the neural network
  void feed(List<double> dataset) => dataStream = dataset;

  // Internal process functions
  void forward(){
    input.start();
  }

  void backward(){

  }

  // Utile functions

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
}