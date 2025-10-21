import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver
{
  @override
  void onChange(BlocBase bloc, Change change) {
    log('Change : $change');
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    log('Close');
  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    log('Create');
  }

  @override
  void onDone(Bloc bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    // TODO: implement onDone
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }

}