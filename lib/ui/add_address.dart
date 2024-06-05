import "package:flutter/material.dart";

class addAddress extends StatefulWidget {
  const addAddress({super.key});

  @override
  State<addAddress> createState() => _addAddressState();
}

class _addAddressState extends State<addAddress> {
  final usernameEdc = TextEditingController();
  final emailEdc = TextEditingController();
  final passEdc = TextEditingController();

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
        title: const Text(
          'Add Address',
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
                      const SizedBox(height: 30,),
                      const Row(
                        // Use Row for horizontal alignment
                        children: [
                          Text(
                            "Full Name",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        child: SizedBox(
                          width: 357,
                          height: 63,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              controller: usernameEdc,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Adjust border color as desired
                                    width: 2.0, // Adjust border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        // Use Row for horizontal alignment
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        child: SizedBox(
                          width: 357,
                          height: 63,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              controller: usernameEdc,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Adjust border color as desired
                                    width: 2.0, // Adjust border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        // Use Row for horizontal alignment
                        children: [
                          Text(
                            "Province, City, District, Postal Code",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        child: SizedBox(
                          width: 357,
                          height: 63,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              controller: usernameEdc,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Adjust border color as desired
                                    width: 2.0, // Adjust border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        // Use Row for horizontal alignment
                        children: [
                          Text(
                            "Street Name, Building, House No.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        child: SizedBox(
                          width: 357,
                          height: 63,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              controller: usernameEdc,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Adjust border color as desired
                                    width: 2.0, // Adjust border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        // Use Row for horizontal alignment
                        children: [
                          Text(
                            "Other Details",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        child: SizedBox(
                          width: 357,
                          height: 63,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              controller: usernameEdc,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Adjust border color as desired
                                    width: 2.0, // Adjust border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Container(
                margin: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  height: 63,
                  width: 365,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/profile");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF86C232),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
