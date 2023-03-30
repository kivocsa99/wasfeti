import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wasfeti/application/provider/auth.facade.provider.dart';

import '../../domain/models/usermodel.dart';

final currentUserProvider = StreamProvider<UserModel>(
    (ref) => ref.watch(firebaseauthFacadeProvider).currentUserStream);
