class UserModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? imageUrl;

  UserModel({this.id, this.name, this.email, this.phone, this.imageUrl});
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    imageUrl = json['imageUrl'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'imageUrl': imageUrl,
    };
  }

  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email, phone: $phone, imageUrl: $imageUrl}';
  }
}
