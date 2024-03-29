import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widget/BorderContiner.dart';
import '../widget/inputtitle.dart';
import '../widget/screenTitle.dart';
import 'VechicleInfo.dart';

class CustomerInformation extends StatefulWidget {
  const CustomerInformation({Key? key}) : super(key: key);

  @override
  State<CustomerInformation> createState() => _CustomerInformationState();
}

class _CustomerInformationState extends State<CustomerInformation> {
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
                title: 'Customer Information',
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: borderContiner(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15.0, right: 15),
                    child: Column(
                      children: [
                        // first name input section start

                        InputTitle(
                          title: 'First Name',
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

                        //first name input end

                        //last name input start

                        InputTitle(
                          title: 'Last Name',
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

                        //last name input end

                        //email input start

                        InputTitle(
                          title: 'Email',
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

                        //email input end

                        //phone input start

                        InputTitle(
                          title: 'Phone',
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

                        //phone input end
                      ],
                    ),
                  ),
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
                          Get.to(VechicleInfo());
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
