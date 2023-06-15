import 'layer.dart';

class Cerebro { // Cerebro = Brain in portuguese

  int hiddenSize = 0;
  List<double> dataStream;
  List<Layer> layers = [];

  Cerebro(List<double> data)
    : dataStream = data;

  // change the data stored at the neural network
  void feed(List<double> dataset) => dataStream = dataset;

  // Internal process functions
  void forward(){
    for(Layer layer in layers){
      
    }
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