import 'package:chaparapp/features/consignment/consignment.dart';

abstract class ConsignmentRepository {
  Future<GetAllConsignmentResponse?> getAllConsignments();
}
