// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_mode_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BuildModeStateCWProxy {
  BuildModeState mode(AppBuildMode mode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BuildModeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BuildModeState(...).copyWith(id: 12, name: "My name")
  /// ````
  BuildModeState call({
    AppBuildMode? mode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBuildModeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBuildModeState.copyWith.fieldName(...)`
class _$BuildModeStateCWProxyImpl implements _$BuildModeStateCWProxy {
  final BuildModeState _value;

  const _$BuildModeStateCWProxyImpl(this._value);

  @override
  BuildModeState mode(AppBuildMode mode) => this(mode: mode);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BuildModeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BuildModeState(...).copyWith(id: 12, name: "My name")
  /// ````
  BuildModeState call({
    Object? mode = const $CopyWithPlaceholder(),
  }) {
    return BuildModeState(
      mode: mode == const $CopyWithPlaceholder() || mode == null
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as AppBuildMode,
    );
  }
}

extension $BuildModeStateCopyWith on BuildModeState {
  /// Returns a callable class that can be used as follows: `instanceOfBuildModeState.copyWith(...)` or like so:`instanceOfBuildModeState.copyWith.fieldName(...)`.
  _$BuildModeStateCWProxy get copyWith => _$BuildModeStateCWProxyImpl(this);
}
