class User {
  final int userId;
  final String userName;
  final String verificationToken;
  final int idElma;
  final String email;
  final String phoneNumber;

  User({
    required this.userId,
    required this.userName,
    required this.verificationToken,
    required this.idElma,
    required this.email,
    required this.phoneNumber,
  });

  factory User.fromJson(Map<dynamic, dynamic> json) {
    return User(
      userId: int.parse('${json['userID']}'),
      userName: json['userName'],
      verificationToken: json['verificationToken'],
      idElma: int.parse('${json['idElma']}'),
      phoneNumber: json['phoneNumber'],
      email: json['email'],
    );
  }
}
