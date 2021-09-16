import 'package:flutter/material.dart';
import 'package:productos_app/UI/input_decorations.dart';
import 'package:productos_app/widget/auth_background.dart';
import 'package:productos_app/widget/card_container.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 220),

              CardContainer(
                child: Column(
                  children: [

                    SizedBox( height: 10),
                    Text('Login',style: Theme.of(context).textTheme.headline4,),
                    SizedBox( height: 30),

                    _LoginForm(),


                  ],
                )
              ),

              SizedBox( height: 50),
              Text('Crear una nueva cuenta', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox( height: 50),
              
            ],
          ),
        )
      )
    );
  }
}


class _LoginForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        //TODO: mantener la referencia al KEY
        child: Column(
          children: [

            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'jhon.doe@gmail.com',
                labelText: 'Correo Electrónico',
                prefixIcon: Icons.alternate_email_sharp,
              ),
            ),

            SizedBox( height: 30 ),

            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: '******',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline,
              ),
            ),

            SizedBox( height: 30 ),

            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  'Ingresar', 
                  style: TextStyle( color: Colors.white ),
                ),
              ),
              onPressed: () {},
            ),

          ]
        ),
      ),
    );
  }
}