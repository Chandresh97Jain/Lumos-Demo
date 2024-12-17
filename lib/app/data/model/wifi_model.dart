import 'package:lumos/utils/app_assets.dart';

class Wifi {
  final String name;
  final String icon;

  Wifi({required this.name, required this.icon});
  Wifi.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        icon = json['icon'];
}

final List<Map<String, String>> wifiList = [
  {'name': 'Wi-Fi 101', 'icon': AppAssets.wifi0},
  {'name': 'PingMe', 'icon': AppAssets.wifi01lock},
  {'name': 'NetNinja', 'icon': AppAssets.wifi0},
  {'name': 'RouterMan', 'icon': AppAssets.wifi02lock},
  {'name': 'WiGotYou', 'icon': AppAssets.wifi3},
  {'name': 'LinkUp', 'icon': AppAssets.wifi01lock},
  {'name': 'FastLAN', 'icon': AppAssets.wifi0},
  {'name': 'NetZone', 'icon': AppAssets.wifi01lock},
  {'name': 'Wi-Fi 5G', 'icon': AppAssets.wifi3},
  {'name': 'Home Wi-Fi', 'icon': AppAssets.wifi01lock},
  {'name': 'Immersive', 'icon': AppAssets.wifi02lock},
  {'name': 'Starklink', 'icon': AppAssets.wifi0},
];
