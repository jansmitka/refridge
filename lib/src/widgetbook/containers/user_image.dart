import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/containers/network_image.dart';

class RFUserImage extends StatelessWidget {
  final String? imgUrl;
  final double width;
  final double height;
  final double iconSize;
  const RFUserImage({
    super.key,
    this.imgUrl,
    this.width = 100,
    this.height = 100,
    this.iconSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    if (imgUrl == null) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: RFColors.greySecondary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.image_outlined,
          color: RFColors.greyPrimary,
          size: iconSize,
        ),
      );
    } else {
      return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: RFColors.generalBg,
        ),
        child: ClipOval(
          child: RFNetworkImage(
            imageUrl: imgUrl!,
            height: height,
            width: width,
          ),
        ),
      );
    }
  }
}
