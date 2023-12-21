//import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:radio_asima/views/HomeScreen/home_screen.dart';
import 'package:radio_asima/views/loadingScreen/loading_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/services/appservices.dart';

class HomeController extends GetxController {
  ////////////////////RxBool options////////////
  RxBool TheEmail = false.obs;
  RxBool TheAboutUs = false.obs;

  ///////The Way//////////////////
  AppServices appServices = Get.find();

  RxBool isRealyGogin = false.obs;

  RxInt theWay = 0.obs;

/////////////Radio/////////////

  RxBool playRadio = false.obs;
  RxBool stopRadio = false.obs;
  RxBool isalreadyOnRadio = false.obs;
  //////////////////////////////Loading Ani////////////////////////
  RxBool changeTheColor = false.obs;
  RxBool getTheContainer = false.obs;
  RxBool changeTheWidhtOfContainer = false.obs;
  RxBool changeTheRadioisContainer = false.obs;

  RxBool getTheTextContainer = false.obs;
  RxBool getLogo = false.obs;

  makeMagic() async {
    await Future.delayed(const Duration(seconds: 4), () async {
      changeTheColor.value = true;
      if (changeTheColor.value = true) {
        Future.delayed(const Duration(seconds: 2), () async {
          getTheContainer.value = true;
          if (getTheContainer.value = true) {
            Future.delayed(const Duration(seconds: 3), () async {
              changeTheWidhtOfContainer.value = true;
            });
          }
          if (changeTheWidhtOfContainer.value = true) {
            Future.delayed(const Duration(milliseconds: 50), () async {
              getLogo.value = true;
            });
          }

          if (getLogo.value = true) {
            Future.delayed(const Duration(milliseconds: 100), () async {
              getTheTextContainer.value = true;
            });
          }
          if (getTheTextContainer.value = true) {
            Future.delayed(const Duration(milliseconds: 100), () async {
              changeTheRadioisContainer.value = true;
            });
          }
        });
      }
    });
  }

  void WhereISGogin() async {
    await Future.delayed(Duration(seconds: 2), () async {
      if (isRealyGogin.value == false) {
        isRealyGogin.value = true;

        if (appServices.sharedPreferences.containsKey('TheWay')) {
          Get.to(HomeScreen());
        } else {
          Get.to(LoadingScreen());
        }
      }
    });
  }

  whatsapp() async {
    var contact = "+905526250097";
    var androidUrl = "whatsapp://send?phone=$contact";

    await launchUrl(Uri.parse(androidUrl));
  }
}
