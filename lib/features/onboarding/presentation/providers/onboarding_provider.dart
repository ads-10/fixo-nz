import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:mobile/features/onboarding/domain/repositories/onboarding_repository.dart';

final onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) => OnboardingRepositoryImpl());

final onboardingIndexProvider = StateProvider<int>((ref) => 0);

final onboardingDataProvider = Provider((ref){
  final repository = ref.read(onboardingRepositoryProvider);
  return repository.getOnboarding();
});