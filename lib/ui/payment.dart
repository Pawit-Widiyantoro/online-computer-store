import "package:flutter/material.dart";

class paymentPage extends StatefulWidget {
  const paymentPage({super.key});

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  String _selectedPaymentMethod = '';

  void _handlePaymentMethodChange(String paymentMethod) {
    setState(() {
      _selectedPaymentMethod = paymentMethod;
    });
    // Navigate to the next page (replace '/nextPage' with your route)
    Navigator.pushNamed(context, '/success');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222629),
        elevation: 0, // Remove elevation
        leading: IconButton(
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(Color(0xFF86C232), BlendMode.srcIn),
            child: Image.asset('Back.png'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
          'Payment',
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
                    InkWell(
                      onTap: () =>
                          _handlePaymentMethodChange('Credit Card or Debit'),
                      child: Row(
                        children: [
                          Image.asset('Credit_Card.png'),
                          SizedBox(width: 10),
                          Text(
                            'Credit Card or Debit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => _handlePaymentMethodChange('Bank Transfer'),
                      child: Row(
                        children: [
                          Image.asset('Bank.png'),
                          SizedBox(width: 10),
                          Text(
                            'Bank Transfer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => _handlePaymentMethodChange('OVO'),
                      child: Row(
                        children: [
                          Image.asset('ovo.png'),
                          SizedBox(width: 10),
                          Text(
                            'OVO',
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
    );
  }
}
