import '../../../../core/core.dart';
import 'package:dio/dio.dart';

import '../../consignment.dart';

class ConsignmentRepositoryImpl implements ConsignmentRepository {
  final ConsignmentRemoteDatasource consignmentRemoteDatasource;
  ConsignmentRepositoryImpl({
    required this.consignmentRemoteDatasource,
  });

  @override
  Future<GetAllConsignmentResponse?> getAllConsignments() async {
    late GetAllConsignmentResponse consignmentResponse;
    try {
      consignmentResponse =
          await consignmentRemoteDatasource.getAllConsignment();
      return consignmentResponse;
    } on DioException catch (error) {
      if (error.response == null) {
        if (error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionTimeout) {
          throw ServerException(serverTimeOutError, defaultErrorCode);
        } else {
          throw ServerException(serverResponseNull, defaultErrorCode);
        }
      } else {
        if (error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionTimeout) {
          throw ServerException(serverTimeOutError, defaultErrorCode);
        } else {
          throw ServerException(
              error.response!.statusMessage ?? serverOtherError,
              error.response!.statusCode.toString());
        }
      }
    } catch (e) {
      throw AppException(e.toString());
    }
  }
}
