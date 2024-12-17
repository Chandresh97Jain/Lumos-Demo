import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:lumos/app/modules/home/controllers/home_controller.dart';
import 'package:lumos/app/modules/home/views/widgets/password_dialog.dart';
import 'package:lumos/utils/app_assets.dart';

class WifiList extends StatelessWidget {
  const WifiList({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      if (controller.isLoading.value) {
        return Center(
          child: SizedBox.square(
              dimension: 90, child: LottieBuilder.asset(AppAssets.animation2)),
        );
      } else {
        return ImplicitlyAnimatedList(
            items: controller.devices,
            itemBuilder: (context, animation, item, index) => InkWell(
                  onTap: () {
                    controller.isConnected.value = false;
                    showDialog(
                      context: context,
                      builder: (context) => PasswordDialog(
                        name: item.name,
                      ),
                    );
                  },
                  child: SizeFadeTransition(
                    sizeFraction: 0.7,
                    curve: Curves.easeInOut,
                    animation: animation,
                    key: Key(index.toString()),
                    child: Row(
                      children: [
                        SvgPicture.asset(item.icon, height: 24, width: 24),
                        SizedBox(width: 20),
                        Text(
                          controller.devices[index].name,
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ),
            areItemsTheSame: (a, b) => a == b);
      }
    });
  }
}
