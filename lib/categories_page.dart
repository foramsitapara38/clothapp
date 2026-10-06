import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            // ---------------- HEADER ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LUXE',
                    style: TextStyle(
                      fontSize: 25,
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 38),

            // ---------------- TITLE ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 27,
                    ),
                  ),

                  const SizedBox(width: 43),

                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 52),

            // ---------------- CATEGORY GRID ----------------
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  childAspectRatio: 0.82,

                  children: [
                    categoryItem(
                      'assets/category_dress.png',
                      'Dresses',
                    ),

                    categoryItem(
                      'assets/category_top.png',
                      'Tops',
                    ),

                    categoryItem(
                      'assets/category_western.png',
                      'Western',
                    ),

                    categoryItem(
                      'assets/category_saree.png',
                      'Saree',
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
        height: 55,
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

            // Home
            const Text(
              '🏠',
              style: TextStyle(
                fontSize: 21,
              ),
            ),

            // Wishlist
            const Icon(
              Icons.favorite_border,
              size: 25,
            ),

            // Categories
            const Icon(
              Icons.list,
              size: 27,
            ),

            // Shopping bag
            const Text(
              '🛍️',
              style: TextStyle(
                fontSize: 21,
              ),
            ),

            // Profile
            const Icon(
              Icons.person,
              size: 27,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }

  // ---------------- CATEGORY ITEM ----------------
  Widget categoryItem(String imagePath, String name) {
    return Column(
      children: [

        // Category image
        SizedBox(
          width: 90,
          height: 95,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,

            // If image is missing
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: const Color(0xFFE8E8E8),
                child: const Icon(
                  Icons.image,
                  size: 40,
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 10),

        // Category name
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}