import 'package:flutter/material.dart';
import 'package:flutter_counter_riverpod/counter_state_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //  Make the Provider Scope as the parent (root) of the widget tree
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

//  Convert the state ful widget into the consumer State ful widget
class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

// Convert the State to the Consumer state
  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

// Convert the State to the Consumer state

class _MyHomePageState extends ConsumerState<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              //  add the ref.read where you want's to change the value or the state
              //  add the final reference you made of the state notifier provider
              ref.watch(counterStateNotifierProvider).counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  add the ref . read where you want's to to handle the click event
          //add the counter state notifier provider . notifier and then call the function in which you apply changes
          ref.read(counterStateNotifierProvider.notifier).incrementalState();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
