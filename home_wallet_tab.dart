import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phixlab_money/data/userInfo.dart';
import 'package:phixlab_money/utils/constants.dart';
import 'package:phixlab_money/widget/income_expense_card.dart';
import 'package:phixlab_money/widget/transaction_item_tile.dart';

import '../data/userInfo.dart';

class HomeWalletTab extends StatelessWidget {
  const HomeWalletTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Icon(
                  Icons.track_changes,
                size: 200,
                ),
                SizedBox(height: 55),
                
              // Hello aganin
              Text(
                'Tracker Ararm',
                // style: GoogleFonts.bebasNeue(
                //   fontSize: 52,
                // ),
                ),
                SizedBox(height: 10),
                Text(
                ' ยินดีต้อนรับ ',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20,
                  ),
                ),
                SizedBox(height: 50),
                
              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  // controller: _emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                    ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(12),
                      ),
                        hintText: 'รายรับ',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
              SizedBox(height: 10),
              
              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  // controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(12),
                    ),
                        hintText: 'รายจ่าย',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                        //   onTap: (){
                        //     Navigator.push(context, MaterialPageRoute(builder: (context)
                        //     {
                        //       // return ForgotPasswordPage();
                        //     },
                        //    ),
                        //  );
                        // },
                          child: Text(
                            'ลืมรหัสผ่าน?', 
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                                               ),
                                              ),
                        ),  
                      ],
                    ),
                  ),
              
              SizedBox(height: 10),
              
              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  // onTap: signIn,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
          
          
              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('สมัครสมาชิก',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  GestureDetector(
                    // onTap: widget.showRegisterPage,
                    child: Text(
                      ' Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}