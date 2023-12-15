import 'package:bloc_test/bloc_test.dart';
import 'package:chaparapp/core/di/injection_container.dart';
import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  GetAllConsignment getAllConsignment = sl();
  group('Login Use Case', () {
    blocTest<ConsignmentCubit, ConsignmentState>(
        'emit get consignmet list success when get all consignments is successful',
        build: () => ConsignmentCubit(getAllConsignment: getAllConsignment),
        act: (cubit) => cubit.getConsignments(),
        expect: () => [
              ConsignmentLoading(),
              ConsignmentLoaded(
                  getAllConsignmentResponse:
                      const GetAllConsignmentResponse(data: [
                GetAllConsignmentData(
                    id: 1,
                    status: "delivery",
                    isCod: false,
                    receiver: GetAllConsignmentReceiver(
                        gender: "m",
                        fullName: "علی محمدی",
                        mobile: "09123456789"),
                    receiverAddress: GetAllConsignmentReceiverAddress(
                        city: "تهران",
                        region: "ولیعصر",
                        fullAddress: "خیابان رشت، پلاک 34"))
              ]))
            ]);
  });
}
