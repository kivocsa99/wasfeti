// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescriptionmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrescriptionModel _$PrescriptionModelFromJson(Map<String, dynamic> json) {
  return _PrescriptionModel.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get dose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionModelCopyWith<PrescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionModelCopyWith<$Res> {
  factory $PrescriptionModelCopyWith(
          PrescriptionModel value, $Res Function(PrescriptionModel) then) =
      _$PrescriptionModelCopyWithImpl<$Res, PrescriptionModel>;
  @useResult
  $Res call({String? id, String? name, List<String>? dose});
}

/// @nodoc
class _$PrescriptionModelCopyWithImpl<$Res, $Val extends PrescriptionModel>
    implements $PrescriptionModelCopyWith<$Res> {
  _$PrescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dose = freezed,
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
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrescriptionModelCopyWith<$Res>
    implements $PrescriptionModelCopyWith<$Res> {
  factory _$$_PrescriptionModelCopyWith(_$_PrescriptionModel value,
          $Res Function(_$_PrescriptionModel) then) =
      __$$_PrescriptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<String>? dose});
}

/// @nodoc
class __$$_PrescriptionModelCopyWithImpl<$Res>
    extends _$PrescriptionModelCopyWithImpl<$Res, _$_PrescriptionModel>
    implements _$$_PrescriptionModelCopyWith<$Res> {
  __$$_PrescriptionModelCopyWithImpl(
      _$_PrescriptionModel _value, $Res Function(_$_PrescriptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dose = freezed,
  }) {
    return _then(_$_PrescriptionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dose: freezed == dose
          ? _value._dose
          : dose // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrescriptionModel implements _PrescriptionModel {
  const _$_PrescriptionModel({this.id, this.name, final List<String>? dose})
      : _dose = dose;

  factory _$_PrescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PrescriptionModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final List<String>? _dose;
  @override
  List<String>? get dose {
    final value = _dose;
    if (value == null) return null;
    if (_dose is EqualUnmodifiableListView) return _dose;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PrescriptionModel(id: $id, name: $name, dose: $dose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._dose, _dose));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_dose));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionModelCopyWith<_$_PrescriptionModel> get copyWith =>
      __$$_PrescriptionModelCopyWithImpl<_$_PrescriptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrescriptionModelToJson(
      this,
    );
  }
}

abstract class _PrescriptionModel implements PrescriptionModel {
  const factory _PrescriptionModel(
      {final String? id,
      final String? name,
      final List<String>? dose}) = _$_PrescriptionModel;

  factory _PrescriptionModel.fromJson(Map<String, dynamic> json) =
      _$_PrescriptionModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<String>? get dose;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionModelCopyWith<_$_PrescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
