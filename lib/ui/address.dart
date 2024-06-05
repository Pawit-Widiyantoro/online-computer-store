import "package:flutter/material.dart";

class addressPage extends StatefulWidget {
  const addressPage({super.key});

  @override
  State<addressPage> createState() => _addressPageState();
}

class _addressPageState extends State<addressPage> {
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
        centerTitle: true, // Remove back button
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(1), // Set the height of the bottom border
          child: Container(
            color: Color(0xFF474B4F), // Border color
            height: 1, // Border height
          ),
        ),
        title: Text(
          'Product Details',
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
                child: Column(children: [
                  Container(
                    width: 343,
                    height: 240,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF474B4F), // Border color
                        width: 1, // Border width
                      ),
                      borderRadius: BorderRadius.circular(5), // Border radius
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nathan Tjoe-A-On",
                          style:
                              TextStyle(color: Color(0xFF86C232), fontSize: 12),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Kecamatan Kebasen, Kabupaten Banyumas, 53172 Jawa Tengah, Indonesia",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "+628123456789",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                    height: 57,
                    width: 77,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, "/login");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF86C232),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 63,
                    width: 365,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/payment");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF86C232),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38),
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
