import 'package:flutter/material.dart';
import '../../data/datasource/product_local_datasource.dart';
import '../../data/models/product_model.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/promo_banner.dart';
import '../widgets/category_tabs.dart';
import '../widgets/product_card.dart';
import '../widgets/home_bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ProductLocalDataSource datasource =
      ProductLocalDataSource();

  List<ProductModel> products = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {

    products =
        await datasource.getProducts();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

 
       
      body: SafeArea(
           child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const HomeHeader(),
              const SizedBox(height: 10),
              const SearchBarWidget(),
              const SizedBox(height: 20),
              const PromoBanner(),
              const SizedBox(height: 20),
              const CategoryTabs(),
              const SizedBox(height: 16),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                 itemCount: products.length,

             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),

               itemBuilder: (context, index) {

                        return ProductCard(
                          product: products[index],
                        );
                      },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNav(),
    );
  }
}
