import 'package:eduapp/third.dart';
import 'package:flutter/material.dart';

class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image covering half the page
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  flex: 5, // Image takes half the page
                  child: Image.asset(
                    'assets/images/durgam.png', // Replace with your actual image path
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  flex: 5, // The remaining space will be filled with a white background
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Content on top of the design
          SafeArea(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text("Location Details"),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.black),
                      onPressed: () {
                        // Add functionality for favorite
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.4),
                          // White card for details
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Book For",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.warning_amber_rounded, color: Colors.red),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              "Your call will end in 2 minutes due to low wallet balance. Available Balance: ₹100",
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 16),
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          // Add money functionality
                                        },
                                        icon: Icon(Icons.add),
                                        label: Text("Add Money"),
                                        style: ElevatedButton.styleFrom(
                                          side: BorderSide(color: Colors.grey),
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 24),
                                // Requested Info Section
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Requested info",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                        labelText: "Select Your Interest*",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      items: [
                                        DropdownMenuItem(
                                          value: "Option 1",
                                          child: Text("Option 1"),
                                        ),
                                        DropdownMenuItem(
                                          value: "Option 2",
                                          child: Text("Option 2"),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        // Handle dropdown selection
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Write request",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: "Optional",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24),
                                // Row for Book Now and Book Later
                                Row(
                                  children: [
                                    // Book Now Card
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.lightGreenAccent,
                                          borderRadius: BorderRadius.circular(16),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3),
                                              blurRadius: 10,
                                              offset: Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.flash_on, color: Colors.black),
                                            SizedBox(height: 8),
                                            Text(
                                              "Book Now",
                                              style: TextStyle(color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    // Book Later Card
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(16),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3),
                                              blurRadius: 10,
                                              offset: Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.access_time, color: Colors.white),
                                            SizedBox(height: 8),
                                            Text(
                                              "Book Later",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Center(
                                  child: Text(
                                    "20 lb CO2eq",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Center(
                                  child: Text(
                                    "GHG Savings with this request",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "Enjoy service at just ₹100 per minute.",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(height: 24),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => third()), // Replace `third` with your screen's class name.
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 32,
                                      ),
                                    ),
                                    child: Text(
                                      "Send Request",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
