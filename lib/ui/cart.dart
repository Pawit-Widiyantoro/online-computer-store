import 'package:flutter/material.dart';

class CartItem {
  final String title;
  final String imageUrl;
  final String price;
  int quantity;

  CartItem({
    required this.title,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });
}

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  // List of cart items
  final List<CartItem> _cartItems = [
    CartItem(
      title: 'Asus Vivobook 14 A1404ZA Intel i3 1215U 8GB SSD 512GB',
      imageUrl: 'laptop_asus.png',
      price: 'Rp. 6.000.000',
    ),
    CartItem(
      title: 'Asus Vivobook 14 A1404ZA Intel i3 1215U 8GB SSD 512GB',
      imageUrl: 'laptop_asus.png',
      price: 'Rp. 6.000.000',
    ),
  ];

  void _incrementQuantity(int index) {
    setState(() {
      _cartItems[index].quantity++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (_cartItems[index].quantity > 1) {
        _cartItems[index].quantity--;
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222629),
        elevation: 0,
        leading: IconButton(
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(Color(0xFF86C232), BlendMode.srcIn),
            child: Image.asset('Back.png'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            color: Color(0xFF474B4F),
            height: 1,
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Color(0xFF86C232)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ..._cartItems.map((item) {
                int index = _cartItems.indexOf(item);
                return _buildCartItem(
                  context,
                  item,
                  index,
                  _incrementQuantity,
                  _decrementQuantity,
                  _removeItem,
                );
              }).toList(),
              SizedBox(height: 20),
              _buildTotalSummary(context),
              SizedBox(height: 30),
              SizedBox(
                height: 63,
                width: 365,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/address");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF86C232),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildCartItem(
    BuildContext context,
    CartItem item,
    int index,
    Function(int) onIncrement,
    Function(int) onDecrement,
    Function(int) onRemove,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 350,
      child: Stack(
        children: [
          Container(
            width: 343,
            height: 132,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF474B4F),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          item.title,
                          style: TextStyle(color: Colors.white,fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        item.price,
                        style: TextStyle(color: Color(0xFF86C232)),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Color(0xFF474B4F), BlendMode.srcIn),
                              child: Image.asset('add.png'),
                            ),
                            onPressed: () => onDecrement(index),
                          ),
                          Text(
                            '${item.quantity}',
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            icon: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Color(0xFF474B4F), BlendMode.srcIn),
                              child: Image.asset('min.png'),
                            ),
                            onPressed: () => onIncrement(index),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 2,
            right: 5,
            child: IconButton(
              icon: ColorFiltered(
                colorFilter:
                    ColorFilter.mode(Color(0xFF474B4F), BlendMode.srcIn),
                child: Image.asset('delete.png'),
              ),
              onPressed: () => onRemove(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalSummary(BuildContext context) {
    int totalItems = _cartItems.fold(0, (sum, item) => sum + item.quantity);
    String totalPrice = _cartItems.fold(0, (sum, item) {
      // Assuming the price is in the format 'Rp. 6.000.000'
      int price = int.parse(item.price.replaceAll(RegExp(r'[Rp. ,]'), ''));
      return sum + (price * item.quantity);
    }).toString();

    return Container(
      width: 343,
      height: 164,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF474B4F),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total ($totalItems items)",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                "Rp. $totalPrice",
                style: TextStyle(color: Color(0xFF86C232), fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                "Free",
                style: TextStyle(color: Color(0xFF86C232), fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 30),
          Divider(
            color: Color(0xFF474B4F),
            thickness: 1,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Price",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. $totalPrice",
                style: TextStyle(
                  color: Color(0xFF86C232),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF222629),
      selectedItemColor: const Color(0xFF86C232),
      unselectedItemColor: const Color(0xff474B4F),
      currentIndex: 1,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/homepage");
            break;
          case 1:
            Navigator.pushNamed(context, "/cart");
            break;
          case 2:
            Navigator.pushNamed(context, "/orders");
            break;
          case 3:
            Navigator.pushNamed(context, "/profile");
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      iconSize: 20,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('icon_Home_2.png'),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('cart_fill.png'),
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
    );
  }
}
