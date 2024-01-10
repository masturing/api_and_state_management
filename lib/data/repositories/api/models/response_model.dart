class ResponseModel {
  final bool? status;
  final String? message;
  final dynamic data;
  final dynamic messageError;

  ResponseModel({
    this.status,
    this.message,
    this.data,
    this.messageError,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      status: json['status'],
      message: json['message'],
      data: json['data'],
      messageError: json['messageError'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data,
      'messageError': messageError,
    };
  }
}
