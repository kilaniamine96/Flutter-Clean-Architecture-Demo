class User {
  String id;
  String firstName;
  String lastName;

  User(this.id, this.firstName, this.lastName);

  toJson() {
    return {
      'id': this.id,
      'firstName': this.firstName,
      'lastName': this.lastName,
    };
  }

  User.fromJson(dynamic value) {
    id = value['id'];
    firstName = value['firstName'];
    lastName = value['lastName'];
  }
}
