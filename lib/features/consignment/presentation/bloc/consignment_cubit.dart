import 'package:bloc/bloc.dart';
import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';

part 'consignment_state.dart';

class ConsignmentCubit extends Cubit<ConsignmentState> {
  final GetAllConsignment getAllConsignment;

  ConsignmentCubit({required this.getAllConsignment})
      : super(ConsignmentInitial());

  Future<void> getConsignments() async {
    try {
      emit(ConsignmentLoading());
      final response = await getAllConsignment(NoParams());
      emit(ConsignmentLoaded(getAllConsignmentResponse: response));
    } on ServerException catch (e) {
      emit(
          ConsignmentFailure(errorMessage: e.message, errorCode: e.statusCode));
    } on NetworkException catch (e) {
      emit(ConsignmentFailure(
        errorMessage: e.message,
      ));
    } on AppException catch (e) {
      emit(ConsignmentFailure(
        errorMessage: e.message,
      ));
    }
  }
}
