
import 'package:flutter/material.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Page Indicators ---
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(2, (index) {
                // Changed to 2 pages
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentPage == index ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? Colors.white
                        : Colors.white.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            // --- Buttons ---
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  elevation: 0,
                ),
                icon: const Icon(Icons.email_outlined),
                label: const Text(
                  'Continue with E-mail',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Social Media Buttons (Row)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Handle Apple login
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    icon: const Icon(Icons.apple, size: 24),
                    label: const Text('Apple', style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Handle Google login
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: const BorderSide(color: Colors.transparent),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                      height: 24,
                      width: 24,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.g_mobiledata), // Fallback
                    ),
                    label: const Text('Google', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Terms & Privacy Policy
            Align(
              alignment: Alignment.center,
              child: Text(
                'By continuing you agree Terms of Services & Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}