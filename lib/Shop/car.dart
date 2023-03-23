import 'package:fitness_freak/dbhelper.dart';

class Car {
  int? id;
  String? date;
  String? name;
  String? miles;

  Car(this.id, this.date, this.name, this.miles);

  Car.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    date = map['date'];
    name = map['name'];
    miles = map['miles'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columndate: date,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnMiles: miles,
    };
  }
}
