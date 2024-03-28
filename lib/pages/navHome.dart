import 'package:flutter/material.dart';

class NavHome extends StatefulWidget {
  const NavHome({super.key});

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),

        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Text('image'),
                ),
              ],
            ),
          SizedBox(height: 25,),
          Text(
              'Hi, Dennis',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
              'Welcome back',
          ),

          SizedBox(height: 25,),

          Container(
            height: 180,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  spreadRadius: 0.5,
                  blurRadius: 7,
                ),
              ]
            ),

            child: Column(
              children: [
                SizedBox(height: 10,),
                Text(
                  'Available Balance',
                ),
                SizedBox(height: 10,),
                Text(
                  'Ksh 64,789.00',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_downward_rounded),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Text(
                                    'Income',
                                  ),
                                  Text(
                                    'Ksh 98,786',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_upward_rounded),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Text(
                                    'Expense',
                                  ),
                                  Text(
                                    'Ksh 20,476',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),
          //bottom container with latest transactions
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Column(
             children: [
               //last recent transactions
               Row(
                 children: [
                   Text(
                     'Last Transactions',
                     style: TextStyle(
                       fontSize: 20,
                     ),
                   ),
                 ],
               ),

               SizedBox(height: 20,),
               Row(
                 children: [
                   CircleAvatar(
                     child: Icon(Icons.screen_share_outlined),
                     radius: 30,
                   ),
                   SizedBox(width: 20,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Netflix',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w600,
                         ),
                       ),

                       Text(
                         '22 NOV, 2024 | 10:45am',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ],
                   ),

                   //sizebox push to end
                   SizedBox(width: 70,),

                   Text(
                     '- KSH 700',
                     style: TextStyle(
                       color: Colors.red,
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 20,),
               Row(
                 children: [
                   CircleAvatar(
                     child: Icon(Icons.screen_share_outlined),
                     radius: 30,
                   ),
                   SizedBox(width: 20,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Figma',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w600,
                         ),
                       ),

                       Text(
                         '22 NOV, 2024 | 10:45am',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ],
                   ),

                   //sizebox push to end
                   SizedBox(width: 70,),

                   Text(
                     '+ KSH 3,700',
                     style: TextStyle(
                       color: Colors.green,
                     ),
                   ),
                 ],
               ),
             ],
           ),
         ),
        ],
      ),
    );
  }
}

