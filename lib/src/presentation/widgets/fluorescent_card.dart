import 'package:flutter/material.dart';

class FluorescentCard extends StatelessWidget {
  const FluorescentCard({
    required this.animationValue,
    required this.animationDuration,
    required this.color,
    super.key,
  });

  final int animationValue;

  final Duration animationDuration;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(24),
      alignment: Alignment.topLeft,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            spreadRadius:
                (40 - (animationValue.roundToDouble() / 5)).clamp(0, 500),
            blurRadius:
                (40 - (animationValue.roundToDouble() / 5)).clamp(0, 500),
            color: Colors.white,
          ),
        ],
      ),
      duration: animationDuration,
      child: AnimatedDefaultTextStyle(
        duration: animationDuration,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          shadows: <Shadow>[
            Shadow(
              blurRadius: (30 - (animationValue / 7)).clamp(0, 20),
              color: Colors.white,
            ),
          ],
        ),
        child: const Text(
          'Fluorescent',
        ),
      ),
    );
  }
}
