import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserImage extends StatelessWidget {
  final String imageUrl;

  const UserImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SvgPicture.asset(
        imageUrl,
        width: 25,
        height: 25,
        fit: BoxFit.cover,
      ),
    );
  }
}
