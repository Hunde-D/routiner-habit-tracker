import 'package:flutter/material.dart';

class AvatarMessageBubbleLarge extends StatefulWidget {
  const AvatarMessageBubbleLarge({super.key});

  @override
  State<AvatarMessageBubbleLarge> createState() =>
      _AvatarMessageBubbleLargeState();
}

class _AvatarMessageBubbleLargeState
    extends State<AvatarMessageBubbleLarge> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Positioned(
      top: screenSize.height * 0.35,
      right: screenSize.width * 0.12,
      child: SizedBox(
        width: 160,
        height: 120,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 0,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                backgroundImage: AssetImage(
                  'assets/images/onboarding/avatar-large.png',
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 0,
              child: Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: 25,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.secondary,
                              Theme.of(context).primaryColor,
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.check,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 65,
                            height: 5,
                            margin: EdgeInsets.only(bottom: 6),
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).primaryColor.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).primaryColor.withValues(alpha: 0.5),
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
