import 'dart:mirrors';

void main(List<String> args) {
  /// Mixins and [reflection]

  print(Person(name: 'John', age: 25));
  print(House(address: '22 First Road', rooms: 12, isRent: true));
}

class Person with HasDescription {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;
  final bool isRent;

  House({required this.address, required this.rooms, required this.isRent});
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);

    final thisType = MirrorSystem.getName(reflection.type.simpleName);

    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection.getField(field.simpleName).reflectee
    }.toString();
    return '$thisType = $properties';
  }
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);

    /// type is a property implemented on variable mirror
    final fieldType = MirrorSystem.getName(type.simpleName);

    return '$fieldName ($fieldType)';
  }
}
