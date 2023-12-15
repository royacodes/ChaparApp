import 'package:chaparapp/features/consignment/consignment.dart';

abstract class ConsignmentRemoteDatasource {
  Future<GetAllConsignmentResponseModel> getAllConsignment();
}
