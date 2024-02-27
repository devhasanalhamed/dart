void main(List<String> args) {
  /// [Falling through] on enumerations cases
  /// where you want a case to go to the next case
  final vehicle = VehicleType.truck;

  /// example for fall through
  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
    case VehicleType.car:
      print('Most common personal vehicles');
    case VehicleType.truck:
      print('Usually used for work');
    default:
      print('Tell me more!');
  }
}

enum VehicleType { car, truck, motorcycle, bicycle }
