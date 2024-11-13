part of 'requirement_cubit.dart';

abstract class RequirementState extends Equatable {
  const RequirementState();

  @override
  List<Object> get props => [];
}

class RequirementInitial extends RequirementState {}
