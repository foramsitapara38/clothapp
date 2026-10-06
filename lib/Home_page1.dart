import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ---------------- HEADER ----------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'LUXE',
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const Text(
                      'X',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // ---------------- GREETING ----------------
                const Text(
                  'Hello,beautiful!!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 3),

                const Text(
                  'Find Your Perfect Style',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 10),

                // ---------------- SEARCH ----------------
                Container(
                  height: 38,
                  color: const Color(0xFFBDBDBD),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.search,
                          size: 27,
                          color: Colors.black,
                        ),
                      ),

                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Search for drees,top and more...',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(bottom: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // ---------------- CATEGORIES ----------------
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 9),

                SizedBox(
                  height: 95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      categoryItem(
                        'Dresses',
                        'assets/dresses.jpg',
                      ),

                      categoryItem(
                        'Tops',
                        'assets/tops.jpg',
                      ),

                      categoryItem(
                        'Western',
                        'assets/western.jpg',
                      ),

                      categoryItem(
                        'Saree',
                        'assets/saree.jpg',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // ---------------- BIG BANNER ----------------
                Container(
                  width: double.infinity,
                  height: 145,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9D8C3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 5,
                        bottom: 0,
                        child: Image.asset(
                          'assets/fashion_girl.png',
                          height: 140,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 9),

                // ---------------- PRODUCTS ----------------
                Row(
                  children: [
                    productCard(
                      'assets/dress1.jpg',
                      'Floral Maxi Dress',
                      '₹1,299',
                    ),

                    const SizedBox(width: 10),

                    productCard(
                      'assets/top1.jpg',
                      'White Puff Top',
                      '₹799',
                    ),

                    const SizedBox(width: 10),

                    productCard(
                      'assets/jacket1.jpg',
                      'Denim Jacket',
                      '₹1,499',
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),

      // ---------------- BOTTOM MENU ----------------
      bottomNavigationBar: Container(
        height: 58,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              '🏠',
              style: TextStyle(fontSize: 23),
            ),

            const Icon(
              Icons.favorite_border,
              size: 27,
            ),

            const Icon(
              Icons.list,
              size: 29,
            ),

            const Text(
              '🛍️',
              style: TextStyle(fontSize: 23),
            ),

            const Icon(
              Icons.person,
              size: 28,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }

  // ---------------- CATEGORY ITEM ----------------
  Widget categoryItem(String name, String imagePath) {
    return SizedBox(
      width: 65,
      child: Column(
        children: [
          SizedBox(
            width: 65,
            height: 68,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: const Color(0xFFE5E5E5),
                  child: const Icon(
                    Icons.image,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 3),

          Text(
            name,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- PRODUCT CARD ----------------
  Widget productCard(
    String imagePath,
    String name,
    String price,
  ) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 115,
                width: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFEDEDED),
                      child: const Icon(
                        Icons.checkroom,
                        size: 40,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),

              const Positioned(
                right: 4,
                top: 4,
                child: Icon(
                  Icons.favorite_border,
                  size: 17,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          Text(
            name,
            style: const TextStyle(
              fontSize: 8,
            ),
          ),

          const SizedBox(height: 2),

          Text(
            price,
            style: const TextStyle(
              fontSize: 8,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}