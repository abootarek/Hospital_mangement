import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/featuers/manger/auth/profile/ui/widgets/image_edit.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import 'widgets/details_of_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkheavenly,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: ColorsApp.white),
        backgroundColor: ColorsApp.darkheavenly,
        elevation: 0,
        title: Text('My Profile', style: TextStyles.font17white),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const ImageEdit(),
              Positioned(
                left: 50,
                top: 60,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: ColorsApp.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mode_edit_outline_outlined,
                      color: ColorsApp.lightblack,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          virticalspace(20),
          Text('Mohamed Tarek Hosniiiiiiii', style: TextStyles.font20white),
          virticalspace(20),
          const Expanded(
            child: DetailsOfProfile(),
          ),
        ],
      ),
    );
  }
}
