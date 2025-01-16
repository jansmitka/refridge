import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/domain/repositories/lists_repository.dart';
import 'package:refridge/src/services/enums/list_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

part 'shopping_list_management_event.dart';
part 'shopping_list_management_state.dart';
part 'shopping_list_management_bloc.freezed.dart';

class ShoppingListManagementBloc
    extends Bloc<ShoppingListManagementEvent, ShoppingListManagementState> {
  final _listRepository = getIt<ListsRepository>();

  ShoppingListManagementBloc() : super(const ShoppingListManagementState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          groceries: [],
          user: event.user,
        ),
      );
      add(const ShoppingListManagementEvent.fetchListData());
    });
    on<_Reload>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          groceries: [],
        ),
      );
      add(const ShoppingListManagementEvent.fetchListData());
    });
    on<_FetchListData>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      final result =
          await _listRepository.getListsData(state.user!.shoppingLists ?? []);

      if (result.isSuccess) {
        final selectedList = result.value!
            .firstWhere((item) => item.listId == state.user!.selectedList);
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            lists: result.value,
            selectedList: selectedList,
          ),
        );
        add(const ShoppingListManagementEvent.fetchGroceries());
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_FetchGroceries>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      // await _grocerySubscription?.cancel();
      if (state.selectedList != null) {
        Stream<List<Grocery>> groceriesStrem =
            _listRepository.streamGroceries(state.selectedList!.listId!);

        await for (final groceries in groceriesStrem) {
          emit(
            state.copyWith(
              isLoading: false,
              isError: false,
              groceries: groceries,
            ),
          );
          add(ShoppingListManagementEvent.changeSortType(state.sortType));
        }
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_EditGrocery>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      final result = await _listRepository.editGrocery(
          state.selectedList!.listId!, event.grocery);

      if (result.isSuccess) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
          ),
        );
        add(ShoppingListManagementEvent.changeSortType(state.sortType));
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_DeleteGrocery>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
        ),
      );
      final result = await _listRepository.deleteGrocery(
          state.selectedList!.listId!, event.grocery);

      if (result.isSuccess) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
          ),
        );
        add(ShoppingListManagementEvent.changeSortType(state.sortType));
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_ChangeDisplayType>((event, emit) {
      emit(
        state.copyWith(
          displayType: event.type,
        ),
      );
    });
    on<_ChangeList>((event, emit) async {
      final result = await _listRepository.changeList(
          event.selectedList.listId!, state.user!.userId!);
      if (result.isSuccess) {
        emit(
          state.copyWith(
            selectedList: event.selectedList,
          ),
        );
        add(const ShoppingListManagementEvent.fetchGroceries());
      }
    });
    on<_ChangeSortType>((event, emit) {
      List<Grocery> sortedGroceries = List.from(state.groceries);

      switch (event.type) {
        case ListSort.az:
          sortedGroceries
              .sort((a, b) => (a.label ?? '').compareTo(b.label ?? ''));
          break;
        case ListSort.za:
          sortedGroceries
              .sort((a, b) => (b.label ?? '').compareTo(a.label ?? ''));
          break;
      }

      emit(
        state.copyWith(
          groceries: sortedGroceries,
          sortType: event.type,
        ),
      );
    });
  }
}
