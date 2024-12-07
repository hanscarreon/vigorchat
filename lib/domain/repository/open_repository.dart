import 'package:chatvigor/presentation/bloc/chat/chat_state.dart';

abstract class OpenRepository {
  String toEmail = '';
  String email = '';
  String firstName = '';
  String lastName = '';
  String middleName = '';
  String permanentAddress = '';
  String currentAddress = '';
  String emailAddress = '';
  String mobileAddress = '';
  String jobTitle = '';
  String sourceOfIncome = '';
  String token = '';

  Future<String> generateToken();

  void openAccount(ChatState state);

  Future<void> sendEmailNotif(String email);

  void saveNames({
    required String firstName,
    required String lastName,
    required String middleName,
  });

  void saveAddress({
    required String permanentAddress,
    required String currentAddress,
  });

  void saveContact({
    required String email,
    required String mobileNumber,
  });

  void saveEmployment({
    required String jobTitle,
    required String sourceOfIncome,
  });
}
