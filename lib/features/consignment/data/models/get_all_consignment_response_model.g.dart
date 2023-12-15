// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_consignment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllConsignmentResponseModel _$GetAllConsignmentResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAllConsignmentResponseModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => GetAllConsignmentDataModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$GetAllConsignmentResponseModelToJson(
        GetAllConsignmentResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
