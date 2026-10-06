import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            // ---------------- HEADER ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LUXE',
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'X',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            // ---------------- TITLE ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),

                  const SizedBox(width: 50),

                  const Text(
                    'Wishlist',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // ---------------- PRODUCTS ----------------
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 38,
                  mainAxisSpacing: 27,
                  childAspectRatio: 0.72,

                  children: [
                    wishlistItem(
                      image: 'assets/wishlist1.png',
                      name: 'Western Gown',
                      price: '\$400',
                    ),

                    wishlistItem(
                      image: 'assets/wishlist2.png',
                      name: 'Saree',
                      price: '\$900',
                    ),

                    wishlistItem(
                      image: 'assets/wishlist3.png',
                      name: 'Western top',
                      price: '\$450',
                    ),

                    wishlistItem(
                      image: 'assets/wishlist4.png',
                      name: 'Western pink top',
                      price: '\$800',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // ---------------- BOTTOM NAVIGATION ----------------
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
              style: TextStyle(
                fontSize: 23,
              ),
            ),

            const Icon(
              Icons.favorite,
              size: 27,
              color: Colors.black,
            ),

            const Icon(
              Icons.list,
              size: 29,
            ),

            const Text(
              '🛍️',
              style: TextStyle(
                fontSize: 23,
              ),
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

  // ---------------- WISHLIST ITEM ----------------
  Widget wishlistItem({
    required String image,
    required String name,
    required String price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Product image
        SizedBox(
          width: double.infinity,
          height: 166,
          child: Image.asset(
            image,
            fit: BoxFit.cover,

            // Shows a simple placeholder if image is missing
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: const Color(0xFFE8E8E8),
                child: const Icon(
                  Icons.image,
                  size: 45,
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 5),

        // Product name + heart
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),

            const Icon(
              Icons.favorite,
              size: 17,
              color: Colors.black,
            ),
          ],
        ),

        // Price
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            price,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}