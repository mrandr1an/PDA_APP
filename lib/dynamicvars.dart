import 'package:flutter/material.dart';
//Dynamic variables
String storeName = "thing";
Color orderPending = Colors.red;
Color orderComplete = Colors.green;


//WIdget lists
List<Widget> tableorderList = [];
List<String> tableID = [];

//widgets

///////////////ORDER TABLE WIDGET/////////////////////////
class OrderTable extends StatefulWidget{
  OrderTable({Key? key}) : super(key: key);
 
 @override
 State<OrderTable> createState() => TableState();


}

class TableState extends State<OrderTable>{
	Color conColor = orderPending;
	@override
	Widget build(BuildContext context){

	
		return 	Container(	
		alignment: Alignment.center,
		color: conColor,
		key: UniqueKey(),
		child: InkWell(
		onTap: () {	
			setState((){
			conColor = orderComplete;
			});
		},

		onDoubleTap: () => showDialog<String>(
				     context: context,
				     builder: (BuildContext context) => PopUpWindow(),
				         		     
				     ),


			),
		);
	}


}
/////////////////////////////POP-UP Window//////////////////////////////////////
class PopUpWindow extends StatefulWidget{
	const PopUpWindow({Key? key}) : super(key: key);
	

	@override
	State<PopUpWindow> createState() => PopUpWindowState();

}


class PopUpWindowState extends State<PopUpWindow>{

	@override 
	Widget build(BuildContext context){
	return AlertDialog(
		title: const Text("WARNING"),
		content: const Text("Warning are u sure u want to delete this table all data will be lost bruh"),
		actions: <Widget>[
		TextButton(
			style: TextButton.styleFrom(primary: Colors.green),
			child: Icon(
				Icons.done
				),
			onPressed: () {
			//REMOVE BOX
			}
			),
		TextButton(
			style: TextButton.styleFrom(primary: Colors.red),
			child: Icon(
				Icons.arrow_back_ios
				),
			onPressed: () {
			Navigator.of(context).pop();
			
			}
			),
		
		],
		
		);
	}




}





