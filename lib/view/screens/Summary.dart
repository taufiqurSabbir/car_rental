import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../widget/BorderContiner.dart';
import '../widget/screenTitle.dart';
import '../widget/summary_item.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                //Reservation section start
          
                SizedBox(
                  height: 10.h,
                ),
                ScreenTitle(
                  title: 'Reservation Details',
                ),
                SizedBox(
                  height: 10.h,
                ),
                borderContiner(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      summaryItem(
                        title: 'Reservation ID',
                        value: '101',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      summaryItem(
                        title: 'Pickup Date',
                        value: '11:00 Am, 21March 2024',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      summaryItem(
                        title: 'Dropoff Date',
                        value: '11:00 Am, 21March 2024',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
                //Reservation section end
          
                //customer section start
          
                SizedBox(
                  height: 10.h,
                ),
                ScreenTitle(
                  title: 'Customer Information',
                ),
                SizedBox(
                  height: 10.h,
                ),
                borderContiner(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      summaryItem(
                        title: 'First Name',
                        value: 'Taufiqur',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      summaryItem(
                        title: 'Last name',
                        value: 'Rahman',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      summaryItem(
                        title: 'Email',
                        value: 'taufiqur2511@gmail.com',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      summaryItem(
                        title: 'phone',
                        value: '01792945445',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
          
          
                //customer section end
          
          
          
                //vehicle section start
          
                SizedBox(
                  height: 10.h,
                ),
                ScreenTitle(
                  title: 'Vehicle Information',
                ),
                SizedBox(
                  height: 10.h,
                ),
                borderContiner(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      summaryItem(
                        title: 'Vehicle Type',
                        value: 'Sedan',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      summaryItem(
                        title: 'Vehicle Model',
                        value: 'Toyota Camry',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
                //vehicle section end
          
          
                //Charge Summary
          
                SizedBox(
                  height: 10.h,
                ),

                ScreenTitle(
                  title: 'Charges Summary',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primarycolor.withOpacity(0.1),
                    border: Border.all(width: 1,color: AppColors.primarycolor),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 15),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h,),
                        Row(
                          children: [
                            SizedBox(width: 10.w,),
                            Text('Charge',style: TextStyle(fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.w,),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          height: 2.h,
                          width: 100.sw,
                          color: AppColors.primarycolor.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        summaryItem(
                          title: 'Weekly (1 week)',
                          value: '\$250',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        summaryItem(
                          title: 'Daily (2 days)',
                          value: '\$140.00',
                        ),

                        SizedBox(
                          height: 15.h,
                        ),
                        summaryItem(
                          title: 'Collision Damage Waiver',
                          value: '\$9.00',
                        ),
                        SizedBox(
                          height: 7.h,
                        ),

                        Row(
                          children: [
                            SizedBox(width: 10.w,),
                            Text('Net Total',style: TextStyle(fontWeight: FontWeight.bold),),
                            Spacer(),
                            Text('\$399',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.w,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20.h,),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
