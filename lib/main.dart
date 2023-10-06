/*import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    RegisterScreen(),
    // Agrega otros widgets o pantallas aquí si es necesario.
  ];

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
    

     appBar: null,
   
      body: PageView.builder(
        itemCount: _screens.length,
        controller: PageController(initialPage: _currentIndex),
        itemBuilder: (context, index) {
          return _screens[index];
        },
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(icon: Icons.home, backgroundColor: Colors.pink, extras: {'label': 'Inicio'}),
          FluidNavBarIcon(icon: Icons.person, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),
          FluidNavBarIcon(icon: Icons.apps, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),
          FluidNavBarIcon(icon: Icons.shopping_cart, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),
        ],
        onChange: _handleNavigationChange,
        style: const FluidNavBarStyle(
          iconSelectedForegroundColor: Colors.pinkAccent,
          iconUnselectedForegroundColor: Colors.white10,
        ),
        scaleFactor: 1.5,
        defaultIndex: 0,
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class RegisterScreen extends StatefulWidget {
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

    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: 

      
      
      
      Form(
        key: _formKey,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width * 0.85,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
              
            
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    SizedBox(height: size.height * 0.05, ),
                    
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
                          
                          icon: Icon(
                           
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                              primary: Colors.indigo,
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
        ),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // You can add more email validation logic here if needed
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // You can add more password validation logic here if needed
    return null;
  }

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      final email = emailController.text;
      final password = passwordController.text;
      print('Email: $email');
      print('Password: $password');
      // You can perform registration logic here
    }
  }
}*/


import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // No usaremos AppBar
      body:
      
      
       Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Agregamos un IconButton con un icono de flecha
                IconButton(
                  icon: const Icon(Icons.person_2_rounded, size: 40, weight: 10),
                  onPressed: () {
                    // Agrega aquí la lógica que desees al hacer clic en el botón.
                  },
                ),
              ],
            ),
          ),
          RegisterScreen(), // Agregamos el formulario de registro aquí
        ],
      ),

      bottomNavigationBar: FluidNavBar(icons:[ FluidNavBarIcon(icon: Icons.home, backgroundColor: Colors.pink, extras: {'label': 'Inicio'}),
          FluidNavBarIcon(icon: Icons.person, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),
          FluidNavBarIcon(icon: Icons.apps, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),
          FluidNavBarIcon(icon: Icons.shopping_cart, backgroundColor: Colors.pink, extras: {'label': 'Perfil'}),], 
         
          style:  const FluidNavBarStyle(
            iconSelectedForegroundColor: Colors.pinkAccent,
            iconUnselectedForegroundColor: Colors.white10,
          ),
          scaleFactor: 1.5,
          defaultIndex: 0,

          ),


    );
  }

  
}

class RegisterScreen extends StatefulWidget {
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
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
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
                          primary: Colors.indigo,
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


