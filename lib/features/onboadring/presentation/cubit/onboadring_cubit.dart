import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboadring_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
}
