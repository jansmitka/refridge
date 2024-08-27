import 'package:bloc/bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/domain/repositories/storage_repository.dart';
import 'package:refridge/src/domain/repositories/user_reporitory.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final _storageRepository = getIt<FirebaseStorageRepository>();
  final _userRepository = getIt<UserRepository>();
  AccountBloc() : super(const AccountState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          user: event.user,
          imageURL: event.user?.profileImgURL,
        ),
      );
    });
    on<_SaveUserProfileImg>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            isError: false,
          ),
        );
        final result = await _storageRepository.uploadUserProfileImg(
            state.user!.userId!, event.image);

        if (result.isSuccess) {
          add(
            AccountEvent.updateUserProfileImg(result.value ?? ''),
          );
        }

        if (result.isError) {
          // add(
          //   AccountEvent.showError(result.errorCode ?? ''),
          // );
        }
      },
    );
    on<_UpdateUserProfileImg>(
      (event, emit) async {
        final result = await _userRepository.updateUserProfileImage(
            state.user!.userId!, event.imageUrl);

        if (result.isError) {
          // add(
          //   RequiredUserInfoEvent.showError(result.errorCode ?? ''),
          // );
        } else {
          emit(
            state.copyWith(
              isLoading: false,
              isError: false,
              imageURL: event.imageUrl,
            ),
          );
        }
      },
    );
  }
}
