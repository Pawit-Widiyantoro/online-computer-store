import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: 350, // Just for visualization
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "laptop_asus.png",
                      height: 215, width: 350,
                      fit: BoxFit.cover, // Cover the entire container
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Asus Vivobook 14 A1404ZA Intel i3 1215U 8GB SSD 512GB',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft, // Align text to the left
                    child: Text(
                      "Rp. 9.000.000",
                      style: TextStyle(
                        color: Color(0xFF86C232),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Color",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      """
Asus Vivobook 14 A1404ZA-IPS351 – Quiet Blue
Asus Vivobook 14 A1404ZA-IPS352 – Transparent Silver
Asus Vivobook 14 A1404ZA-IPS353 – Terra Cotta

Spesifikasi
Processor : Intel®Core™ i3-1215U 
Processor 1.2 GHz (10M Cache, up to 4.4 GHz, 6 cores)
Graphics : Intel UHD Graphics
Memory : 8GB DDR4 on board
Storage : 512GB M.2 NVMe™ PCIe® SSD
Display : 14.0-inch, FHD (1920 x 1080) 
60Hz refresh rate, IPS-level Panel, 
Brightness : 250nits, 100% sRGB color gamut, 
Anti-glare display, 82 ％ Screen-to-body ratio

Operating System : Windows 11 Home 
+ Office Home and Student 2021

Webcam : 720p HD camera
Keyboard : Backlit Chiclet Keyboard + FingerPrint
Wireless : Wi-Fi 6E(802.11ax) (Dual band) 1*1 + Bluetooth® 5.3

Audio :
SonicMaster
Built-in speaker
Built-in array microphone
Voice control with Cortana voice-recognition support

Ports :
1x USB 2.0 Type-A
1x USB 3.2 Gen 1 Type-C
2x USB 3.2 Gen 1 Type-A
1x HDMI 1.4
1x 3.5mm Combo Audio Jack
1x DC-in

Battery : 42WHrs, 3S1P, 3-cell Li-ion
Dimension (WxHxD) : 32.49 x 21.39 x 1.79 ~ 1.79 cm 
(12.79″ x 8.42″ x 0.70″ ~ 0.70″)
Weight (with Battery) : 1.40 kg (3.09 lbs)
Weight (without Battery) : 1.23 kg (2.71 lbs)""",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
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
                        Navigator.pushNamed(context, "/cart");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF86C232),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38),
                        ),
                      ),
                      child: Text(
                        "Add to Cart",
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
