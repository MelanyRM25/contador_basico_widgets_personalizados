import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //State :variables o estados que pueden cambiar en el tiempo

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        
        title: const Text("COUNTER SCREEN"),
        actions: [
          IconButton(
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: TextStyle(fontSize: 85, fontWeight: FontWeight.w200),
            ),
            // Text("Click${clickCounter!=1 ? 's' : ''}", //operacion ternaria
            // style: TextStyle(fontSize: 25)),

            if (clickCounter == 1)
              Text("Click", style: TextStyle(fontSize: 25))
            else
              Text("Clicks", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
            icon:Icons.refresh,
            backgroundColor: Colors.amber,
            foregrounColor: Colors.white,
            onPressed: (){
              clickCounter = 0;
              setState(() {
              });            },
          ),
          const SizedBox(height: 10),

           CustomFloatingButton(
            backgroundColor: Colors.lightGreen,
            foregrounColor: Colors.white,
            icon:Icons.plus_one,
            onPressed: (){
              clickCounter ++;
              setState(() {
              });            },
          ),
          const SizedBox(height: 10),
          CustomFloatingButton(
                        backgroundColor: Colors.blueAccent,
            foregrounColor: Colors.white,icon: Icons.exposure_minus_1,onPressed: () {
          
            
if (clickCounter > 0) {
      clickCounter--;
      setState(() {});
    }            setState(() {
            });
          },)
        ],
      ),
    );
  }
}
//Widgets personalizados

class CustomFloatingButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregrounColor;


  const CustomFloatingButton ({
    super.key, 
    this.icon,
    this.onPressed,
    this.backgroundColor,
    this.foregrounColor,

  });
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregrounColor,
      child: Icon(icon),


      
    );
  }
}
