import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';

@JsonSerializable()
class GetAllConsignmentData extends Equatable {
  const GetAllConsignmentData({
    required this.id,
    required this.status,
    required this.isCod,
    required this.receiver,
    required this.receiverAddress,
  });

  @JsonKey(defaultValue: DefaultValues.numDefaultValue)
  final num id;
  @JsonKey(defaultValue: DefaultValues.stringDefaultValue)
  final String status;
  @JsonKey(name: 'is_cod', defaultValue: DefaultValues.boolDefaultValue)
  final bool isCod;
  @JsonKey(defaultValue: DefaultValues.objectDefaultValue)
  final GetAllConsignmentReceiver receiver;
  @JsonKey(
      name: 'receiver_address', defaultValue: DefaultValues.stringDefaultValue)
  final GetAllConsignmentReceiverAddress receiverAddress;

  @override
  List<Object?> get props => [
        id,
        status,
        isCod,
        receiver,
        receiverAddress,
      ];
}
