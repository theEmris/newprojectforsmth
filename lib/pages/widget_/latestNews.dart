import 'package:flutter/material.dart';

class latestNewstext extends StatelessWidget {
  const latestNewstext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 40,
              child: Text("Latest News",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                
              ),),),
              Row(children: [
                Text("see all" , style: TextStyle(color: Colors.blue),),
                Icon(Icons.arrow_forward,color: Colors.blue,)
              ],)
            ],
          ) 
        );
  }
}