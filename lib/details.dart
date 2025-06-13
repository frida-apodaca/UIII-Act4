import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String productName;
  final String productCapacidad;
  final String productEmpleados;
  final String productId;
  final String productDueno;
  final String productDireccion;
  final String productTelefono;

  const Details({
    Key? key,
    required this.productId,
    required this.productName,
    required this.productCapacidad,
    required this.productEmpleados,
    required this.productDueno,
    required this.productDireccion,
    required this.productTelefono,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 130, 191),
        centerTitle: true,
        title: const Text("Detalles"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.qr_code,color: Color.fromARGB(255, 72, 117, 194)),
              title: const Text("ID"),
              subtitle: Text(productId),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.label,color: Colors.blueAccent),
              title: const Text("Nombre"),
              subtitle: Text(productName),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.description,color: Colors.blueAccent),
              title: const Text("Capacidad"),
              subtitle: Text(productCapacidad),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.attach_money,color: Colors.blueAccent),
              title: const Text("Empleados"),
              subtitle: Text(productEmpleados),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.category,color: Color.fromARGB(255, 49, 95, 174)),
              title: const Text("Dueño"),
              subtitle: Text(productDueno),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.inventory_2,color: Colors.blueAccent),
              title: const Text("Direccion"),
              subtitle: Text(productDireccion),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.inventory_2,color: Colors.blueAccent),
              title: const Text("Telefono"),
              subtitle: Text(productTelefono),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
