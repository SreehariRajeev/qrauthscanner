import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:qrauthsuer/screens/auth_screen/scan_qr_screen.dart';
import 'package:qrauthsuer/screens/home_screen/home_screen.dart';
import 'package:qrauthsuer/utilities/api_utility/api_utility.dart';

class AuthScreenController extends GetxController {
  QRViewController? qrController;

  navigateToQRScreen() {
    Get.to(() => ScanQrScreen());
  }

  void onQRViewCreated(QRViewController controller) {
    controller.scannedDataStream.listen((scanData) {
      // result = scanData;
      log(scanData.toString());
      Get.snackbar(
        "RESULT",
        scanData.code ?? "",
        backgroundColor: Colors.white,
      );
      if (scanData.code != null) {
        Get.offAll(() => HomeScreen(), arguments: scanData.code);
      }
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
