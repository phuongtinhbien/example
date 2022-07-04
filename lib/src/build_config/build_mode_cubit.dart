import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:core/core.dart';
import 'package:core/src/build_config/build_mode.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'build_mode_cubit.g.dart';
part 'build_mode_state.dart';

class BuildModeCubit extends Cubit<BuildModeState> {
  BuildModeCubit(AppBuildMode mode) : super(BuildModeState(mode: mode));

  Future<void> changeFlavor(BuildMode mode) async {
    if (mode != AppBuildMode.currentBuildMode?.mode) {
      late final AppBuildMode appBuildMode;
      switch (mode) {
        case BuildMode.demo:
          appBuildMode = DemoBuildMode();
          break;
        case BuildMode.stage:
          appBuildMode = StageBuildMode();
          break;
        case BuildMode.live:
          appBuildMode = LiveBuildMode();
          break;
      }
      AppBuildMode.currentBuildMode = appBuildMode;
      await GetIt.I.reset();
      emit(state.copyWith.mode(appBuildMode));
    }
  }
}
