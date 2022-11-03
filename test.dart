import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  double ethToInr;
  try {
    String api =
        "http://api.coinlayer.com/api/live?access_key=f91c73e18cadb982d4296e3d2e9a3433&symbols=ETH&target=INR";
    var url = Uri.parse(api);
    print(url);
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    // print(data);

    // double priceInr = double.parse(data[0]['price']);
    ethToInr = data['rates']['ETH'];
    print("ETH to INR " + ethToInr.toString());
  } catch (e) {
    print(e);
    ethToInr = 329172.649;
  }
//   print(ethToInr);
}
