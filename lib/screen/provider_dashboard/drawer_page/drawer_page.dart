
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:musaeid/helper/utils/styled_text.dart';
import 'package:sizer/sizer.dart';
class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<String>data=['profile','orders','history','wallet','review'];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color:Pallete.primaryColor
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'change_user'.tr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          //Container()
          Column(
            children: List.generate(5, (index){
              return Card(
                elevation: 5,
                child: ListTile(
                  //leading: Icon(Icons.account_circle),
                  title: StyledText(text: data[index].tr,color: Pallete.primaryColor,),
                  onTap: () {
                    if(index==1){
                      context.push('/BookingList');
                    }else if(index==2){
                      context.push('/AllBookingListStatus');
                    }
                    else if(index==4){
                      context.push('/Reviews');
                    }
                    else if(index==3){
                      context.push('/WalletScreen');
                    }
                    else if(index==0){
                      context.push('/StartServicesScreen');
                    }
                    // Navigate to profile screen
                  },
                ),
              );
            })

          ),



        ],
      ),
    );
  }
}
