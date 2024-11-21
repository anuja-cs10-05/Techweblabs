import 'package:eduapp/second.dart';
import 'package:flutter/material.dart';

class techweblabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Location Details',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/durgam.png', // Ensure asset is in the correct path
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
                Positioned(
                  top: 20,
                  left: 16,
                  child: Container(
                    color: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      'Techweblabs',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Durgam Cheruvu Park',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'C9QP+GF3, Kavuri Hills Phase 1, Doctor\'s Colony, Madhapur, Hyderabad, Telangana 500033',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      _buildSection('Timing', [
                        'Monday - Friday   :   10am–9pm',
                        'Saturday - Sunday :   10am–11pm',
                      ]),
                      _buildSection('Offer', ['Coupons']),
                      _buildSection('Event', [
                        'Saturday, 10 MAY 2024 – Sunday 26 MAY 2024',
                        'Discover Sailing | 8yrs + | 1hr 30mins',
                      ]),
                      _buildSection('Why you should attend:', [
                        'Exotic water sports',
                        'Fitness',
                        'Adventure',
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the second page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => second(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Request Wyber',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> details) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ...details.map(
                (detail) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                detail,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
