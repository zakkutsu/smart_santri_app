import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info Pembayaran"),
        backgroundColor: const Color(0xFF1B5E20),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Kartu Tagihan
          Card(
            color: Colors.orange[50],
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.orange.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Tagihan Bulan Ini",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Rp 350.000",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const Text(
                    "Jatuh tempo: 10 Des 2025",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.payment),
                      label: const Text("Bayar Sekarang"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Riwayat Transaksi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 10),
          // List Riwayat
          _itemRiwayat("SPP November 2025", "05 Nov 2025", "Rp 350.000", true),
          _itemRiwayat("Infaq Pembangunan", "01 Nov 2025", "Rp 100.000", true),
          _itemRiwayat("SPP Oktober 2025", "05 Okt 2025", "Rp 350.000", true),
        ],
      ),
    );
  }

  Widget _itemRiwayat(String judul, String tgl, String nominal, bool lunas) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(
          Icons.check_circle,
          color: lunas ? Colors.green : Colors.grey,
        ),
        title: Text(judul, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(tgl),
        trailing: Text(
          nominal,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
