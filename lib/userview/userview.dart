import 'package:cripton_user/userview/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    UserController userController = Get.put(UserController());

    userController.fetchAllpostData();
    String photoID = "7efbd0f0-8b4a-4408-8586-0266b78d8190";

    String myimageid =
        "/Photo/EmpPicture/7efbd0f0-8b4a-4408-8586-0266b78d8190.jpg";
    var finalImage = userController.allmypost.value.photoUrl;

    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Obx(
          () => Padding(
            padding: const EdgeInsets.all(15.0),
            child: userController.isLoading.value
                ? CircularProgressIndicator()
                : Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          width: 180,
                          child: Image.network(
                            "https://bpm.pakizaknit.com/$finalImage",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          userController.allmypost.value.company.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          userController.allmypost.value.name.toString(),
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          userController.allmypost.value.department.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          userController.allmypost.value.userId.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        )),
      ),
    );
  }
}
