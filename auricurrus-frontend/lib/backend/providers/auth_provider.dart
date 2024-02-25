import 'package:firebase_auth/firebase_auth.dart';
import 'package:hafidomio_s_application2/backend/repository/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    return AuthRepository(FirebaseAuth.instance);
  },
);

final authStateProvider = StreamProvider<User?>(
  (ref) {
    return ref.read(authRepositoryProvider).authStateChange;
  },
);
