import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lumos/app/modules/home/controllers/home_controller.dart';
import 'package:lumos/utils/app_assets.dart';
import 'package:lumos/utils/colors.dart';

class PasswordDialog extends GetView<HomeController> {
  const PasswordDialog({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: AppPallet.white,
      insetPadding: EdgeInsets.symmetric(horizontal: Size.width * 0.25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Obx(
          () => controller.isConnected.value
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox.square(
                        dimension: 150,
                        child: LottieBuilder.asset(AppAssets.animation1)),
                    Text(
                      "Erfolgreich verbunden",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppPallet.font),
                    ),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mit einem WLAN verbinden",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 26, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Text(
                          "Das Gerät versucht sich mit zu verbinden mit: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: AppPallet.grey),
                        ),
                        Text(
                          name,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      "Bitte gib dein Passwort für das Netzwerk hier ein:",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppPallet.grey),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Passwort",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 26, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => TextField(
                        obscureText: controller.isPassVisibel.value,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18,
                            ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppPallet.fiillColor,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Passwort',
                          hintStyle:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 20,
                                    color: AppPallet.black.withOpacity(.18),
                                  ),
                          suffixIcon: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                controller.isPassVisibel.value =
                                    !controller.isPassVisibel.value;
                              },
                              child: Icon(
                                controller.isPassVisibel.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppPallet.black.withOpacity(.51),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            backgroundColor: Color(0xFFC5C5C5),
                          ),
                          onPressed: () {
                            controller.isConnected.value = true;
                            Future.delayed(Duration(milliseconds: 1500), () {})
                                .then(
                              (value) => Get.back(),
                            );
                          },
                          label: Text(
                            "Verbinden",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.white, fontSize: 22),
                          ),
                          icon: Icon(
                            Icons.check_rounded,
                            color: Colors.white,
                            size: 30,
                          )),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
