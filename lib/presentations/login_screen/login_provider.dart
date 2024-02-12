import 'package:flutter_riverpod/flutter_riverpod.dart';

// provider changing the state of the inputs field on login screen
final isTextFieldTap = StateProvider((ref) => false);
final isPasswordFieldTap = StateProvider((ref) => false);
final isBothInputEmpty = StateProvider((ref) => false);