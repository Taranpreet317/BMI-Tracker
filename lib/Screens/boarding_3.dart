import 'package:flutter/material.dart';


class Boarding3 extends StatefulWidget {
  final String resultHome;
  final String cathome;
  Boarding3(this.resultHome, this.cathome);
  @override
  State<StatefulWidget> createState() => Boarding3State();
}

class Boarding3State extends State<Boarding3> {
  final Map<String, String> desc = {
    'Underweight':
        'You are underweight!. Focus on eating more nutrient-rich and calorie-dense foods like nuts, seeds, whole grains, dairy, lean meats, and avocados.  Include plenty of proteins and healthy fats to help build strength and gain weight in a healthy way. Consistency is key — nourish your body and watch it grow stronger every day!',

    'Healthy Weight':
        'You have a healthy weight! Keep up the good work by maintaining a balanced diet full of whole grains, fruits, vegetables, lean proteins, and healthy fats. Stay active, hydrate well, and manage portions to continue feeling your best. A balanced lifestyle today builds a healthier tomorrow. Stay consistent and celebrate your wellness journey!',

    'Overweight':
        'You are slightly above the normal weight range. Focus on small but steady changes — choose a diet rich in fruits, vegetables, lean proteins, and whole grains. Limit processed foods, sugary drinks, and unhealthy fats. Creating a calorie deficit through mindful eating and regular exercise can help you achieve a healthier weight.',

    'Obese':
        'Your BMI indicates obesity. It’s important to take action by adopting a low-calorie, nutrient-dense diet focused on lean proteins, plenty of vegetables, fruits, and whole grains. Avoid high-sugar and high-fat foods. Small, consistent changes and regular physical activity can lead to big improvements over time.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
           
            const Spacer(),
            Text(
              "BMI RESULTS",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA4C670),
                fontFamily: "Montserrat",
              ),
            ),
           
            const Spacer(),
            SizedBox(
              height: 180,
              width: 330,
              child: Card(
                color: Colors.grey.shade900,
                elevation: 5,
                shadowColor: Colors.greenAccent.withValues(alpha: 0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Your BMI ",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 25,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.resultHome,
                      style: TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Poppins",
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

           
            const Spacer(),
            Text(
              widget.cathome,
              style: TextStyle(
                color: Color(0xFFA4C670),
                fontSize: 30,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
              ),
            ),
         
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Container(
                height: 400,
                width: 400,

                child: Text(
                  "${desc[widget.cathome]}",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Colors.white.withValues(alpha: 0.8),
                   
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
