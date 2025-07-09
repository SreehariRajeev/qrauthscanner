import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrauthsuer/controllers/home_screen_controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: Text("Home")),
          body:
              controller.isLoading
                  ? CircularProgressIndicator.adaptive()
                  : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.network(
                            controller.userDetails["profilePic"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              controller.userDetails["name"],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              controller.userDetails["email"],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        SizedBox.shrink(),
                      ],
                    ),
                  ),
        );
      },
    );
  }
}
