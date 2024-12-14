import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:projects/config/app_icons.dart';

import '../components/toolbar.dart';
import '../config/app_string.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(title: AppString.nearby),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(11.528042112721556, 104.83025892770851),
            zoom: 10,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.ces.flutter',
              // titleProvider: NetworkTileProvider(),
            ),
            MarkerLayer(
              markers: [
                Marker(
                  width: 100,
                  height: 50,
                  point: LatLng(11.528042112721556, 104.83025892770851),
                  builder: (context){
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical:4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(14))),
                          child: Text("Username", style: TextStyle(color: Colors.black)),
                        ),
                        SvgPicture.asset(AppIcons.icLocation,
                        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                        ),
                      ],
                    );
                  }
                )
              ]
            )
          ],
        ));
  }
}
