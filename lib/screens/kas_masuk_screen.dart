import 'package:flutter/material.dart';
import 'package:kas_personal/models/kas.dart';
import 'package:kas_personal/widgets/kas_item.dart';

class KasMasukScreen extends StatefulWidget {
  const KasMasukScreen({super.key});

  @override
  State<KasMasukScreen> createState() => _KasMasukScreenState();
}

class _KasMasukScreenState extends State<KasMasukScreen> {
 var items = <Kas>[
  Kas.masuk(
    keterangan: 'dikasih bunda', nominal: 20000, dateTime: DateTime.now()),
  Kas.masuk(keterangan: 'dapet dari nenek', nominal: 50000, dateTime: DateTime.now()),
  Kas.masuk(keterangan: 'dikasih temen', nominal: 5000, dateTime: DateTime.now()),
 ];
  
  void baru() async {
    await showDialog(
      context: context, 
      builder: (context){
      return const Dialog(
          child: BaruDialog(onSimpan: tambah),
      );
     },
   );
  }

  void hapus(Kas kas) {
    setState((){
      items.remove(kas);
    });
  }

  void t



  void onItemTap(Kas kas) {}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Kas Masuk'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: baru,
          child: const Icon(Icons.add),
          ),
          body: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (context, index) => Divider(
              height: 0,
              color: Colors.grey.shade200,
            ),
            itemBuilder: (context, index) {
              var kas = items [index];
              return KasItem(
                kas: kas,
                onTap: () => onItemTap(kas),
              );
            },
          ),
      );
    }
  }

  class BaruDialog extends StatefulWidget {
    const BaruDialog ({super.key});

    @override
    State<BaruDialog> createState() => _BaruDialogState();
  }

  class _BaruDialogState extends State<BaruDialog> {
    final nominalController = TextEditingController(text: '');
    final keteranganController = TextEditingController(text: '');

    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            const Text(
              'Buat Kas Masuk',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nominalController,
              decoration: const InputDecoration(
                labelText: 'Nominal',
                filled: true,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: keteranganController,
              decoration: const InputDecoration(
                labelText: 'Keterangan',
                filled: true,
                border: OutlineInputBorder(), 
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {},
               child: const Text('simpan'),
               ),
            ),
           ],
          ),
     );
  }
}