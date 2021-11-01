import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meowgather/MainPage/ClinicComponent/application_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ClinicPage extends StatefulWidget {
  const ClinicPage({ Key? key }) : super(key: key);

  @override
  _ClinicPageState createState() => _ClinicPageState();
}

class _ClinicPageState extends State<ClinicPage> {
  @override
  Widget build(BuildContext context) {
    final applicationBloc = Provider.of<ApplicationBloc>(context);
    return Scaffold(
        body: (applicationBloc.currentLocation==null)
        ? Center(child: CircularProgressIndicator() ,)
        
        : ListView(
          children: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Location"
              ),
            ),
          ),
            Container(
              height: 300,
              child: GoogleMap(
                mapType: MapType.normal,
                myLocationButtonEnabled: true, 
                initialCameraPosition: CameraPosition(target: LatLng(applicationBloc.currentLocation.latitude, applicationBloc.currentLocation.longitude),
                zoom: 14
                ),
                
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(onPressed: ()=> launch('https://www.osdco.net/consulting/?fbclid=IwAR22yc_URVlMFXDLnEQzdrTU1c-96wNEN2BGR2E7oN_pgn5mF50piz5bLpI')
                  , icon: Icon(Icons.help_outline,color: Colors.amber[800],size: 25,), 
                  label: Text('Help',style: TextStyle(color: Colors.amber[800],fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        side: BorderSide(color: Colors.red)
                        ),
                        ),
                  ),
                  
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}