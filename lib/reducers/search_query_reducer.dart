import '../actions.dart';
String initialSearchQuery = 'test';
String searchQueryReducer(String searchQuery, action) {
  return action is PerformSearchAction ? action.query : initialSearchQuery;
}