import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

class QiblahCompassWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());

        final qiblahDirection = snapshot.data;

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
           // Image.asset('images/compass-on-a-white-background-vector-24374250.jpg',width: 300,height: 300,),

            Transform.rotate(
              angle: ((qiblahDirection?.qiblah ?? 0) * (pi / 180) * -1),
              alignment: Alignment.center,
              child:Image.asset('images/compass-map-icon.png',height: 500,width: 500,) ,
            ),

            // Positioned(
            //   top: qiblahDirection?.direction,
            //   child: Transform.rotate(
            //     angle: ((qiblahDirection?.qiblah ?? 0) * (pi / 180) * -1),
            //     alignment: Alignment.center,
            //     child:Image.asset('images/WhatsApp Image 2023-03-30 at 1.37.18 PM.jpeg',height: 100,width: 100,) ,
            //   ),
            // ),
          ],
        );
      },
    );
  }
}