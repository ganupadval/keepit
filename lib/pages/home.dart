import 'package:flutter/material.dart';
import 'package:keepit/pages/infoPage.dart';
import 'package:keepit/pages/signIn.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep It'),
        backgroundColor: Color.fromRGBO(48, 6, 80, 1),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductInformation(
                    productName: 'Product 1',
                    purchaseDate: DateTime.now(),
                    price: 10000.0,
                    warrantyExpiresOn: DateTime.now().add(Duration(days: 365)),
                    warrantyType: 'Limited',
                    boughtFrom: 'Seller 1',
                    shopName: 'Shop 1',
                    shopLocation: 'Location 1',
                    latitude:19.14793579954727,
                    longitude:72.99533995759589,
                  ),
                ),
              );
            },
            // Do something when this item is tapped

            child: ListTile(
              title: Text('Product A'),
              subtitle: Text('1 year warranty'),
              trailing: Text('\₹5000'),
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300, width: 1),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductInformation(
                    productName: 'Product 2',
                    purchaseDate: DateTime.now(),
                    price: 5000.0,
                    warrantyExpiresOn: DateTime.now().add(Duration(days: 180)),
                    warrantyType: 'Unlimited',
                    boughtFrom: 'Seller 2',
                    shopName: 'Shop 2',
                    shopLocation: 'Location 2',
                    latitude:19.14793579954727,
                    longitude:72.99533995759589,
                  ),
                ),
              );
            },
            // Do something when this item is tapped

            child: ListTile(
              title: Text('Product 2'),
              subtitle: Text('6 month warranty'),
              trailing: Text('\₹10000'),
              tileColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey.shade300, width: 1),
              ),
            ),
          ),
          // Add more ListTiles as needed
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add new',
        backgroundColor: Color.fromRGBO(48, 6, 80, 1),
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(48, 6, 80, 1),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color.fromRGBO(48, 6, 80, 1)),
                accountName: Text(
                  "GANESH PADVAL",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("ganeshpadval@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 102, 69, 179),
                  child: Text(
                    "G",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Bills '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   leading: const Icon(Icons.workspace_premium),
            //   title: const Text(' Go Premium '),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Item list '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   leading: const Icon(Icons.edit),
            //   title: const Text(' Edit '),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
              },
            ),
          ],
        ),
      ), //Drawer
    ); //Scaffold
  }
}
