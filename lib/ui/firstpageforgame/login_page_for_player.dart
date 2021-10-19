import 'package:exam/ui/secondpageforgame/game_page_for_player.dart';
import 'package:flutter/material.dart';

class LoginPageForPlayer extends StatefulWidget {
  const LoginPageForPlayer({Key? key}) : super(key: key);

  @override
  _LoginPageForPlayerState createState() => _LoginPageForPlayerState();
}

class _LoginPageForPlayerState extends State<LoginPageForPlayer> {
  Color _containerColor = Colors.grey.shade200;
  TextEditingController _forUser = TextEditingController();
  TextEditingController _forEmail = TextEditingController();
  TextEditingController _forPassword = TextEditingController();
  TextEditingController _forNumber = TextEditingController();
  Icon? _icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _containerColor,
        elevation: 0,
        title: Text(
          "Paper Scissors Game",
          style: TextStyle(
            fontFamily: "Akronim",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 44.0,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: _containerColor,
          image: DecorationImage(
            
            //fit: BoxFit.contain,
            image: AssetImage(
              "assets/images/forgame.png",
            ),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {});
                    },
                    validator: (text) {
                      if (text == null) {
                        debugPrint("$text");
                        return "Username bo'sh bo'lmasligi kerakR";
                      }
                    },
                    controller: _forUser,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Enter your username...",
                      labelText: "Username...",
                      suffix: Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextFormField(
                    controller: _forEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(),
                      ),
                      suffix: Icon(
                        Icons.email,
                        color: Colors.blueAccent,
                      ),
                      hintText: "Enter your email...",
                      labelText: "Email...",
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.length < 4) {
                        return "Username 4 ta ekementdan uzun bo'lishi kerak";
                      }
                    },
                    controller: _forPassword,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Enter your password...",
                      labelText: "Password...",
                      suffix: Icon(
                        Icons.password,
                        color: Colors.blueAccent,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 370.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextFormField(
                    controller: _forNumber,
                    validator: (num) {
                      if (num == null) {
                        return "Takrorlanish sonini kiritishingiz shart!";
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(),
                      ),
                      hintText: "O'yin necha marotaba takrorlansin?",
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 40.0,
              bottom: 40.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(330.0, 50.0),
                  side: BorderSide(
                    color: Colors.brown,
                  ),
                  primary: Colors.brown,
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          GamePageForPlayer(_forUser.text, _containerColor),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
 
}
