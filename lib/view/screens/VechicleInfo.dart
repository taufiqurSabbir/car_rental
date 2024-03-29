import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widget/BorderContiner.dart';
import '../widget/inputtitle.dart';
import '../widget/screenTitle.dart';
import 'AdditionalCharge.dart';

class VechicleInfo extends StatefulWidget {
  const VechicleInfo({Key? key}) : super(key: key);

  @override
  State<VechicleInfo> createState() => _VechicleInfoState();
}

class _VechicleInfoState extends State<VechicleInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        toolbarHeight: 56, // Adjust the height as needed
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 18),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Back",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              ScreenTitle(
                title: 'Vehicle Information',
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    borderContiner(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 15.0, right: 15),
                        child: Column(
                          children: [
                            // Vehicle Type input section start

                            InputTitle(
                              title: 'Vehicle Type',
                              isrequried: true,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              height: 35.h,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    borderSide: BorderSide(
                                      color: AppColors.primarycolor,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                validator: (String? value) {
                                  if (value?.isEmpty ?? true) {
                                    return 'Enter your Reservation Id';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),

                            //Vehicle Type input end

                            //Vehicle Model input start

                            InputTitle(
                              title: 'Vehicle Model',
                              isrequried: true,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              height: 35.h,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search,color: AppColors.primarycolor,),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    borderSide: BorderSide(
                                      color: AppColors.primarycolor,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                validator: (String? value) {
                                  if (value?.isEmpty ?? true) {
                                    return 'Enter your Reservation Id';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),

                            //Vehicle Model input end
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h,),
                    //Car card start

                    borderContiner(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://t3.ftcdn.net/jpg/05/40/34/28/360_F_540342803_QwNUPFqwpa2eL27iW5E6WSuBf2OWAIeJ.jpg',
                                height: 130.h,
                                width: 200.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Toyota Camry',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      Icon(Icons.people,color: Colors.grey,),
                                      SizedBox(width: 5.w,),
                                      Text('4 Seat',style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                  SizedBox(height: 5.h,),
                                  Row(
                                    children: [
                                      Icon(Icons.shopping_bag_rounded,color: Colors.grey,),
                                      SizedBox(width: 5.w,),
                                      Text('4 Seat',style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            SizedBox(width: 15.w,),
                              Text('\$15 / Hour',style: TextStyle(color: Colors.grey),),
                              Spacer(),
                              Text('\$70 / Day',style: TextStyle(color: Colors.grey),),
                              Spacer(),
                              Text('\$250 / Week',style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 15.w,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 100.h,
              ),
              Center(
                child: SizedBox(
                    height: 30.h,
                    width: 150.w,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(AdditionalCharge());
                        },
                        child: Text('Next'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
