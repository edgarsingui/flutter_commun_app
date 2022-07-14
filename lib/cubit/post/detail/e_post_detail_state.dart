// ignore_for_file: dead_code

part of 'post_detail_cubit.dart';

enum EPostDetailState { loading, loaded, error, delete, savingComment, saved }

extension EAppStateHelper on EPostDetailState {
  T when<T>({
    required T Function() loading,
    required T Function() loaded,
    required T Function() error,
    required T Function() delete,
  }) {
    switch (this) {
      case EPostDetailState.loading:
        return loading.call();
        break;
      case EPostDetailState.loaded:
        return loaded.call();
        break;
      case EPostDetailState.error:
        return error.call();
        break;
      case EPostDetailState.delete:
        return delete.call();
        break;
      default:
    }
    throw Exception('Invalid EPostDetailState');
  }

  T mayBeWhen<T>({
    required T Function() elseMaybe,
    T Function()? loading,
    T Function()? loaded,
    T Function()? error,
    T Function()? delete,
    T Function()? savingComment,
    T Function()? saved,
  }) {
    switch (this) {
      case EPostDetailState.loading:
        if (loading != null) {
          return loading.call();
        } else {
          return elseMaybe();
        }
        break;
      case EPostDetailState.loaded:
        if (loaded != null) {
          return loaded.call();
        } else {
          return elseMaybe();
        }
        break;
      case EPostDetailState.error:
        if (error != null) {
          return error.call();
        } else {
          return elseMaybe();
        }
        break;
      case EPostDetailState.delete:
        if (delete != null) {
          return delete.call();
        } else {
          return elseMaybe();
        }
        break;
      case EPostDetailState.savingComment:
        if (savingComment != null) {
          return savingComment.call();
        } else {
          return elseMaybe();
        }
        break;
      case EPostDetailState.saved:
        if (saved != null) {
          return saved.call();
        } else {
          return elseMaybe();
        }
        break;
      default:
        return elseMaybe();
    }
  }
}
