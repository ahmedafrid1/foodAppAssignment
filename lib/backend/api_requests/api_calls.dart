import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FoodAPICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'foodAPI',
      apiUrl: 'https://pizza-and-desserts.p.rapidapi.com/pizzas',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '490d94216amsh3ba8809b57ff2d9p18caaejsn1dfd8197a502',
        'X-RapidAPI-Host': 'pizza-and-desserts.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].img''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
