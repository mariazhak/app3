import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowContainer extends StatelessWidget{
  final IconData icon;
  final String text;

  const RowContainer({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context){
    var screenSizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenSizeWidth * 0.25,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 30, bottom: 30, left: 20),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children:[
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: Icon(
                  icon,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: Text(text,
              style: const TextStyle(fontSize: 12),),
          ),
        ],
      ),
    );
  }
}

class RowContainerLast extends StatelessWidget{
  final IconData icon;
  final String text;

  const RowContainerLast({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context){
    var screenSizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenSizeWidth * 0.25,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 30, bottom: 30, left: 20),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Column(
        children:[
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(text,
              style: const TextStyle(fontSize: 12,  color: Colors.white),),
          ),
        ],
      ),
    );
  }
}

class RowWidget extends StatelessWidget{
  final String mainText;
  final String helpText;
  final IconData icon;
  Color color;
  Color background;

  RowWidget({super.key, required this.mainText, required this.helpText, required this.icon, this.color= Colors.grey, this.background = Colors.white});

  @override
  Widget build(BuildContext context){
    return Container(
      //height: MediaQuery.of(context).size.width * 0.1,
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: background,
            ),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          const SizedBox(width: 15,),
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(mainText,
                  style: const TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(helpText,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            CupertinoIcons.forward,
          ),
        ],
      ),
    );
  }
}

class BarIcon extends StatelessWidget{
  final IconData icon;

  const BarIcon({super.key, required this.icon});

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.shade100,
      ),
      child: Icon(icon,
          color: Colors.white),
    );
  }
}