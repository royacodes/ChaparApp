// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_consignment_receiver_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllConsignmentReceiverAddressModel
    _$GetAllConsignmentReceiverAddressModelFromJson(
            Map<String, dynamic> json) =>
        GetAllConsignmentReceiverAddressModel(
          city: json['city'] as String? ?? '',
          region: json['region'] as String? ?? '',
          fullAddress: json['full_address'] as String? ?? '',
        );

Map<String, dynamic> _$GetAllConsignmentReceiverAddressModelToJson(
        GetAllConsignmentReceiverAddressModel instance) =>
    <String, dynamic>{
      'city': instance.city,
      'region': instance.region,
      'full_address': instance.fullAddress,
    };
