part of 'build_mode_cubit.dart';

@CopyWith()
class BuildModeState extends Equatable {
  final AppBuildMode mode;

  const BuildModeState({required this.mode});

  @override
  List<Object?> get props => [mode];
}
