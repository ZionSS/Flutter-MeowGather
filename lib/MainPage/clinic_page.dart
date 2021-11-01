import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meowgather/MainPage/ClinicComponent/application_bloc.dart';
import 'package:provider/provider.dart';

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
            )
          ],
        )
    );
  }
}