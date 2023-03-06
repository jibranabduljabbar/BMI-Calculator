import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    var result = "";
    var wtController = TextEditingController();
    var ftController = TextEditingController();
    var inController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){},icon: Icon(Icons.menu, color: Colors.white)),
          ),
          backgroundColor: Colors.black,
          title: Center(
            child: Text("BMI Calculator", style: GoogleFonts.sourceSansPro(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 20
              )),
          ),
         actions: [ Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){},icon: Icon(Icons.more_vert, color: Colors.white)),
          ) ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height:47),
                                  Container(
                              width: 330,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: wtController,
                                style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black
                                    ),
                                maxLength: 100,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Enter your Weight (in Kgs): ",
                                    prefixIcon: Icon(Icons.line_weight),
                                    hintText: "75",
                                    hintStyle:
                        GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.white
                                    ),),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 330,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: ftController,
                                style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black
                                    ),
                                maxLength: 100,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Enter your Height (In Feet): ",
                                    prefixIcon: Icon(Icons.height_outlined),
                                    hintText: "6",
                                    hintStyle:
                        GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.white
                                    ),),
                              ),
                            ),
                                    SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 330,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: inController,
                                style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black
                                    ),
                                maxLength: 100,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Enter your Height (In Inch): ",
                                    prefixIcon: Icon(Icons.height_outlined),
                                    hintText: "1",
                                    hintStyle:
                        GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.white
                                    ),),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
        Container(
          width: 300,
          height: 50,

          child: ElevatedButton(
                  onPressed: () {
                    
                        var wt = wtController.text.toString();
                        var ft = ftController.text.toString();
                        var inch = inController.text.toString();

                              if(wt!= "" && ft!= "" && inch!= ""){
          
                              var iWt = int.parse(wt);
                              print(iWt);
                              var iFt = int.parse(ft);
                              print(iFt);
                              var iInch = int.parse(inch);
                              print(iInch);
                              var tInch = (iFt*12)+iInch;
                              print(tInch);
                              var tCm = tInch*2.54;
                              print(tCm);
                              var tM = tCm/100;
                              print(tM);
                              var bmi = iWt/(tM*tM);
                              print(bmi);

                              setState(() {
                                result = "Your BMI Is: $bmi";
                              });

                  }
                  else{

                        setState(() {
                          result = "Fill All the Required Blanks!";
                        });

                  }
                  
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text(
                    "Calculate BMI",
                    style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),),
        ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
        
                    ),
                    child:  Center(
                      child: Text(result , style: GoogleFonts.sourceSansPro(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        
                      ),),
                    )
                  ),
                )
            ],
          ),
        )
      )
    );

  }
}
