//  iii ) Mak the final reference of the state Notifier Provider
//  Gives the Counter Notifier and the Counter state as the template type of the counter notifier
//Return's the Notifier from that reference
//
//

import 'package:flutter_counter_riverpod/counter_notifier.dart';
import 'package:flutter_counter_riverpod/counter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateNotifierProvider =
    StateNotifierProvider<CounterNotifier, CounterState>((ref) {
  //   Return's the Counter notifier by giving the initial value to the Counter state
  return CounterNotifier(CounterState(counter: 0));
});
