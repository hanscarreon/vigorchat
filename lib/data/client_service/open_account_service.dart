import 'package:dio/dio.dart';

class OpenAccountService {
  Future<Map<String, dynamic>> generateToken() async {
    // final urlGenerate = dotenv.env['GENERATE_TOKEN'];

    final dio = Dio();
    final response = await dio.post('http://192.168.1.41:8082/token/generate');

    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception('Failed to generate token');
    }
  }

  Future<void> openAccount({
    required String token,
    required String email,
    required String firstName,
    required String lastName,
    required String middleName,
    required String permanentAddress,
    required String currentAddress,
    required String emailAddress,
    required String mobileAddress,
    required String jobTitle,
    required String sourceOfIncome,
  }) async {
    // final urlOpen = dotenv.env['OPEN_ACCOUNT'];
    final request = {
      "PersonPartyInfo": {
        "CreateRefIdent": "210705-031-00000000006",
        "PersonIndicator": "CI1",
        "PersonData": {
          "Photo": {
            "IssuedIdent": {"IssuedIdentValue": "Photo1.png"},
            "IdentImg": {
              "ContentType": "Photo CLOB",
              "BinData": "hjhtmjnghtgbnt"
            }
          },
          "PersonName": {
            "GivenName": firstName,
            "MiddleName": middleName,
            "FamilyName": lastName,
            "FullName": "$firstName $middleName $lastName"
          },
          "Contact": [
            {
              "PostAddr": {
                "Addr1": currentAddress,
                "Addr2": permanentAddress,
                "City": "C_289",
                "PostalCode": "1",
                "CountryCode": {"CountryCodeValue": "C_PH"},
                "StateProv": "P_50"
              },
              "Email": {"EmailAddr": "email@email.com"},
              "PhoneNum": [
                {"Phone": mobileAddress, "PhoneType": "Mobile"},
                {"Phone": "", "PhoneType": "Fax"}
              ]
            }
          ],
          "IssuedIdent": {"IssuedIdentValue": "", "IssuedIdentType": "TaxIdNb"}
        },
        "Gender": "M",
        "BirthPlace": "C_693",
        "BirthDt": "2000-01-01",
        "Nationality": "N_PH",
        "MaritalStat": "CS_M",
        "PartyStatus": "CST_ACTVE",
        "MotherMaidenName": "MAMA",
        "MBMotherMiddleName": "MAMA",
        "MBMotherLastName": "MAMA",
        "SpouseName": "Test1",
        "MBSpouseMidName": "Test2",
        "MBSpouseLastName": "Test3",
        "ImmigrationStat": "RS_C",
        "ResponsibleBranch": "907",
        "CreditRisk": [
          {"RiskCategory": "RCCR_B"}
        ],
        "SourceOfWealth": [
          {"OccupationalStat": sourceOfIncome}
        ],
        "Employment": [
          {"JobTitle": jobTitle}
        ],
        "MBHasConsent": "true",
        "MBNatureofEmployment": "NOBADV",
        "MBLNHitCd": "NH",
        "BirthCountryCd": "N_PH",
        "MBWmsCd": "",
        "OtherDetails": {"MBIsAffiliatedWithMBTC": "false"}
      }
    };

    final dio = Dio();
    final response = await dio.post(
      'http://192.168.1.41:8082/account/open',
      data: request,
      options: Options(
        headers: {
          'Authorization': token,
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to open account');
    }
    sendEmailNotif(email);
  }

  Future<void> sendEmailNotif(String email) async {
    // final urlSendEmail = dotenv.env['SEND_EMAIL'];
    // http://192.168.1.41:8083/notify/send-email
    final request = {
      "toEmail": email,
      "subject": "Account Opening Notification",
      "message":
          "Please visit your designated branch to complete the account opening process.",
    };

    final dio = Dio();
    final response = await dio.post(
      'http://192.168.1.41:8083/notify/send-email',
      data: request,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send email notification');
    }
  }
}
