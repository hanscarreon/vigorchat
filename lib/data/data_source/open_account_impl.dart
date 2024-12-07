import 'package:chatvigor/data/client_service/open_account_service.dart';
import 'package:chatvigor/domain/model/token/generate_token.dart';
import 'package:chatvigor/domain/repository/open_repository.dart';

class OpenAccountImpl extends OpenRepository {
  final OpenAccountService openAccountService;

  OpenAccountImpl({
    required this.openAccountService,
  });
  @override
  Future<String> generateToken() async {
    final response = await openAccountService.generateToken();
    final GenerateToken tokenResponse = GenerateToken.fromJson(response);
    token = tokenResponse.token;
    return tokenResponse.token;
  }

  @override
  Future<void> openAccount() async {
    openAccountService.openAccount(
      token: token,
      email: email,
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      permanentAddress: permanentAddress,
      currentAddress: currentAddress,
      emailAddress: emailAddress,
      mobileAddress: mobileAddress,
      jobTitle: jobTitle,
      sourceOfIncome: sourceOfIncome,
    );
  }

  @override
  Future<void> sendEmailNotif(String email) {
    return openAccountService.sendEmailNotif(email);
  }

  @override
  void saveAddress({
    required String permanentAddress,
    required String currentAddress,
  }) {
    this.permanentAddress = permanentAddress;
    this.currentAddress = currentAddress;
  }

  @override
  void saveContact({
    required String email,
    required String mobileNumber,
  }) {
    this.email = email;
    mobileAddress = mobileNumber;
  }

  @override
  void saveEmployment({
    required String jobTitle,
    required String sourceOfIncome,
  }) {
    this.jobTitle = jobTitle;
    this.sourceOfIncome = sourceOfIncome;
  }

  @override
  void saveNames({
    required String firstName,
    required String lastName,
    required String middleName,
  }) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.middleName = middleName;
  }
}
