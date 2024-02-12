import 'package:flutter_riverpod/flutter_riverpod.dart';

// stacks providers indicators
final isStack1indicator = StateProvider((ref) => true);
final isStack2indicator = StateProvider((ref) => false);
final isStack3indicator = StateProvider((ref) => false);
final isStack4indicator = StateProvider((ref) => false);
final isStack5indicator = StateProvider((ref) => false);
final isStack6indicator = StateProvider((ref) => false);
final isStack7indicator = StateProvider((ref) => false);

// provider for register email
final isEmailInputEmpty = StateProvider((ref) => false);
final ifEmailContains = StateProvider((ref) => false);

