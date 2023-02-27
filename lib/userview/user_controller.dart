import 'package:cripton_user/userview/user_model.dart';
import 'package:cripton_user/userview/user_network.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    fetchAllpostData();
    super.onInit();
  }

  var isLoading = false.obs;
  var allmypost = UserModel().obs;

  void fetchAllpostData() async {
    try {
      isLoading(true);
      var allfinalpost = await UserAPI.fetPostData();
      if (allfinalpost != null) {
        allmypost.value = allfinalpost;
        isLoading(false);
      }
    } finally {
      isLoading(false);
    }
  }
}
