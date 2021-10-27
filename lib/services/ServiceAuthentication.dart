import 'package:dio/dio.dart';

class ServiceAuthentication {
  static const String urlBase =
      'https://simangkos.kmselaras.com/simangkosapi/v1/';
  static Future<String?> getTokenTest() async {
    try {
      // print("Token di service ****************** ${tokenid}");

      final resp = await Dio().get(urlBase + "auth/getauth");
      var jsonData = resp.data;
      var status = jsonData['status'];
      var data = jsonData['data'];
      // print("Statusnya ****************** ${status}");
      if (200 == status) {
        print("Datanya ****************** $data");
        return data['token'];
      } else {
        print("DATA Nya** $data");
        return null;
      }
    } catch (e) {
      print("error $e");
      return e.toString();
    }
  }

  static Future<String?> getTokenDecryptTest(tokenid) async {
    try {
      // print("Token di service ****************** ${tokenid}");
      final resp = await Dio().get(urlBase + "auth/getauth");
      var jsonData = resp.data;
      var status = jsonData['status'];
      var data = jsonData['data'];
      // print("Statusnya ****************** ${status}");
      if (200 == status) {
        print("Datanya ****************** $data");
        return data['token'];
      } else {
        print("DATA Nya** $data");
        return null;
      }
    } catch (e) {
      print("error $e");
      return e.toString();
    }
  }
  // static Future<String> authByEmail(email, password) async {
  //   try {
  //     // print("Token di service ****************** ${tokenid}");

  //     final resp = await Dio().post(urlBase + "auth/getauthemailnew",
  //         data: {"credential": email, "secret": password});
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       // print("Datanya ****************** ${data}");
  //       return data['token'];
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return null;
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return e.toString();
  //   }
  // }

  // static Future<String> authByPreference(tokenid) async {
  //   try {
  //     // print("Token di service authByPreference ****************** ${tokenid}");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     // final resp = await dio.post(urlBase + "auth/getauthbytoken");
  //     final resp = await dio.post(urlBase + "auth/getauthbytokennew");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       // print("Datanya authByPreference****************** ${data}");

  //       return data['token'];
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return data;
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return e.toString();
  //   }
  // }

  // static Future<Member> getProfileByToken(tokenid) async {
  //   try {
  //     // print("Token di service authByPreference ****************** ${tokenid}");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     final resp = await dio.get(urlBase + "tenantsmember/bytoken/1");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       // print("Datanya authByPreference****************** ${data}");
  //       return Member.fromJson(data);
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return Member();
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return new Member();
  //   }
  // }

  // static Future<Member> getAdminByToken(tokenid) async {
  //   try {
  //     // print("Token di service authByPreference ****************** ${tokenid}");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     final resp = await dio.get(urlBase + "tenantsmember/getadminbytoken/1");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       // print("Datanya getAdminByToken****************** ${data}");
  //       return Member.fromJson(data);
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return Member();
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return new Member();
  //   }
  // }

  // static Future<List<MenuIconTextJson>> getOprationalMenu(tokenid) async {
  //   try {
  //     print(
  //         "Token di cek Stores ******HTTP********* ${urlBase}getoprasionalmenu");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     final resp = await dio.get(urlBase + "auth/getoprasionalmenu");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       print("Datanya Oprasional menu ****************** ${data}");

  //       return (data as List).map((x) => MenuIconTextJson.fromJson(x)).toList();
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return List<MenuIconTextJson>();
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return List<MenuIconTextJson>();
  //   }
  // }

  // static Future<List<MenuIconTextJson>> getReportMenu(tokenid) async {
  //   try {
  //     // print("Token di cek Stores ****************** ${tokenid}");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     final resp = await dio.get(urlBase + "auth/getreportmenu");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       print("Datanya Report menu ****************** ${data}");

  //       return (data as List).map((x) => MenuIconTextJson.fromJson(x)).toList();
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return List<MenuIconTextJson>();
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return List<MenuIconTextJson>();
  //   }
  // }

  // static Future<List<MenuIconTextJson>> getSettingsMenu(tokenid) async {
  //   try {
  //     // print("Token di cek Stores ****************** ${tokenid}");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     final resp = await dio.get(urlBase + "auth/getsettingsmenu");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       print("Datanya Report menu ****************** ${data}");

  //       return (data as List).map((x) => MenuIconTextJson.fromJson(x)).toList();
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return List<MenuIconTextJson>();
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return List<MenuIconTextJson>();
  //   }
  // }

  // static Future<List<MenuIconTextJson>> getTopMenu(tokenid) async {
  //   try {
  //     // print("Token di cek Stores ****************** ${tokenid}");
  //     Dio dio = new Dio();
  //     dio.options.headers["authorization"] = "token ${tokenid}";
  //     final resp = await dio.get(urlBase + "auth/gettopmenu");
  //     var jsonData = resp.data;
  //     var status = jsonData['status'];
  //     var data = jsonData['data'];
  //     // print("Statusnya ****************** ${status}");
  //     if (200 == status) {
  //       print("Datanya Top menu ****************** ${data}");

  //       return (data as List).map((x) => MenuIconTextJson.fromJson(x)).toList();
  //     } else {
  //       print("DATA Nya** ${data}");
  //       return List<MenuIconTextJson>();
  //     }
  //   } catch (e) {
  //     print("error ${e}");
  //     return List<MenuIconTextJson>();
  //   }
  // }

}
