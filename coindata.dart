import 'package:http/http.dart' as http;

const apikey="D811E45B-013F-427E-A985-F708443D569C";
const List<String> currenciesList = [
  'USD',
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  CoinData(this.url);

  final String url;


  Future getrate() async{

    http.Response response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      print(response.statusCode);
    }
    else{
      print('Error in getting response');
    }
  }

}