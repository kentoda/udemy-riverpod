import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:practice/data/post_code.dart';

void main() {
  String jsonData = '''
  {
  "code": "1000014",
  "data": [
    {
      "prefcode": "13",
      "ja": {
        "prefecture": "東京都",
        "address1": "千代田区",
        "address2": "永田町",
        "address3": "",
        "address4": ""
      },
      "en": {
        "prefecture": "Tokyo",
        "address1": "Chiyoda-ku",
        "address2": "Nagatacho",
        "address3": "",
        "address4": ""
      }
    },
    {
      "prefcode": "14",
      "ja": {
        "prefecture": "東京都",
        "address1": "千代田区",
        "address2": "永田町",
        "address3": "",
        "address4": ""
      },
      "en": {
        "prefecture": "Tokyo",
        "address1": "Chiyoda-ku",
        "address2": "Nagatacho",
        "address3": "",
        "address4": ""
      }
    }
  ]
}
''';

  test('formJson', () async {
    var data = json.decode(jsonData);

    PostCode result = PostCode.fromJson(data);

    expect(result.code, '1000014');
    expect(result.data.length, 2);

    expect(result.data[1].prefcode, '14');
    expect(result.data[1].ja.prefecture, "東京都");
  });
}
