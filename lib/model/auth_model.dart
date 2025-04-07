class AuthModel {
  AuthModel({
    required this.identityNumber,
    required this.phoneNumber,
    required this.companyId,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      identityNumber: json['identityNumber'].toString(),
      phoneNumber: json['phoneNumber'].toString(),
      companyId: json['companyId'].toString(),
    );
  }
  final String identityNumber;
  final String phoneNumber;
  final String companyId;

  Map<String, dynamic> toJson() {
    return {
      'identityNumber': identityNumber,
      'phoneNumber': phoneNumber,
      'companyId': companyId,
    };
  }
}
