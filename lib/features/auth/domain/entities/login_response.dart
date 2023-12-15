import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/constants/default_values.dart';

@JsonSerializable()
class LoginResponse extends Equatable {
  @JsonKey(name: 'access_token', defaultValue: DefaultValues.stringDefaultValue)
  final String accessToken;
  @JsonKey(name: 'token_type', defaultValue: DefaultValues.stringDefaultValue)
  final String tokenType;
  @JsonKey(name: 'expires_in', defaultValue: DefaultValues.numDefaultValue)
  final num expiresIn;

  const LoginResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  @override
  List<Object?> get props => [
        accessToken,
        tokenType,
        expiresIn,
      ];
}
