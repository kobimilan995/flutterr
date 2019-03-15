import '../actions.dart';
String searchQueryReducer(String searchQuery, action) {
  return action is PerformSearchAction ? action.query : searchQuery;
}