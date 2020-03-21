import 'package:flutter/material.dart';

import '../images.dart';
import '../size_config.dart';


class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
        color: Colors.pinkAccent.withOpacity(0.4)
        ),
        child: Image.asset(
          Images.profileImage,
          width: 10 * SizeConfig.imageSizeMultiplier,
          height: 10 * SizeConfig.imageSizeMultiplier,
        ),
    );
  }
}