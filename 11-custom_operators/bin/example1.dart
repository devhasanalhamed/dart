void main(List<String> arguments) {
  /// [custom] operators are kinda like functions
  /// but with custom logic for us to handle
  final mom = FamilyMember(name: 'Mom');
  final dad = FamilyMember(name: 'Dad');
  final family = mom + dad;
  print(family);
}

class FamilyMember {
  final String name;

  const FamilyMember({required this.name});

  @override
  String toString() => 'Family Member (name = $name)';
}

class Family {
  final List<FamilyMember> members;
  const Family({required this.members});

  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(
        members: [this, other],
      );
}
