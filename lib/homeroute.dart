import 'package:flutter/material.dart';
import 'dynamicvars.dart';

class StartHomeRoute extends StatefulWidget {
	const StartHomeRoute({ Key? key }) : super(key: key);
	@override
	State<StartHomeRoute> createState() => HomeRoute();
					    }

class HomeRoute extends State<StartHomeRoute>{

void addorderWidget(){
		
	setState((){
	tableorderList.add(OrderTable());
	});
	
       }



@override
Widget build(BuildContext context){
	//counter
	return Scaffold(
		appBar: AppBar(
			title: Text(storeName),
			backgroundColor: Colors.green,
			
			),
		body: CustomScrollView
			(
			slivers: <Widget>[
			SliverGrid(
			gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
				maxCrossAxisExtent: 200.0,
				mainAxisSpacing: 40.0,
				crossAxisSpacing: 10.0,
				childAspectRatio: 4.0,
			),
			delegate: SliverChildBuilderDelegate(
				(BuildContext context, int index){
					return 	Dismissible(background: Container(
								color: Colors.red,
							    ),
							    key: ObjectKey(tableorderList[index]), 
							    onDismissed: (DismissDirection direction) {
							    setState((){
							    	tableorderList.removeAt(index);
							    });
							    },
							    child: tableorderList[index],	
						);
				},
			childCount: tableorderList.length,		
			),
			),],
			),
		floatingActionButton: FloatingActionButton.extended(
			onPressed: () {		
				addorderWidget();
				Navigator.pushNamed(context, '/newOrder');
			},
					

			label: const Text('Order'),
			icon: const Icon(Icons.add_box),
			backgroundColor: Colors.pink,
			
			),

		);


}


}
