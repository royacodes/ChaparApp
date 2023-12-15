import 'package:chaparapp/features/consignment/consignment.dart';

import '../../../../core/core.dart';

class GetAllConsignment extends UseCase<GetAllConsignmentResponse, NoParams> {
  final ConsignmentRepository consignmentRepository;
  GetAllConsignment({required this.consignmentRepository});
  @override
  Future<GetAllConsignmentResponse?> call(NoParams params) async {
    return await consignmentRepository.getAllConsignments();
  }
}
