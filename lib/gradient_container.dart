import 'package:first_app/change_image.dart';
import 'package:flutter/material.dart';

var alignmentCenter = Alignment.centerLeft;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  const GradientContainer({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: alignmentCenter,
          end: Alignment.centerRight,

          colors: colors,
          // Red at 0%, Green at 20%, Blue at 50%
        ),
      ),
      child: const Center(child: ChangeImage()),
    );
  }
}
