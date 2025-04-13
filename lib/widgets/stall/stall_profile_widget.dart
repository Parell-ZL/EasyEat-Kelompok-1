import 'package:flutter/material.dart';

class StallProfile extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final String id;
  const StallProfile(
      {super.key,
      required this.name,
      required this.description,
      required this.image,
      required this.id});

  @override
  Widget build(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min, // Hindari mengambil ruang berlebihan
    children: [
      // Gambar (Tetap 120x120)
      ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 130, minHeight: 130, maxWidth: 130, minWidth: 130),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
      ),
      
      const SizedBox(width: 15),
      
      // Kolom Teks (Flexible)
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Hindari ekspansi berlebihan
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              maxLines: 2, // Batasi jumlah baris
              overflow: TextOverflow.ellipsis, // ... jika teks terlalu panjang
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 246, 1),
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Pickup di counter  ",
                    style: TextStyle(
                        fontFamily: 'SF-Pro',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.error_outline, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 10),
      // ID (Tetap di kanan)
      Text(
        id,
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            fontStyle: FontStyle.italic),
      ),
    ],
  );
}
}
