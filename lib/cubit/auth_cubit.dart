import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rifad/cubit/app_state.dart';

class AuthCubit extends Cubit<AppStates> {
  AuthCubit() : super(AppInitialState());
}
