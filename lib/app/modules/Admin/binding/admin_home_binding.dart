import 'package:character_ai_gamma/app/modules/Admin/controller/admin_home_ctl.dart';

import 'package:get/get.dart';

class AdminHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AdminHomeCTL());
  }
}
