import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'updateProductPage';

  String? productName, desc, img;
  int? price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextField(
                onChanged: (data){
                  productName = data;
                },
                hintText: 'Product Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data){
                  desc = data;
                },
                hintText: 'Description',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                onChanged: (data){
                  price = int.parse(data);
                },
                hintText: 'Price',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data){
                  img = data;
                },
                hintText: 'Image',
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(text: 'Update')
            ],
          ),
        ),
      ),
    );
  }
}
