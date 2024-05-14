import 'dart:io';

class Contact {
  int? id;
  String name;
  String number;
  String email;
  File? photo;

  Contact({this.id, required this.name, required this.number, required this.email, this.photo});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'number': number,
      'email': email,
      'photo': photo?.path,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      name: map['name'],
      number: map['number'],
      email: map['email'],
      photo: File(map['photo']),
    );
  }
}
