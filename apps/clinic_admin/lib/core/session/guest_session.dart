import 'package:flutter/foundation.dart';

/// Tracks whether the clinic staff portal is being used without signing in.
class GuestSession {
  GuestSession._();

  static final ValueNotifier<bool> enabled = ValueNotifier(false);

  static void enter() => enabled.value = true;

  static void clear() => enabled.value = false;
}
