
import 'package:flutter/material.dart';

class Optionals extends StatelessWidget {
  const Optionals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Premium Reports',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Browse Our Premium Reports',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Implement settings handling
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Implement notification handling
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 49), // Add a SizedBox with a height of 49 pixels
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search Marriage, Career, etc.',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.black12,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              DefaultTabController(
                length: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white60,
                      indicatorColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Marriage'),
                        Tab(text: 'Career'),
                        Tab(text: 'Family'),
                        Tab(text: 'Health'),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: TabBarView(
                        children: [
                          // Marriage tab
                          Column(
                            children: [
                              Expanded(
                                child: ListView(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: ReportCard(
                                            title:
                                                'Marriage Timing Prediction',
                                            category: 'Marriage',
                                            price: '₹999.00',
                                            rating: '4.95/5',
                                            description:
                                                'Discover the perfect timing using Vedic \n Astrology and advanced techniques.',
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: ReportCard(
                                            title:
                                                'Marriage Compatibility Report',
                                            category: 'Marriage',
                                            price: '₹899.00',
                                            rating: '4.8/5',
                                            description:
                                                'Analyze compatibility with your partner using astrological insights.',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Career tab
                          Column(
                            children: [
                              Expanded(
                                child: ListView(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: ReportCard(
                                            title:
                                                'Career Growth Analysis',
                                            category: 'Career',
                                            price: '₹799.00',
                                            rating: '4.8/5',
                                            description:
                                                'Get insights into your career path and upcoming opportunities using AI-driven predictions.',
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: ReportCard(
                                            title:
                                                'Skill Enhancement Report',
                                            category: 'Career',
                                            price: '₹899.00',
                                            rating: '4.9/5',
                                            description:
                                                'Learn which skills to enhance for better career opportunities.',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Placeholder for Family tab
                          Center(child: Text("Coming Soon")),
                          // Placeholder for Health tab
                          Center(child: Text("Coming Soon")),
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

class ReportCard extends StatefulWidget {
  final String title;
  final String category;
  final String price;
  final String rating;
  final String description;

  const ReportCard({
    Key? key,
    required this.title,
    required this.category,
    required this.price,
    required this.rating,
    required this.description,
  }) : super(key: key);

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  Color viewButtonColor = Colors.white; // Default color for view button
  Color purchaseButtonColor = Colors.white; // Default color for purchase button

  void _onViewButtonPressed() {
    setState(() {
      viewButtonColor = Colors.blue; // Change to blue when pressed
    });
  }

  void _onPurchaseButtonPressed() {
    setState(() {
      purchaseButtonColor = Colors.blue; // Change to blue when pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width for the card
      height: 360, // Set a fixed height for the card
      child: Card(
        color: Colors.black, // Black background for the card
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Category (e.g., "Marriage", "Career") at the top
              Text(
                widget.category,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8), // Space between category and image

              // Image below the category
              Image.network(
                'https://d30q6eyq078c05.cloudfront.net/media/products/marriage-timing-prediction/marriage-timing-prediction-ph4x3-75903b.webp',
                width: double.infinity, // Full width for the image
                height: 150, // Adjusted image height
              ),
              const SizedBox(height: 8), // Space between image and row

              // Row for MRP (Cost) and Rating just below the image
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Cost on left, Rating on right
                children: [
                  // Cost (MRP) on the left
                  Text(
                    widget.price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // White text for cost
                    ),
                  ),
                  // Rating on the right
                  Row(
                    children: [
                      const Icon(Icons.star_border_outlined, color: Colors.yellow, size: 20), // Star icon for rating
                      Text(
                        widget.rating,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.yellow, // Changed color to yellow for rating numbers
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8), // Space between row and description

              // Description below Cost and Rating
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white, // White text for description
                ),
              ),
              const SizedBox(height: 16), // Space between description and buttons

              // Row for View and Purchase buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // View Button with Icon
                  ElevatedButton.icon(
                    icon: const Icon(Icons.visibility, color: Colors.black), // Eye icon for view
                    label: const Text('View', style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: viewButtonColor, // Color based on button state
                    ),
                    onPressed: _onViewButtonPressed,
                  ),
                  // Purchase Button with Icon
                  ElevatedButton.icon(
                    icon: const Icon(Icons.shopping_cart, color: Colors.black), // Cart icon for purchase
                    label: const Text('Purchase', style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purchaseButtonColor, // Color based on button state
                    ),
                    onPressed: _onPurchaseButtonPressed,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
