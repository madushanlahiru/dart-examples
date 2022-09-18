class Bicycle {
  int cadence;
  int _speed = 0; //Declared speed variable as a private
  int gear;

  //Constructor
  Bicycle(this.cadence, this.gear);
  
  //Getter method
  int get speed => _speed;
  
  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  
  void speedUp(int increment) {
    _speed += increment;
  }
  
  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  
  var bike = Bicycle(2, 1);
  print(bike);
  
}