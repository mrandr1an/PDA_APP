import 'package:flutter/material.dart';

class newOrderRoute extends StatefulWidget{
	const newOrderRoute({Key? key}) : super(key: key);

	@override
	State<newOrderRoute> createState() => newOrderState(); 
}


class newOrderState extends State<newOrderRoute>{
	@override
	Widget build(BuildContext context){
	return Scaffold(
		appBar: AppBar(
			title: const Text(
				"Search menu",),
			
			
		actions: [
			IconButton(
			 onPressed: (){
			 	showSearch(
					context: context,
					delegate: CustomSearchDelegate(),
					);
			 
			 
			 		},	
				 icon: const Icon(Icons.search),
				),
		
		
		],
		
		),
		
		
		
		);
	
	}	



}



class CustomSearchDelegate extends SearchDelegate{
	List<String> searchTerms = [ "safasfa" ,"fsdfsdg", "wttyy","asdasdasf","gfg","ffggg","dfgg",];

	@override
	List<Widget>? buildActions(BuildContext context) {
		return [
			IconButton(
				onPressed: (){
				  query = '';
				},
				icon: Icon(Icons.clear),
				),
		];
	
	
	}

	@override
	Widget? buildLeading(BuildContext context){
	return IconButton(
		onPressed: () {
		 close(context,null);
		
		},
		icon: Icon(Icons.arrow_back),
		
		);
	
	
	}



	@override
	Widget buildResults(BuildContext context){
		List<String> matchQuery = [];
		for (var search in searchTerms){
		if(search.toLowerCase().contains(query.toLowerCase())){
		matchQuery.add(search);
		}
		
		}
		return ListView.builder(
			itemCount: matchQuery.length,
			itemBuilder: (context, index){
			  var result = matchQuery[index];
			  return ListTile(
				  title: Text(result),
				  );
			
			},
			
			);
	
	
	}
	

       @override
       Widget buildSuggestions(BuildContext context){
       List<String> matchQuery = [];
       for (var search in searchTerms){
       		if(search.toLowerCase().contains(query.toLowerCase())){
		  matchQuery.add(search);
		}
       }
       		return ListView.builder(
			itemCount: matchQuery.length,
			itemBuilder: (context, index){
			 var result = matchQuery[index];
			 return ListTile(
				 title: Text(result),
				 );
			},
			
			
			);

       
       }



}
