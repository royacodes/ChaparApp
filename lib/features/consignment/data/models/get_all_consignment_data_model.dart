import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';
part 'get_all_consignment_data_model.g.dart';

@JsonSerializable()
class GetAllConsignmentDataModel extends GetAllConsignmentData {
  const GetAllConsignmentDataModel({
    required num id,
    required String status,
    required bool isCod,
    required GetAllConsignmentReceiverModel receiver,
    required GetAllConsignmentReceiverAddressModel receiverAddress,
  }) : super(
            id: id,
            status: status,
            isCod: isCod,
            receiver: receiver,
            receiverAddress: receiverAddress);

  factory GetAllConsignmentDataModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllConsignmentDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllConsignmentDataModelToJson(this);
}
