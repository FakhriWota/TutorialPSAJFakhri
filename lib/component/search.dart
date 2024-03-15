import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hostonwer/theme.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
    child: Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: const Color(0xFFE8E8E8)),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                // Ganti bagian ini dengan TextField
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari kemeja, kaos, & aksesoris',
                      hintStyle: regular14.copyWith(color: dark3),
                      border: InputBorder.none,
                    ),
                    // Tambahkan fungsi untuk menangani perubahan teks jika diperlukan
                    onChanged: (value) {
                      // Handle text changes
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: 35,
          height: 35,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                child: Transform.scale(
                  scale: 0.5,
                  child: Iconify(
                    Zondicons.search,
                    color: Color.fromARGB(255, 59, 55, 59),
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