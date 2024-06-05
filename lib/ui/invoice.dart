import "package:flutter/material.dart";

class invoicePage extends StatefulWidget {
  const invoicePage({super.key});

  @override
  State<invoicePage> createState() => _invoicePageState();
}

class _invoicePageState extends State<invoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222629),
        elevation: 0, // Remove elevation
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
          'Invoice',
          style: TextStyle(color: Color(0xFF86C232)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 343,
                        height: 112,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF474B4F), // Border color
                            width: 1, // Border width
                          ),
                          borderRadius:
                              BorderRadius.circular(5), // Border radius
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Rp.7000000",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Successfull!",
                              style: TextStyle(
                                color: Color(0xFF86C232),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 343,
                        height: 79,
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
                            Text(
                              'Pay to',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Image.asset('ovo.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'OVO',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        width: 343,
                        height: 195,
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
                            Text(
                              'Order Details',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('ID', style: TextStyle(color: Color(0xFF474B4F)),),
                            SizedBox(height: 5,),
                            Text("012345678", style: TextStyle(color: Colors.white),),
                            Divider(
                              color: Color(0xFF474B4F),
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Payment Method', style: TextStyle(color: Color(0xFF474B4F)),),
                            SizedBox(height: 5,),
                            Text("OVO", style: TextStyle(color: Colors.white),),
                            Divider(
                              color: Color(0xFF474B4F),
                              thickness: 1,
                            ),
                          ],
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
                      Navigator.pushNamed(context, "/homepage");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF86C232),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: const Text(
                      "Back to Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
