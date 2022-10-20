void main(List<String> args) {
  final swift = Car(
    id: DateTime.now().millisecondsSinceEpoch,
  );

  final baleno = Car(
    id: DateTime.now().millisecondsSinceEpoch,
    brand: 'Maruti Suzuki',
    model: 'Baleno',
    year: 2020,
  );

  print(swift);

  // swift.brand = 'Maruti Suzuki';

  // print('NullCheck operator: ' + swift.brand! + '');
  print('DefaultValue operator: ' + (swift.brand ?? 'brand_name_here') + '');
  print('Optional operator: ${swift.brand?.substring(0, 1) ?? ''}');

  print(baleno);
}

class Car {
  int id;
  String? brand;
  String model;
  int? year;

  Car({
    required this.id,
    this.brand,
    this.model = 'N/A',
    this.year,
  });

  @override
  String toString() {
    return '$id, $brand, $model, $year';
  }
}
