import 'package:flutter/material.dart';
import 'homeroute.dart';
import 'neworderroute.dart';

void main(){
	runApp(MaterialApp(
	initialRoute: '/',
	routes: {
	'/': (context) => StartHomeRoute(),
	'/newOrder': (context) => newOrderRoute(),
	
	},	
			
			));
	

}
