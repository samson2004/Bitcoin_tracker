import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coindata.dart';


class price extends StatefulWidget {
  const price({super.key});

  @override
  State<price> createState() => _priceState();
}

class _priceState extends State<price> {

  late String rate="?";
  late String selectedcurrency="USD";


  List<Text> getpicker(){
    List<Text> pickeritems=[];

    for(String currency in currenciesList){
      pickeritems.add(Text(currency));
    }
    return pickeritems;
  }

  void getBTCrate(){
    CoinData coinData=CoinData();
    coinData.getrate('https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=$apikey');
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bitcoin Exchange rate"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.lightBlue
                    ),
                    child: Text("1BTC   =    $rate   $selectedcurrency",textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.lightBlue
                    ),
                    child: Text("1ETH  =    $rate   $selectedcurrency",textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.lightBlue
                    ),
                    child: Text("1LTC  =    $rate   $selectedcurrency",textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                child: CupertinoPicker(
                  backgroundColor: Colors.lightBlue,
                  children:getpicker(),
        onSelectedItemChanged: (value){
                    print(currenciesList[value]);
                    setState(() {
                      selectedcurrency=currenciesList[value];
                    });
        }, itemExtent: 32.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
