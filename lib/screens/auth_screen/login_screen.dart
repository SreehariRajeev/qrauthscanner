import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrauthsuer/controllers/auth_screen_controller/auth_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AuthScreenController controller = Get.put(AuthScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),

            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.navigateToQRScreen();
                  },
                  child: Text("Scan QR"),
                ),
                Text("Please scan your Auth QR to Login"),
              ],
            ),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
