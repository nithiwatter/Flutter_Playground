import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    // _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _buildTitle() {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Hello',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            Text('Log in to your account',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60.0,
        child: TextFormField(
          controller: _emailController,
          onFieldSubmitted: (_) =>
              FocusScope.of(context).requestFocus(_passwordFocusNode),
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            hintText: 'Enter your email',
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(0, 2),
            ),
          ],
        ),
        height: 60.0,
        child: TextFormField(
          controller: _passwordController,
          focusNode: _passwordFocusNode,
          obscureText: true,
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            hintText: 'Enter your password',
          ),
        ),
      ),
    );
  }

  Widget _forgotYourPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text('Forgot your password?',
            style: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }

  Widget _loginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Log in',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: ClipOval(
              child: Material(
                color: Colors.lightBlue,
                child: IconButton(
                  icon: Icon(Icons.chevron_right),
                  color: Colors.white,
                  splashColor: Colors.blueAccent,
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _googleLoginButton() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '-Or-',
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              child: Text(
                'Log in with Google',
                style: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTitle(),
              _emailField(),
              SizedBox(
                height: 30,
              ),
              _passwordField(),
              SizedBox(
                height: 20,
              ),
              _forgotYourPassword(),
              SizedBox(
                height: 20,
              ),
              _loginButton(),
              _googleLoginButton()
            ],
          ),
        ),
      ),
    ));
  }
}
