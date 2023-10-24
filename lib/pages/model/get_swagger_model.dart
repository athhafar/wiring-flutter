class Data {
  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.photo,
  });
  late final String id;
  late final String firstName;
  late final String lastName;
  late final int age;
  late final String photo;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['firstName'] ;
    lastName = json['lastName'];
    age = json['age'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['age'] = age;
    _data['photo'] = photo;
    return _data;
  }
}