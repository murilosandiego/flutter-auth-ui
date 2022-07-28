import 'package:flutter/material.dart';
import 'package:supa_flutter_auth/supa_flutter_auth.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final user = SupabaseAuth().getActiveUser();

  void checkUser(context) {
    if(user == null) Navigator.popAndPushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    /** 
     * figure something better - avoid setState() or markNeedsBuild() called during build Error
     * maybe use provider?
     * or implement that with go_router redirection check
    */
    Future.delayed(Duration.zero,(){
        checkUser(context);
  });
    return const Scaffold(
      body: Center(
        child: Text(
          'You are home',
          style: TextStyle(fontSize: 42),
        ),
      ),
    );
  }
}       
