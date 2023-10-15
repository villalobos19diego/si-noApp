import 'package:flutter/material.dart';
import 'package:untitled/pantalla1.dart';





class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Container(
            
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            decoration: BoxDecoration(
              
              
             borderRadius: BorderRadius.circular(30.0),
              color: Color.fromARGB(255, 247, 36, 149,),
            ),
            child: TextField(
              decoration: const InputDecoration(
                
                hintText: 'Buscar Categorias...',
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                // Acción al cambiar el texto de búsqueda
              },
            ),
          ),
          Expanded(
            child: Center(
              child: GridView.count(
                crossAxisCount: 2,
                
                padding: const EdgeInsets.all(10.0),
                childAspectRatio: 1.0, // Cambia este valor para ajustar el tamaño
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                children: [
                  CustomImageButton(
                    image: 'assets/imagen2.png',
                    onPressed: () {
                      showDialog( context: context,
                      barrierDismissible: false,
                       builder: (context) {
                        return  const AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                             children: [ CircularProgressIndicator(),
                               SizedBox(height: 16),

                               Text('Espera Chele Mientras Carga...'),

                             ],
                          ),
                        );

                       },

                      );
                      Future.delayed(const Duration(seconds:5), (){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pantalla1()));
                      });
                      
                      // Acción al presionar el botón 1
                    },
                  ),
                  CustomImageButton(
                    image: 'assets/imagen3.jpeg',
                    onPressed: () {
                      // Acción al presionar el botón 2
                    },
                  ),
                  CustomImageButton(
                    image:  'assets/imagen1.jpeg',
                    onPressed: () {
                      // Acción al presionar el botón 3
                    },
                  ),
                  CustomImageButton(
                    image: 'assets/imagen4.jpg',
                    onPressed: () {
                      // Acción al presionar el botón 4
                    },
                  ),
                  CustomImageButton(
                    image: 'assets/imagen5.jpg',
                    
                    onPressed: () {
                      // Acción al presionar el botón 5
                    },
                  ),
                  CustomImageButton(
                    image: '',
                    onPressed: () {
                      // Acción al presionar el botón 6
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class CustomImageButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const CustomImageButton({super.key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: onPressed,
  splashColor: Colors.amber,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color.fromARGB(49, 255, 214, 64),
        ),

        child: Center(
          child: Image.asset(

            image,

            width: 250, // Ancho personalizado de la imagen
            height: 250,
            // Alto personalizado de la imagen
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}*/

class CustomImageButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const CustomImageButton({Key? key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: onPressed,
      splashColor: Colors.amber,
      child: Container(
        width: 250, // Ancho personalizado del contenedor
        height: 250, // Alto personalizado del contenedor
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color.fromARGB(49, 255, 214, 64),
        ),
        child: Center(
          child: Container(
            width: 200, // Ancho personalizado de la imagen
            height: 200, // Alto personalizado de la imagen
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color.fromARGB(49, 255, 214, 64),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


