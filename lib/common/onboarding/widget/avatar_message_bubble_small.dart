
import 'package:flutter/material.dart';

class AvatarMessageBubbleSmall extends StatefulWidget {
  const AvatarMessageBubbleSmall({super.key});

  @override
  State<AvatarMessageBubbleSmall> createState() => _AvatarMessageBubbleSmallState();
}

class _AvatarMessageBubbleSmallState extends State<AvatarMessageBubbleSmall> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Positioned(
      top: screenSize.height * 0.13,
      right: screenSize.width * 0.1,
      child: SizedBox(
        width: 160,
        height: 100,
        child: Stack(
          children: [
            const Positioned(
              top: 10,
              right: 0,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage:  AssetImage(
                  'assets/images/onboarding/avatar-small.png',
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 50,
              child: Container(
                width: 90,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: 20,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
                          ),
                        ),
                        child: Icon(Icons.check, color: Colors.white, size: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 5,
                            margin: EdgeInsets.only(bottom: 4),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}