part of 'base_bloc.dart';

enum ViewStateEnums { ready, loading, refreshing, success, empty, error }

enum ActionStateEnums { loading, refreshing, success, empty, error }

abstract class BaseState extends Equatable {
  @override
  final List props;

  const BaseState([this.props = const []]);

  @override
  String toString() => '$runtimeType';
}

///Using for handle one event with no changing UI or small widget in screen
class ActionState<T> extends BaseState {
  final ActionStateEnums status;
  final T data;
  final BaseFailure? error;

  const ActionState(
      {this.status = ActionStateEnums.loading, required this.data, this.error});

  @override
  List get props => [status, data, error];

  bool get isLoading => status == ActionStateEnums.loading;

  bool get isRefreshing => status == ActionStateEnums.refreshing;

  bool get isSuccess => status == ActionStateEnums.success;

  bool get isEmpty => status == ActionStateEnums.empty;

  bool get isError => status == ActionStateEnums.error;
}

///Using for handle one event with building a main UI of screen
@CopyWith()
class ViewState<T> extends BaseState {
  final ViewStateEnums status;
  final T data;
  final BaseFailure? error;

  const ViewState(
      {this.status = ViewStateEnums.ready, required this.data, this.error});

  @override
  List get props => [status, data, error];

  bool get isReady => status == ViewStateEnums.ready;

  bool get isLoading => status == ViewStateEnums.loading;

  bool get isRefreshing => status == ViewStateEnums.refreshing;

  bool get isSuccess => status == ViewStateEnums.success;

  bool get isEmpty => status == ViewStateEnums.empty;

  bool get isError => status == ViewStateEnums.error;
}
