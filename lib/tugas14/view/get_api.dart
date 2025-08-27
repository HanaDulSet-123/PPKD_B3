import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas14/api/get_user.dart';
import 'package:ppkd_b_3/tugas14/model/fake_store.dart';
import 'package:ppkd_b_3/tugas14/view/product.dart';

class Day23GetAPIScreen extends StatefulWidget {
  const Day23GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<Day23GetAPIScreen> createState() => _Day23GetAPIScreenState();
}

class _Day23GetAPIScreenState extends State<Day23GetAPIScreen> {
  late Future<List<GetUserModel>> _futureProducts;
  List<GetUserModel> _filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _futureProducts = getUser();
  }

  void _refreshData() {
    setState(() {
      _futureProducts = getUser();
      _searchController.clear();
      _filteredProducts.clear();
    });
  }

  void _filterProducts(String query) {
    _futureProducts.then((products) {
      setState(() {
        _filteredProducts =
            products.where((product) {
              return product.title.toLowerCase().contains(
                    query.toLowerCase(),
                  ) ||
                  product.category.toLowerCase().contains(query.toLowerCase());
            }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshData,
        tooltip: 'Perbarui Produk',
        child: const Icon(Icons.refresh),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Cari Produk...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: _filterProducts,
            ),
          ),
          Expanded(
            child: FutureBuilder<List<GetUserModel>>(
              future: _futureProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  final products =
                      _searchController.text.isEmpty
                          ? snapshot.data!
                          : _filteredProducts;

                  if (products.isEmpty) {
                    return const Center(child: Text("Produk tidak ditemukan"));
                  }

                  return RefreshIndicator(
                    onRefresh: () async {
                      _refreshData();
                    },
                    child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return _buildProductItem(product);
                      },
                    ),
                  );
                } else {
                  return const Center(child: Text('Tidak ada Produk'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(GetUserModel product) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: product),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Product Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product title
                      Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Price
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Rating and sold count
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            '${product.rating.rate}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '• ${product.rating.count}+ reviews',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Store info
                      Text(
                        'Category: ${product.category}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
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
    );
  }
}
