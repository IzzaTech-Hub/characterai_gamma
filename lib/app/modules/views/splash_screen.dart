import 'package:character_ai_gamma/app/modules/controllers/splash_screen_ctl.dart';
import 'package:character_ai_gamma/app/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utills/images.dart';
import '../../utills/size_config.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);
  // Obtain shared preferences.
  bool? b;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        color: AppColors.ScaffoldColor,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 20,
                  left: SizeConfig.blockSizeHorizontal * 19),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(SizeConfig.blockSizeHorizontal * 4),
                child: Image.asset(
                  AppImages.main_icon,
                  width: SizeConfig.blockSizeHorizontal * 60,
                  // height: SizeConfig.blockSizeVertical * 30,

                  // fit: BoxFit.cover,
                ),
              ),
            ),
            // Opacity(
            //   opacity: 0.7,
            //   child: Container(
            //     width: SizeConfig.screenWidth,
            //     height: SizeConfig.screenHeight,
            //     color: Colors.black,
            //   ),
            // ),

            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpace(SizeConfig.blockSizeVertical * 15),
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 15),
                    child: Text("RolePlay Friend AI",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeHorizontal * 6,
                            fontWeight: FontWeight.bold)),
                  ),
                  verticalSpace(SizeConfig.blockSizeVertical * 1),
                  Text("Your favorite, your adventure!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeHorizontal * 4,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 5),
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Padding(
            //             padding: EdgeInsets.only(
            //                 top: SizeConfig.blockSizeVertical * 15,
            //                 right: SizeConfig.blockSizeHorizontal * 15,
            //                 left: SizeConfig.blockSizeHorizontal * 15),
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(
            //                     8.0), // Adjust the radius as per your requirement
            //                 color: Colors.white,
            //               ),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(
            //                     10), // Same radius as the container
            //                 child: LinearProgressIndicator(
            //                     minHeight: 6,
            //                     backgroundColor: Colors.grey.shade100,
            //                     color: Colors.black
            //                     // (0xFFF66000)
            //                     // (0xFF322671)
            //                     ),
            //               ),
            //             ))

            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
