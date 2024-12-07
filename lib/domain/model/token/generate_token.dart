
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_token.freezed.dart';
part 'generate_token.g.dart';
@freezed
class GenerateToken with _$GenerateToken {
  const factory GenerateToken({
    required String token,
  }) = _GenerateToken;
  
  factory GenerateToken.fromJson(Map<String, dynamic> json) => _$GenerateTokenFromJson(json);
}
