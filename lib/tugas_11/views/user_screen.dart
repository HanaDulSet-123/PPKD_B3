import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_10/textform.dart';
import 'package:ppkd_b_3/tugas_11/database/model/db_helpertugas.dart';
import 'package:ppkd_b_3/tugas_11/database/model/menu.dart';

class MenuMakanan extends StatefulWidget {
  const MenuMakanan({super.key});

  @override
  State<MenuMakanan> createState() => _MenuMakananState();
}

class _MenuMakananState extends State<MenuMakanan> {
  List<MenuModel> menu = [];

  @override
  void initState() {
    super.initState();
    getMenu();
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController pesananController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  Future<void> getMenu() async {
    final dataMenu = await DbHelper.getAllMenus();
    print(dataMenu);
    setState(() {
      menu = dataMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormConst(hintText: "Nama", controller: nameController),
            TextFormConst(hintText: "Pesanan", controller: pesananController),
            TextFormConst(hintText: "City", controller: cityController),
            ElevatedButton(
              onPressed: () async {
                final pesanan = pesananController.text.trim();
                final name = nameController.text.trim();
                final city = cityController.text.trim();

                if (pesanan.isEmpty || name.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Nama, Pesanan, dan Kota tidak boleh Kosong",
                      ),
                    ),
                  );
                  return;
                }
                final user = MenuModel(
                  jumlah_pesanan: pesanan,
                  name: name,
                  city: city,
                );
                await DbHelper.tambahMenu(user);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pesanan Berhasil diterima")),
                  );
                });
                getMenu();
                setState(() {});
              },
              child: Text("Simpan Data"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: menu.length,
              itemBuilder: (BuildContext context, int index) {
                final dataMenu = menu[index];
                return ListTile(
                  title: Text(dataMenu.name),
                  subtitle: Text(dataMenu.jumlah_pesanan.toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => AlertDialog(
                                  title: Text('Edit Data'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormConst(
                                        controller:
                                            nameController
                                              ..text = dataMenu.name,
                                        hintText: 'Nama',
                                      ),
                                      SizedBox(height: 12),
                                      TextFormConst(
                                        controller:
                                            nameController
                                              ..text = dataMenu.name,
                                        hintText: 'Nama',
                                      ),
                                      SizedBox(height: 12),

                                      TextFormConst(
                                        controller:
                                            pesananController
                                              ..text = dataMenu.jumlah_pesanan,
                                        hintText: 'Jumlah Pesanan',
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        final MenuMakanan = MenuModel(
                                          id: dataMenu.id!,
                                          name: nameController.text,
                                          jumlah_pesanan:
                                              pesananController.text,
                                          city: cityController.text.trim(),
                                        );
                                        DbHelper.updateMenu(MenuMakanan);
                                        getMenu();
                                        Navigator.pop(context);
                                      },
                                      child: Text('Simpan'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('Batal'),
                                    ),
                                  ],
                                ),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () async {
                          await DbHelper.deleteMenu(dataMenu.id!);
                          await getMenu();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
