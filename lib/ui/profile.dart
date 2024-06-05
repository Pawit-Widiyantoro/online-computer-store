import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222629),
        elevation: 0, // Remove elevation
        // leading: IconButton(
        //   icon: ColorFiltered(
        //     colorFilter: ColorFilter.mode(Color(0xFF86C232), BlendMode.srcIn),
        //     child: Image.asset('Back.png'),
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        centerTitle: true, // Center the title
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(1), // Set the height of the bottom border
          child: Container(
            color: Color(0xFF474B4F), // Border color
            height: 1, // Border height
          ),
        ),
        title: Text(
          'Profil',
          style: TextStyle(color: Color(0xFF86C232)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                width: 350,
                child: Column(
                  children: [
                    Container(
                      width: 343,
                      height: 240,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      child: Column(
                        children: [Image.asset('icon_User_Circle_.png')],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: Row(
                        children: [
                          Image.asset('Location.png'),
                          SizedBox(width: 30),
                          Text(
                            'Address',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/', // The route name of your landing page
                          (Route<dynamic> route) => false, // Remove all previous routes
                        )
                      },
                      child: Row(
                        children: [
                          Image.asset('logout.png'),
                          SizedBox(width: 30),
                          Text(
                            'Logout',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF222629),
        selectedItemColor: const Color(0xFF86C232),
        unselectedItemColor: Color(0xff474B4F),
        currentIndex: 3,
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('icon_Home_2.png'), // Path to your asset image
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('cart_fill.png'), // Path to your asset image
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
