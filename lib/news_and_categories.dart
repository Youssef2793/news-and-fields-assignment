import 'package:flutter/material.dart';
import 'package:news_and_categories/itemsoflust.dart';

class NewsAndCategories extends StatelessWidget {
  List <String> field=['air','cars','cook','economics','health','knowledge','political','sport','technology','tourism'];
 List <String> paths=[
  'assets/images/air.jpg',
  'assets/images/cars.jpg',
  'assets/images/cook.jpg',
  'assets/images/economics.jpg',
  'assets/images/health.png',
  'assets/images/knowledge.jpg',
  'assets/images/political.jpg',
  'assets/images/sport.png',
  'assets/images/technology.jpg',
  'assets/images/tourism.ipg',
 ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            children:[ 
              Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                    child: Text('News',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),textAlign: TextAlign.center,),
                    ),
                  ),
                 Expanded(
                   child: Container(
                      color: Colors.purple,
                    child: Text('Categories',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,),
                    ),
                 ),
                ],
              ),
            ),
             Expanded(
              flex: 1,               
                  child:ListView.builder(
                    itemCount: field.length,
                    
                    itemBuilder: (context,index){
                  return Itemsoflust(path: paths[index], title: field[index]);
                    }
                    )
               
              ),
          ]),
        ),
      ),
    );
  }
}