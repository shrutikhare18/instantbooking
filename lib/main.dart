
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.purple,
      accentColor: Colors.white),
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String vehicleno, contact, timestay, remarks;

  getVehicleNo(vehicleno) {
    this.vehicleno = vehicleno;
  }

  getVehicleContact(contact) {
    this.contact = contact;
  }

  getVehicleTime(timestay) {
    this.timestay = timestay;
  }

  getVehicleRemarks(remarks) {
    this.remarks = remarks;
  }

  bikeData() {
    print("bike");


  }

  carData() {
    print("car");
  }

  jeepData() {
    print("jeep");
  }

  suvData() {
    print("suv");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("booking"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Vehicle No.",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.purple, width: 2.0))),
                  onChanged: (String vehicleNo) {
                    getVehicleNo(vehicleno);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.purple, width: 2.0))),
                  onChanged: (String contact) {
                    getVehicleContact(contact);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "tentative time stay",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.purple, width: 2.0))),
                  onChanged: (String timestay) {
                    getVehicleTime(timestay);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Remarks",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.purple, width: 2.0))),
                  onChanged: (String remarks) {
                    getVehicleRemarks(remarks);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    child: Text("Bike"),
                    textColor: Colors.white,
                    onPressed: () {
                      bikeData();
                    },
                  ),
                  RaisedButton(
                    color: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: Text("Car"),
                    textColor: Colors.white,
                    onPressed: () {
                      carData();
                    },
                  ),
                  RaisedButton(
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: Text("Jeep"),
                    textColor: Colors.white,
                    onPressed: () {
                      jeepData();
                    },
                  ),
                  RaisedButton(
                    color: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: Text("SUV"),
                    textColor: Colors.white,
                    onPressed: () {
                      suvData();
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}




