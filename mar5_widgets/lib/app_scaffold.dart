import 'package:flutter/material.dart';
import 'package:mar5_widgets/screens/home_screen.dart';

class AppScaffold extends StatefulWidget {
  // final Widget mychild;
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  bool isDark =false;
  int activeIndex = 0;
  List<Widget>  screens = [
    HomeScreen(),
    Column(
      children: [
        TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
        ElevatedButton(onPressed: (){}, child: Text("Search"))
      ],
    ),
    Text("Messages"),
    Text("User Account")
  ];
  changeScreen(index){
    setState(() {
      activeIndex = index;
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mar5"),
        actions: [
         Switch(value: isDark, onChanged: (val){
          setState(() {isDark = val;});},
          activeTrackColor: Colors.greenAccent,
          inactiveTrackColor: Colors.deepPurple,
          activeThumbColor: Colors.deepPurple,
          inactiveThumbColor:Colors.green ,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Harshita"), accountEmail: Text("harshita@gmail.com"),currentAccountPicture: CircleAvatar(backgroundColor: Colors.tealAccent,child: Text("H"),),),
            // DrawerHeader(child:Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("Mar 5" , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            //     IconButton(onPressed: (){
            //       // Navigator.pop(context);
            //       Navigator.of(context).pop();
            //     },icon: Icon(Icons.close),)
            //   ],
            // )),
           ListTile(title:Text("Home"), leading: Icon(Icons.home),
           onTap:() {changeScreen(0);}
           ,) ,
           ListTile(title:Text("About"), leading: Icon(Icons.info),
            onTap:() {
              Navigator.push(context,MaterialPageRoute(builder: (builder){
                return Text("About Page");
              }));
            }) ,
           ListTile(title:Text("Products"), leading: Icon(Icons.list),) ,
           ListTile(title:Text("Contact"), leading: Icon(Icons.email),) 
          ],
        ),
      ),
      body:screens[activeIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: activeIndex,
        onDestinationSelected: (value) {
          setState(() {activeIndex = value;});
        },
        destinations: [
        NavigationDestination(icon: Icon(Icons.home), label:"Home"),
        NavigationDestination(icon: Icon(Icons.search), label:"Search"),
        NavigationDestination(icon: Icon(Icons.person), label:"Account"),
        NavigationDestination(icon: Icon(Icons.message), label:"Messages"),

      ])
    );
  }
}