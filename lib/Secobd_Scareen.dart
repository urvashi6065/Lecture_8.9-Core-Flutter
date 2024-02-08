import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second_Scareen extends StatefulWidget {
  const Second_Scareen({super.key});

  @override
  State<Second_Scareen> createState() => _Second_ScareenState();
}

class _Second_ScareenState extends State<Second_Scareen> {
  List<String> droupdownList = ['Shirt', 'Jeans', 'T-shirt', 'Top', 'Drees'];
  String? droupdownvalue;
  double Slidervalue = 1;
  double Range1=2;
  double Range2=5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //his DroupDownButton.......................................................
            DropdownButton<String>(
                value: droupdownvalue,
                isExpanded: true,
                hint: Text("Select"),
                items: droupdownList
                    .map((e) => DropdownMenuItem<String>(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    droupdownvalue = value!;
                  });
                  print(value);
                }),

            //Actiction Chip Button...................................................
            ActionChip(
              label: Text('Action Chip'),
              onPressed: () {},
              backgroundColor: Colors.yellow,
            ),

            //Slider.......................................
            Slider(value: Slidervalue,
                min: 1,
                max: 5,
                 divisions: 2,
                 thumbColor: Colors.red,
                onChanged: (value) {
             setState(() {
               Slidervalue=value;
             });
                }),

            //RangeSlider..........................................
            RangeSlider(
                min: 2,
                max: 5,
                values: RangeValues(Range1, Range2 ), onChanged: (value){
                  setState(() {
                    Range1=value.start;
                    Range2=value.end;
                  });
            })
          ],
        ),
      ),
    );
  }
}
