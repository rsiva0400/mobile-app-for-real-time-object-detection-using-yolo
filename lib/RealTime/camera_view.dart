import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishnu04/RealTime/controller.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<ScanController>(
          init: ScanController(),
          builder: (ScanController controller) {
            return controller.isCameraInitialized.value
                ? CameraPreview(controller.cameraController)
                : const Center(child: Text("Loading Preview..."),);
          },
      
        ),
      ),
    );
  }
}
