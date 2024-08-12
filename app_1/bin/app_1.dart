import 'package:riverpod/riverpod.dart';

// Define a StateProvider that holds an integer value
final myStateProvider = StateProvider<int>((ref) => 1);

void main() {
  final container = ProviderContainer();

  final stateController = container.read(myStateProvider.notifier);
  
  final currentState = container.read(myStateProvider);
  print('Current state: $currentState');

  stateController.state = 2;

  final updatedState = container.read(myStateProvider);
  print('Updated state: $updatedState'); 

  container.dispose();
}
