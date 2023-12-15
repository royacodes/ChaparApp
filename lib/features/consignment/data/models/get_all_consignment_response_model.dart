import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';

part 'get_all_consignment_response_model.g.dart';

@JsonSerializable()
class GetAllConsignmentResponseModel extends GetAllConsignmentResponse {
  const GetAllConsignmentResponseModel({
    required List<GetAllConsignmentDataModel> data,
  }) : super(data: data);

  factory GetAllConsignmentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllConsignmentResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllConsignmentResponseModelToJson(this);
}
