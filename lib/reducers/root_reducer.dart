import '../app_state.dart';
import '.././reducers/items_reducer.dart';
import '../reducers/search_query_reducer.dart';
AppState reducer(AppState state, action) => new AppState(
  items: itemsReducer(state.items, action),
  searchQuery: searchQueryReducer(state.searchQuery, action)
);