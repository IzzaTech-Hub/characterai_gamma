import 'package:character_ai_gamma/app/modules/avatar/controller/avatar_view_ctl.dart';
import 'package:get/get.dart';

class AvatarViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AvatarViewCTL());
  }
}
