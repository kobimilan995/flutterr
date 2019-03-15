import '../actions.dart';

List<String> initialState = [];

List<String> itemsReducer(List<String> items, action) {
  if (action is AddItemAction) {
    return new List.from(items)..add(action.item);
  } else if (action is RemoveItemAction) {
    return new List.from(items)..remove(action.item);
  } else {
    return initialState;
  }
}