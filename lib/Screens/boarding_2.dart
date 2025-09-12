import 'package:bmi_app/Screens/boarding_3.dart';
import 'package:flutter/material.dart';

class Boarding2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Boarding2State();
}

class Boarding2State extends State<Boarding2> {
  var htController = TextEditingController();
  var wtController = TextEditingController();
  var result = "";
  var category = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BMI Calculator",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFFA4C670),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Icon(
                  Icons.monitor_heart_outlined,
                  color: Color(0xFFA4C670),
                  size: 180,
                ),
                SizedBox(height: 20),

                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: htController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "Enter your height (in cm)",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 223, 240, 197),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: wtController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter your weight (in Kg)",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 223, 240, 197),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50),

                SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA4C670),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      var ht = int.parse(htController.text.toString());
                      var wt = int.parse(wtController.text.toString());

                      var bmi = (wt / (ht * ht)) * 10000;

                      if (bmi < 18.5) {
                        category = "Underweight";
                      } else if (bmi >= 18.5 && bmi < 25) {
                        category = "Healthy Weight";
                      } else if (bmi >= 25 && bmi < 30) {
                        category = "Overweight";
                      } else {
                        category = "Obese";
                      }

                      result = bmi.toStringAsFixed(2);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Boarding3(result, category),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text(
                          "Calculate",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        Icon(Icons.refresh, size: 30, color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
