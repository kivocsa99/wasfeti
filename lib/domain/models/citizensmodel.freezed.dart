// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citizensmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CiztizenModel _$CiztizenModelFromJson(Map<String, dynamic> json) {
  return _CiztizenModel.fromJson(json);
}

/// @nodoc
mixin _$CiztizenModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<PrescriptionModel>? get prescriptions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CiztizenModelCopyWith<CiztizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CiztizenModelCopyWith<$Res> {
  factory $CiztizenModelCopyWith(
          CiztizenModel value, $Res Function(CiztizenModel) then) =
      _$CiztizenModelCopyWithImpl<$Res, CiztizenModel>;
  @useResult
  $Res call({String? id, String? name, List<PrescriptionModel>? prescriptions});
}

/// @nodoc
class _$CiztizenModelCopyWithImpl<$Res, $Val extends CiztizenModel>
    implements $CiztizenModelCopyWith<$Res> {
  _$CiztizenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? prescriptions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriptions: freezed == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CiztizenModelCopyWith<$Res>
    implements $CiztizenModelCopyWith<$Res> {
  factory _$$_CiztizenModelCopyWith(
          _$_CiztizenModel value, $Res Function(_$_CiztizenModel) then) =
      __$$_CiztizenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<PrescriptionModel>? prescriptions});
}

/// @nodoc
class __$$_CiztizenModelCopyWithImpl<$Res>
    extends _$CiztizenModelCopyWithImpl<$Res, _$_CiztizenModel>
    implements _$$_CiztizenModelCopyWith<$Res> {
  __$$_CiztizenModelCopyWithImpl(
      _$_CiztizenModel _value, $Res Function(_$_CiztizenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? prescriptions = freezed,
  }) {
    return _then(_$_CiztizenModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      prescriptions: freezed == prescriptions
          ? _value._prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CiztizenModel implements _CiztizenModel {
  const _$_CiztizenModel(
      {this.id, this.name, final List<PrescriptionModel>? prescriptions})
      : _prescriptions = prescriptions;

  factory _$_CiztizenModel.fromJson(Map<String, dynamic> json) =>
      _$$_CiztizenModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final List<PrescriptionModel>? _prescriptions;
  @override
  List<PrescriptionModel>? get prescriptions {
    final value = _prescriptions;
    if (value == null) return null;
    if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CiztizenModel(id: $id, name: $name, prescriptions: $prescriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CiztizenModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._prescriptions, _prescriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_prescriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CiztizenModelCopyWith<_$_CiztizenModel> get copyWith =>
      __$$_CiztizenModelCopyWithImpl<_$_CiztizenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CiztizenModelToJson(
      this,
    );
  }
}

abstract class _CiztizenModel implements CiztizenModel {
  const factory _CiztizenModel(
      {final String? id,
      final String? name,
      final List<PrescriptionModel>? prescriptions}) = _$_CiztizenModel;

  factory _CiztizenModel.fromJson(Map<String, dynamic> json) =
      _$_CiztizenModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<PrescriptionModel>? get prescriptions;
  @override
  @JsonKey(ignore: true)
  _$$_CiztizenModelCopyWith<_$_CiztizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
