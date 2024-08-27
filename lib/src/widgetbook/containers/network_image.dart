import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';

class RFNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double height;
  final double width;
  const RFNetworkImage({
    super.key,
    required this.imageUrl,
    this.height = 30,
    this.width = 30,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return CachedNetworkImage(
        imageUrl: imageUrl!,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: RFColors.primaryColor,
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: CircleAvatar(
            radius: width,
            child: Icon(
              Icons.person,
              size: width,
            )),
      );
    }
  }
}
