import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';
part 'get_all_consignment_receiver_model.g.dart';

@JsonSerializable()
class GetAllConsignmentReceiverModel extends GetAllConsignmentReceiver {
  const GetAllConsignmentReceiverModel({
    required super.gender,
    required super.fullName,
    required super.mobile,
  });
  factory GetAllConsignmentReceiverModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllConsignmentReceiverModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllConsignmentReceiverModelToJson(this);
}
