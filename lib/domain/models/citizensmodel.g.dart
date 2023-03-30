// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizensmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CiztizenModel _$$_CiztizenModelFromJson(Map<String, dynamic> json) =>
    _$_CiztizenModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      prescriptions: (json['prescriptions'] as List<dynamic>?)
          ?.map((e) => PrescriptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CiztizenModelToJson(_$_CiztizenModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'prescriptions': instance.prescriptions,
    };
