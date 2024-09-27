import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  List<String> myProductName = [
    'Nike Air',
    'Puma Palermo',
    'Adidas Common',
    'NB 550',
  ];

  List<String> myProductDescription = [
    'random model and rare',
    'running model and good feels',
    'style model and expensive',
    'samba model good for teeneger',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myProductName.length; i++)

        // This function for set the height and width in the item  for accomodate element such as: `image.asset`, `Icon` and `Text` 
          Container(
            padding: const EdgeInsets.only(right: 15, left: 15 ,top: 8),
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),

            // When you wanna make it like on online shop you might see the item product that the direction goes to down so we can call `Column` for the direction like in the online shop you guess it
            child: Column(
              children: [
                // After we set the direction of the item, we will make a direction content in side the `Container` we make it before
                Row(
                  // a `mainAxisAlignment` for align your element postion and `MainAxisAlignment.spaceBetween` this for make a first element and third element will in between of the second element, so position will be in top and bottom   
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First element
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        '50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                // End of First element

                // Second element
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                    'asset/img/${i + 1}.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                // End of Second element

                // Third Element
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    myProductName[i],
                    style: const TextStyle(
                      fontSize: 16, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // End of Third element

                // this is for descripton product, icon, and prize for the product 
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      myProductDescription[i],
                      style: const TextStyle(
                        fontSize: 14, 
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$55',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold, 
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        size: 20, 
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
