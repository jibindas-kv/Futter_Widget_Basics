class Vehicle {
  late String _model;

// Getter method
  String get model => _model;
// Setter method
  set model(String model) => _model = model;

}

void main() {
  var vehicle = Vehicle();
  vehicle.model = "Toyota";




  print(vehicle.model);

}