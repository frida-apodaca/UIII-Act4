import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Frida Apodaca"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 37, 104, 213),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
     drawer: Drawer(
      child: ListView(
        children: [

          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 36, 60, 104)),
              accountName: Text("Frida Apodaca No 1136"),
              accountEmail: Text("a.22308051281136@cbtis128.edu.mx"),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 105, 141, 203),
                  child: CircleAvatar(
            radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/frida-apodaca/ACT4_6j/refs/heads/main/user.png'),

            ),
          ),
                  ),
              ),
            ),
             InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 37, 108, 183)),
                title: Text("Pagina Inicio"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.pushNamed(context, "/perfil");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Perfil"),
              ),
            ),
             InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/Local");},
                leading: Icon(Icons.local_activity, color: Colors.red),
                title: Text("local"),
              ),
            ),
             Divider(),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.green),
                title: Text("About"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.black,
                ),
                title: Text("Log out"),
              ),
            )
          ],
        ),
      ),
          body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}   
            