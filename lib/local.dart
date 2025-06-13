import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class Local extends StatefulWidget {
  const Local({Key? key}) : super(key: key);

  @override
  State<Local> createState() => _MyFormState();
}

class _MyFormState extends State<Local> {
  final _productIdLocal = TextEditingController();
  final _productNombre = TextEditingController();
  final _productCapacidad= TextEditingController();
  final _productEmpleados = TextEditingController();
  final _productDueno = TextEditingController();
  final _productDireccion = TextEditingController();
  final _productTelefono = TextEditingController();

  @override
  void dispose() {
    _productIdLocal.dispose();
    _productNombre.dispose();
    _productCapacidad.dispose();
    _productEmpleados.dispose();
    _productDueno.dispose();
    _productDireccion.dispose();
    _productTelefono.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
  backgroundColor: const Color.fromARGB(255, 39, 59, 97),
  title: const Text(
    "Local",
    style: TextStyle(
      color: Colors.white, // Apply the text style here
    ),
  ),
  centerTitle: true,
),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productIdLocal,
                  fieldName: "Id local",
                  myIcon: Icons.abc,
                  prefixIconColor: const Color.fromARGB(255, 8, 41, 104)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productNombre,
                  fieldName: "Nombre Local",
                  myIcon: Icons.add_comment,
                  prefixIconColor: const Color.fromARGB(255, 19, 59, 134)),
              const SizedBox(height: 10.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: _productCapacidad,
                  fieldName: "Capacidad local",
                  myIcon: Icons.person_remove,
                  prefixIconColor: const Color.fromARGB(255, 28, 72, 153)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productEmpleados,
                  fieldName: "Empleados local",
                  myIcon: Icons.emoji_people,
                  prefixIconColor: const Color.fromARGB(255, 39, 87, 175)),
              const SizedBox(height: 10.0),

              MyTextField(
                  myController: _productDueno,
                  fieldName: "Dueño local",
                  myIcon: Icons.person,
                  prefixIconColor: const Color.fromARGB(255, 63, 108, 190)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productDireccion,
                  fieldName: "Direccion local",
                  myIcon: Icons.map_outlined,
                  prefixIconColor: const Color.fromARGB(255, 63, 108, 190)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productTelefono,
                  fieldName: "Telefono local",
                  myIcon: Icons.phone,
                  prefixIconColor: const Color.fromARGB(255, 96, 142, 228)),
              const SizedBox(height: 10.0),
              myBtn(context),
            ],
          ),
        ));
  }

  //Function that returns OutlinedButton Widget also it pass data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productId: _productIdLocal.text,
              productName: _productNombre.text,
              productCapacidad: _productCapacidad.text,
              productEmpleados: _productEmpleados.text,
              productDueno: _productDueno.text,
              productDireccion: _productDireccion.text,
              productTelefono: _productTelefono.text,
            );
          }),
        );
      },
      child: Text(
        "Registrar".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 95, 164, 217)),
      ),
    );
  }
}

//Custom STateless WIdget Class that helps re-usability
// You can learn it in Tutorial (2.13) Custom Widget in Flutter
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent.shade400),
          ),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 71, 58, 183))),
    );
  }
}
