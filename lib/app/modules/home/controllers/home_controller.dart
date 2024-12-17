import 'package:get/get.dart';
import 'package:lumos/app/data/model/wifi_model.dart';

class HomeController extends GetxController {
  final devices = <Wifi>[].obs;
  final isLoading = false.obs;
  final isPassVisibel = true.obs;
  final isConnected = false.obs;
  Future<void> getDevices() async {
    isLoading.value = true;
    isConnected.value = false;
    devices.clear();
    await Future.delayed(const Duration(seconds: 3));
    for (var devices in wifiList) {
      this.devices.add(Wifi.fromJson(devices));
    }
    isLoading.value = false;
    update();
  }

  void shuffle() {
    devices.shuffle();
    update();
  }

  @override
  void onInit() {
    getDevices();
    super.onInit();
  }
}
