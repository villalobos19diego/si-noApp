import 'package:flutter/material.dart';





class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Container(
            
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            decoration: BoxDecoration(
              
              
             // borderRadius: BorderRadius.circular(20.0),
              color: Color.fromARGB(255, 247, 36, 149,),
            ),
            child: TextField(
              decoration: const InputDecoration(
                
                hintText: 'Search  Category...',
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
                
                padding: EdgeInsets.all(10.0),
                childAspectRatio: 1.0, // Cambia este valor para ajustar el tamaño
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                children: [
                  CustomImageButton(
                    image: '',
                    onPressed: () {
                      
                      // Acción al presionar el botón 1
                    },
                  ),
                  CustomImageButton(
                    image: '',
                    onPressed: () {
                      // Acción al presionar el botón 2
                    },
                  ),
                  CustomImageButton(
                    image: '',
                    onPressed: () {
                      // Acción al presionar el botón 3
                    },
                  ),
                  CustomImageButton(
                    image: '',
                    onPressed: () {
                      // Acción al presionar el botón 4
                    },
                  ),
                  CustomImageButton(
                    image: '',
                    
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

class CustomImageButton extends StatelessWidget {
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
        
        width: 20, // Ancho personalizado del contenedor
        height: 20, // Alto personalizado del contenedor
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20.0),
          
          color: const Color.fromARGB(49, 255, 214, 64),
          
          
        ),
        child: Center(
          child: Image.asset(
          
            image,
            width: 0, // Ancho personalizado de la imagen
            height: 0, // Alto personalizado de la imagen
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

