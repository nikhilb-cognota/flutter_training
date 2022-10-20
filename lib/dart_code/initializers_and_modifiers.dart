void main() {
  modifiers();
}

initializers() {
  /**
   * Initializers
   */

  // var
  // can hold any data
  // always initialized as dynamic type
  var i;

  // final
  // value is assigned only once
  // value cannot be reassigned but can be assigned later
  final fin;

  fin = 100;

  // fin = 200; // The final variable 'fin' can only be set once.

  // const
  // value needs to initialized when declared
  // value cannot be reassigned or assigned later
  const a = 1;
}

modifiers() {
  //// Instance member 'name' can't be accessed using static access.
  // User.name;

  final user = User();

  print('User id: ${User.id}');

  user.name = 's,dmnf,snd,fms,mndf';

  print(user.name);
}

class User {
  /// Modifiers

  // static

  static int id = 1;

  // late
  late final String name;

  @override
  String toString() {
    return '$id, $name';
  }
}
