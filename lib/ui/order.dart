import 'package:flutter/material.dart';

class OrderItem {
  final String title;
  final String imageUrl;
  final String price;
  final int quantity;

  OrderItem({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });
}

class orderPage extends StatefulWidget {
  const orderPage({super.key});

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {

  final List<OrderItem> _orderItems = [
    OrderItem(
      title: 'ASUS VIVOBOOK 14 A1404Z4A',
      imageUrl: 'laptop_asus.png',
      price: 'Rp. 7000000',
      quantity: 1,
    ),
    OrderItem(
      title: 'ASUS VIVOBOOK 14 A1404Z4A',
      imageUrl: 'laptop_asus.png',
      price: 'Rp. 7000000',
      quantity: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222629),
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            color: Color(0xFF474B4F),
            height: 1,
          ),
        ),
        title: Text(
          'My Purchases',
          style: TextStyle(color: Color(0xFF86C232)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 343,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF474B4F), // Border color
                            width: 1, // Border width
                          ),
                          borderRadius:
                              BorderRadius.circular(5), // Border radius
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                Text("To Ship", style: TextStyle(color: Color(0xFF86C232)),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            ..._orderItems.map((item) => _buildOrderItem(item)).toList(),
                            SizedBox(height: 20,),
                             Divider(
                              color: Color(0xFF474B4F),
                              thickness: 1,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Spacer(),
                                Text("Rp. 7000000", style: TextStyle(color: Color(0xFF86C232))),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF222629),
        selectedItemColor: const Color(0xFF86C232),
        unselectedItemColor: const Color(0xff474B4F),
        currentIndex: 2,
        onTap: (int index) {
          switch (index) {
            case 0:
              // Navigate to Home page
              Navigator.pushNamed(context,
                  "/homepage"); // Assuming your home page route is "/home"
              break;
            case 1:
              // Navigate to Cart page
              Navigator.pushNamed(
                  context, "/cart"); // Assuming your cart page route is "/cart"
              break;
            case 2:
              // Navigate to Orders page
              Navigator.pushNamed(context,
                  "/orders"); // Assuming your orders page route is "/orders"
              break;
            case 3:
              // Navigate to Profile page
              Navigator.pushNamed(context,
                  "/profile"); // Assuming your profile page route is "/profile"
              break;
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 20, // Adjust this size according to your design
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('icon_Home_.png'), // Path to your asset image
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('keranjang.png'), // Path to your asset image
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('order.png'), // Path to your asset image
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('profil.png'), // Path to your asset image
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

Widget _buildOrderItem(OrderItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              item.imageUrl,
              height: 93,
              width: 83,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                item.quantity.toString(),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                item.price,
                style: TextStyle(color: Color(0xFF86C232)),
              ),
            ],
          ),
        ],
      ),
    );
  }

