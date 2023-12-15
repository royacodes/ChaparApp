import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';
import '../../consignment.dart';
part 'get_all_consignment_receiver_address_model.g.dart';

@JsonSerializable()
class GetAllConsignmentReceiverAddressModel
    extends GetAllConsignmentReceiverAddress {
  const GetAllConsignmentReceiverAddressModel({
    required super.city,
    required super.region,
    required super.fullAddress,
  });

  factory GetAllConsignmentReceiverAddressModel.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllConsignmentReceiverAddressModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllConsignmentReceiverAddressModelToJson(this);
}
