import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/data/post_code.dart';

import 'package:http/http.dart' as http;

StateProvider<String> postCodeProvider = StateProvider((ref) {
  return "2";
});

FutureProvider<PostCode> apiProvider = FutureProvider<PostCode>(
  (ref) async {
    final postCode = ref.watch(postCodeProvider);

    if (postCode.length != 7) {
      throw Exception("郵便番号が7文字ではありません。失敗しました");
    }

    final upper = postCode.substring(0, 3);
    final lower = postCode.substring(3);

    final apiUrl =
        'https://madefor.github.io/postal-code-api/api/v1/$upper/$lower.json';

    final apiUri = Uri.parse(apiUrl);

    http.Response res = await http.get(apiUri);

    if (res.statusCode != 200) {
      throw Exception("エラーが発生しました $postCode==");
    }

    var jsonData = json.decode(res.body);

    return PostCode.fromJson(jsonData);
  },
);

AutoDisposeFutureProviderFamily<PostCode, String> apiFamilyProvider =
    FutureProvider.autoDispose.family<PostCode, String>(
  (ref, postCode) async {
    if (postCode.length != 7) {
      throw Exception("郵便番号が7文字ではありません。失敗しました");
    }

    final upper = postCode.substring(0, 3);
    final lower = postCode.substring(3);

    final apiUrl =
        'https://madefor.github.io/postal-code-api/api/v1/$upper/$lower.json';

    final apiUri = Uri.parse(apiUrl);

    http.Response res = await http.get(apiUri);

    if (res.statusCode != 200) {
      throw Exception("エラーが発生しました $postCode==");
    }

    var jsonData = json.decode(res.body);

    return PostCode.fromJson(jsonData);
  },
);
