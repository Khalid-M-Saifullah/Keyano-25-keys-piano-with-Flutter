import 'package:flutter/material.dart';
import 'keyboard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card (
                elevation: 10,
                shadowColor: Colors.deepOrangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),

                color: Color(0xFFFF5248),

                child: const Padding(
                  padding: EdgeInsets.fromLTRB(50, 80, 50, 80),
                  child: Text('Welcome to Keyano!',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: const Text('Have your first keyboard lesson with Keyano!',
                  style: TextStyle(

                    color: Color(0xFF7C99AC),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  <Widget> [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: const Text('Featured',
                        style: TextStyle(
                          color: Color(0xFFFF5248),
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: const Text(' KeyBoards',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),

              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 100,
                      margin: const EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Keyboard()));
                        },
                        child: const Text('25 Keys',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        style: ButtonStyle(
                          enableFeedback: false,
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF5248)),
                        ),

                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: const Text('Coming Soon!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        style: ButtonStyle(
                          enableFeedback: false,
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
