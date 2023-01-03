// ignore: depend_on_referenced_packages
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

//  FIRST WE CREATE A INSTANSCE OF GOOGGLE SIGN IN//
final googleSignIn = GoogleSignIn(scopes: [
  'email',
 
]);

class Flutergogle extends StatefulWidget {
  const Flutergogle({super.key, required String title});

  @override
  State<Flutergogle> createState() => _FlutergogleState();
}

class _FlutergogleState extends State<Flutergogle> {
  GoogleSignInAccount? currentUser;

// we ned to this google sigin changes that y wr creae init method//
  @override
  void initState() {

    super.initState();

    googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        currentUser = account;
      });
      googleSignIn.signInSilently();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Goo(),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: () {}, label: Text("SignIn")),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Goo() {
  //bool SignIn = false;

  GoogleSignInAccount? currentUser;
  GoogleSignInAccount? user = currentUser;
  if (user != null) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: GoogleUserCircleAvatar(identity: user),
            title: Text(user.displayName ?? ''),
            subtitle: Text(user.email),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "SignIn SuccessfuLLy",
            style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton.small(
            onPressed: () {
              signout();
            },
            child: const Text("signOut"),
          ),
        ],
      ),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            "Youa re not signin",
            style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              signIn();
            },
            label: const Text("signin"),
          ),
        ],
      ),
    );
  }
}

// googleSignIn.onCurrentUserChanged.listen((account) {
// is linae k matlab ha k koi user jiska pehla sa hi goole coount ha or vo us sa login nhi krna cahata to vo new account bnai //

// googleSignIn.signInSilently();//
//or is line ka mtlb ha k age uska pehla sa google account ha to vo usi ko use kr k sigin in kr ly1

void signout() {
  googleSignIn.disconnect();
} 

Future<void> signIn() async {   
  try {
   await googleSignIn.signIn();
  } catch (error) {
    // ignore: avoid_print
    print(error);
  }
}
