import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/onboarding_provider.dart';

class OnboardingButton extends ConsumerWidget {
  final bool isLastPage;

  const OnboardingButton({
    super.key, 
    required this.isLastPage, 
     
    
    });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded (
      child: ElevatedButton(
        onPressed: () => isLastPage ? Navigator.pushNamed(context, '/user_role') : ref.read(onboardingIndexProvider.notifier).state++,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 9, 12, 155),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(isLastPage ? 'Get Started' : 'Next'),
      )
      
    );

  }

}