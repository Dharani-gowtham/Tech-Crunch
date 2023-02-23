import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  var url = Uri.parse('https://app.dharaniandteam.com/getalldatas.php');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // You can handle the response data here
    print(response.body);
  } else {
    // Handle the error condition
    print('Request failed with status: ${response.statusCode}.');
  }
}
