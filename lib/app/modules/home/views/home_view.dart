import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lumos/app/modules/home/views/widgets/wifilist.dart';
import 'package:lumos/utils/app_assets.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppAssets.logo,
                height: 130,
              ),
              Container(
                width: 1,
                height: 495,
                margin: EdgeInsets.symmetric(horizontal: 40),
                color: Colors.black,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Willkomen!",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lass uns beginnen indem wir uns mit einem WLAN verbinden.",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: WifiList(),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFC5C5C5),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8)),
                      onPressed: controller.shuffle,
                      label: Text(
                        "Neu Laden",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white, fontSize: 22),
                      ),
                      icon: Icon(
                        Icons.cached_rounded,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
