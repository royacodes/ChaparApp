part of 'consignment_cubit.dart';

abstract class ConsignmentState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ConsignmentInitial extends ConsignmentState {}

class ConsignmentLoading extends ConsignmentState {}

class ConsignmentLoaded extends ConsignmentState {
  final GetAllConsignmentResponse? getAllConsignmentResponse;
  ConsignmentLoaded({required this.getAllConsignmentResponse});
  @override
  List<Object?> get props => [getAllConsignmentResponse];
}

class ConsignmentFailure extends ConsignmentState {
  final String errorMessage;
  final String errorCode;
  ConsignmentFailure({
    required this.errorMessage,
    this.errorCode = defaultErrorCode,
  });
}
