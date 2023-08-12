//  ii ) Make the class that extend's the state notifier
// Make all of the possible options that will that are  going to change the UI or effect the ui

import 'package:flutter_counter_riverpod/counter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier(super.state);

  incrementalState() {
    state = CounterState(counter: state.counter + 1);
  }

  decrementalState() {
    state = CounterState(counter: state.counter - 1);
  }
}
