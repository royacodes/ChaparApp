// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_consignment_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllConsignmentDataModel _$GetAllConsignmentDataModelFromJson(
        Map<String, dynamic> json) =>
    GetAllConsignmentDataModel(
      id: json['id'] as num? ?? 0,
      status: json['status'] as String? ?? '',
      isCod: json['is_cod'] as bool? ?? false,
      receiver: GetAllConsignmentReceiverModel.fromJson(
          json['receiver'] as Map<String, dynamic>),
      receiverAddress: GetAllConsignmentReceiverAddressModel.fromJson(
          json['receiver_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllConsignmentDataModelToJson(
        GetAllConsignmentDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'is_cod': instance.isCod,
      'receiver': instance.receiver,
      'receiver_address': instance.receiverAddress,
    };
