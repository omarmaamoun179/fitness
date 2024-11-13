import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'requirement_state.dart';

class RequirementCubit extends Cubit<RequirementState> {
  RequirementCubit() : super(RequirementInitial());
}
