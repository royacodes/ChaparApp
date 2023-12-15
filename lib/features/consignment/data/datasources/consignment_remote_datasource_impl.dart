import '../../../../core/core.dart';
import 'package:dio/dio.dart';

import '../../consignment.dart';

class ConsignmentRemoteDatasourceImpl implements ConsignmentRemoteDatasource {
  final Dio dio;
  ConsignmentRemoteDatasourceImpl({required this.dio});

  @override
  Future<GetAllConsignmentResponseModel> getAllConsignment() async {
    var response;
    response = await dio.get(
      APIPath.getConsignmentUrl,
    );
    if (response.statusCode == 200) {
      return GetAllConsignmentResponseModel.fromJson(response.data);
    } else {
      throw ServerException(response.message, response.statusCode);
    }
  }
}
