import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kas_personal/widgets/creator_info.dart';
import 'package:kas_personal/widgets/custom_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onKasMasukTap () => context.goNamed('kas_masuk');

  void onInfoTap() async {
    await showDialog(
      context: context,
      builder: (context) {
    return const Dialog(
      child: CreatorInfo(),
    );
  },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kas Personal App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: CustomIconButton(backgroundColor: Colors.amber, icon: Icons.credit_card, text: 'Kas Masuk', onTap: onKasMasukTap,
                  ),
                ),
                const SizedBox(width: 20,),
                Flexible(
                  fit: FlexFit.tight,
                  child: CustomIconButton(backgroundColor: Colors.amber, icon: Icons.receipt, text: 'Kas Keluar', onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomIconButton(
              backgroundColor: Colors.amber,
              icon: Icons.info,
              text: 'Tentang pembuat',
              onTap: onInfoTap,
            ),
          ],
        ),
      ),
    );
  }
}