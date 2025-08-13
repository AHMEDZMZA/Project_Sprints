import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List products = [
    {
      "name": "Product 1",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s",
      "price": 10.0,
      "description": "Description of Product 1",
    },
    {
      "name": "Product 2",
      "image":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "price": 20.0,
      "description": "Description of Product 2",
    },
    {
      "name": "Product 3",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s",
      "price": 30.0,
      "description": "Description of Product 3",
    },
    {
      "name": "Product 4",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s",
      "price": 40.0,
      "description": "Description of Product 4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          tr("our_products"),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Suwannaphum",
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              tr("Featured Products"),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                fontFamily: "Suwannaphum",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: PageView(
                children: [
                  Image.asset('asset/image1.jpeg', fit: BoxFit.cover),
                  Image.network(
                    "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9APxkj0xClmrU3PpMZglHQkx446nQPG6lA&s',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              tr("Shop Our Collection"),
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontFamily: "Suwannaphum",
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              products[index]['image'],
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Item added to the cart"),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          products[index]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "\$${products[index]['price']}",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              tr("Hot Offers 🔥"),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                fontFamily: "Suwannaphum",
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(products[index]['name']),
                  subtitle: Text("\$${products[index]['price']}"),
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
