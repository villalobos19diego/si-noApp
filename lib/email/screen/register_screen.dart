

import 'package:flutter/material.dart';
/*class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();

}

class _RegisterScreenState extends State<RegisterScreen> {
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) { 
    




 




    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height - 80, // Restamos 80 para dejar espacio para el IconButton
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: Color.fromARGB(87, 239, 133, 168),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.05, child: ColoredBox(color: Colors.cyanAccent)),
                TextFormField(
                  validator: (value) => _validateEmail(value),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: " New Email",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                TextFormField(
                  obscureText: !_showPassword,
                  validator: (value) => _validatePassword(value),
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                  
                  
                    hintText: " Current Password",
                    
                    isDense: true,
                    border: OutlineInputBorder(


                      borderRadius:

                       BorderRadius.circular(10) ,
                    ),
                    suffixIcon: IconButton(
                      color: Colors.lightBlueAccent,
                      

                      
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 

                    Expanded(
                      child: ElevatedButton(
                        onPressed: _handleRegister,
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 70, 131),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                        ),
                        child: const Text(
                          "Email Change",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // Puedes agregar más validaciones de correo electrónico aquí si es necesario
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // Puedes agregar más validaciones de contraseña aquí si es necesario
    return null;
  }

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      final email = emailController.text;
      final password = passwordController.text;
      print('Email: $email');
      print('Password: $password');
      // Puedes realizar la lógica de registro aquí
    }
  }
   

}

*/



class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height - 80, // Restamos 80 para dejar espacio para el IconButton
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: Color.fromARGB(87, 239, 133, 168),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.05, child: ColoredBox(color: Colors.cyanAccent)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Avatar de perfil
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.pink, // Personaliza el color de fondo según tus necesidades
                      // Puedes agregar una imagen de perfil aquí
                    ),
                    // Botón de retroceso
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white, // Personaliza el color del icono según tus necesidades
                      ),
                      onPressed: () {
                        // Agrega aquí la lógica para retroceder
                      },
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) => _validateEmail(value),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: " New Email",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                TextFormField(
                  obscureText: !_showPassword,
                  validator: (value) => _validatePassword(value),
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: " Current Password",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      color: Colors.lightBlueAccent,
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _handleRegister,
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 70, 131),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                        ),
                        child: const Text(
                          "Email Change",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // Puedes agregar más validaciones de correo electrónico aquí si es necesario
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // Puedes agregar más validaciones de contraseña aquí si es necesario
    return null;
  }

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      final email = emailController.text;
      final password = passwordController.text;
      print('Email: $email');
      print('Password: $password');
      // Puedes realizar la lógica de registro aquí
    }
  }
}













