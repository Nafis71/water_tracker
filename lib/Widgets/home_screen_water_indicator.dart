import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreenWaterIndicator extends StatelessWidget {
  final double screenWidth, screenHeight;

  const HomeScreenWaterIndicator({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue[50],
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.water_drop_rounded,
                  color: Color(0xFF2AA2D6),
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        Center(
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.4,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Lottie.asset("assets/lottieFiles/water.json",
                renderCache: RenderCache.drawingCommands, fit: BoxFit.contain),
          ),
        ),
        const Center(
          child: Text(
            "60%",
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}