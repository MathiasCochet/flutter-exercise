// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogPostDto _$BlogPostDtoFromJson(Map<String, dynamic> json) {
  return _BlogPostDto.fromJson(json);
}

/// @nodoc
mixin _$BlogPostDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;

  /// Create a copy of BlogPostDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogPostDtoCopyWith<BlogPostDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogPostDtoCopyWith<$Res> {
  factory $BlogPostDtoCopyWith(
          BlogPostDto value, $Res Function(BlogPostDto) then) =
      _$BlogPostDtoCopyWithImpl<$Res, BlogPostDto>;
  @useResult
  $Res call({int id, String title, String description, String image_url});
}

/// @nodoc
class _$BlogPostDtoCopyWithImpl<$Res, $Val extends BlogPostDto>
    implements $BlogPostDtoCopyWith<$Res> {
  _$BlogPostDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogPostDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image_url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogPostDtoImplCopyWith<$Res>
    implements $BlogPostDtoCopyWith<$Res> {
  factory _$$BlogPostDtoImplCopyWith(
          _$BlogPostDtoImpl value, $Res Function(_$BlogPostDtoImpl) then) =
      __$$BlogPostDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, String image_url});
}

/// @nodoc
class __$$BlogPostDtoImplCopyWithImpl<$Res>
    extends _$BlogPostDtoCopyWithImpl<$Res, _$BlogPostDtoImpl>
    implements _$$BlogPostDtoImplCopyWith<$Res> {
  __$$BlogPostDtoImplCopyWithImpl(
      _$BlogPostDtoImpl _value, $Res Function(_$BlogPostDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogPostDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image_url = null,
  }) {
    return _then(_$BlogPostDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$BlogPostDtoImpl implements _BlogPostDto {
  const _$BlogPostDtoImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.image_url});

  factory _$BlogPostDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogPostDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String image_url;

  @override
  String toString() {
    return 'BlogPostDto(id: $id, title: $title, description: $description, image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogPostDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, image_url);

  /// Create a copy of BlogPostDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogPostDtoImplCopyWith<_$BlogPostDtoImpl> get copyWith =>
      __$$BlogPostDtoImplCopyWithImpl<_$BlogPostDtoImpl>(this, _$identity);
}

abstract class _BlogPostDto implements BlogPostDto {
  const factory _BlogPostDto(
      {required final int id,
      required final String title,
      required final String description,
      required final String image_url}) = _$BlogPostDtoImpl;

  factory _BlogPostDto.fromJson(Map<String, dynamic> json) =
      _$BlogPostDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get image_url;

  /// Create a copy of BlogPostDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogPostDtoImplCopyWith<_$BlogPostDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
