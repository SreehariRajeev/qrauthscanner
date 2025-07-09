import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:qrauthsuer/controllers/auth_screen_controller/auth_screen_controller.dart';

class ScanQrScreen extends StatelessWidget {
  ScanQrScreen({super.key});
  final AuthScreenController controller = Get.find();
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRView(
        key: qrKey,
        overlay: QrScannerOverlayShape(borderColor: Colors.red),
        onQRViewCreated: controller.onQRViewCreated,
        cameraFacing: CameraFacing.back,
      ),
    );
  }
}
