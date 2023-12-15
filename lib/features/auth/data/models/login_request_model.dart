import '../../auth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel extends LoginRequest {
  const LoginRequestModel({
    required super.email,
    required super.password,
  });

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
