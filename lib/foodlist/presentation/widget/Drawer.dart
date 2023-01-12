import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/model/User.dart';
import 'package:food/authenticate/presentation/Profile.dart';
import 'package:food/authenticate/presentation/WelcomePage.dart';
import 'package:food/foodlist/presentation/widget/CustomFloatingButton.dart';

import '../../../authenticate/bloc/AuthBloc.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key, required this.userProfile}) : super(key: key);
  User? userProfile;

  void _editProfile(BuildContext context, User userProfile) async {
    final newProfile = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile(profile: userProfile)),
    );
    context.read<AuthBloc>().emit(AuthStateProfileUpdatedSuccess(newProfile: newProfile));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // autogroupvsqbgQ1 (W75Yzph1DMeGS7BRfHvsqb)
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.fromLTRB(0, 0, 42, 0),
        width: 156.08,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupkbwhD93 (W75Z8V8uKaF5269SbMKbWh)
              padding: EdgeInsets.fromLTRB(2.08, 0, 2.08, 44.5),
              width: double.infinity,
              child: ProfileSection(userProfile: userProfile),
            ),
            Container(
              // group18139nE5 (814:6585)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup7toovr5 (W75ZLyn5tQXU21wP4y7Too)
                    padding: EdgeInsets.fromLTRB(0.96, 0, 0.96, 35),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group18133fHs (814:6586)
                          margin: EdgeInsets.fromLTRB(0, 0, 52.04, 0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  // iconlybulkdocumentbhK (814:7172)
                                  margin: EdgeInsets.fromLTRB(0, 0.42, 16.88, 0),
                                  width: 17.25,
                                  height: 19.17,
                                  child: Icon(Icons.list_alt, color: Colors.grey)),
                              Text(
                                // myordersiG9 (814:6587)
                                'My Orders',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (state is AuthStateProfileUpdatedSuccess) {
                              userProfile = state.newProfile;
                            }
                            return InkWell(
                              onTap: () {
                                _editProfile(context, userProfile!);
                              },
                              child: Container(
                                // group181312Xj (814:6589)
                                margin: EdgeInsets.fromLTRB(0, 0, 53.04, 0),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        // iconlybulkprofileZXf (814:7168)
                                        margin: EdgeInsets.fromLTRB(0, 0.42, 16.88, 0),
                                        width: 17.25,
                                        height: 19.17,
                                        child: Icon(Icons.portrait, color: Colors.grey)),
                                    Text(
                                      // myprofile5F7 (814:6590)
                                      'My Profile',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          // group18130cVw (814:6592)
                          margin: EdgeInsets.fromLTRB(1.92, 0, 9.04, 0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  // iconlybulklocationxZo (814:7162)
                                  margin: EdgeInsets.fromLTRB(0, 0.42, 18.79, 0),
                                  width: 13.42,
                                  height: 19.17,
                                  child: Icon(Icons.delivery_dining_sharp, color: Colors.grey)),
                              Text(
                                // deliveryaddressH6H (814:6593)
                                'Delivery Address',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group181291ny (814:6595)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            // iconlybulkwalletxy7 (814:7155)
                            margin: EdgeInsets.fromLTRB(0, 0, 15.92, 1),
                            width: 19.17,
                            height: 17.25,
                            child: Icon(Icons.payment, color: Colors.grey)),
                        Text(
                          // paymentmethodsrob (814:6596)
                          'Payment Methods',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.2575,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupwuvh1Ah (W75Zb4CxqxVqHnh25vWuvh)
                    padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group18128wKF (814:6598)
                          margin: EdgeInsets.fromLTRB(0, 0, 48, 35),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  // iconlybulkmessage5gM (814:7151)
                                  margin: EdgeInsets.fromLTRB(0, 0, 15.92, 1),
                                  width: 19.17,
                                  height: 17.25,
                                  child: Icon(Icons.mail, color: Colors.grey)),
                              Text(
                                // contactusbeh (814:6599)
                                'Contact Us',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group181278uX (814:6601)
                          margin: EdgeInsets.fromLTRB(0.48, 0, 66, 33),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  // iconlybulksettingUiV (814:7147)
                                  margin: EdgeInsets.fromLTRB(0, 0.42, 16.4, 0),
                                  width: 18.21,
                                  height: 19.17,
                                  child: Icon(Icons.settings, color: Colors.grey)),
                              Text(
                                // settingsPaZ (814:6602)
                                'Settings',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group18132Kz1 (814:6604)
                          margin: EdgeInsets.fromLTRB(0.08, 0, 33, 0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  // iconlybulkhelps4gh (814:7142)
                                  margin: EdgeInsets.fromLTRB(0, 0, 15.83, 0.83),
                                  width: 19.17,
                                  height: 19.17,
                                  child: Icon(Icons.help, color: Colors.grey)),
                              Text(
                                // helpsfaqs9i9 (814:6605)
                                'Helps & FAQs',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: CustomFloatingButtonExtend(
                              child: Row(
                                children: [
                                  Icon(Icons.power_settings_new_outlined),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Logout"),
                                ],
                              ),
                              backgroundColor: Colors.redAccent,
                              onPressed: () async {
                                final storage = new FlutterSecureStorage();
                                await storage.delete(key: "login_cookie");
                                Navigator.of(context)
                                    .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => WelcomePage()), (Route<dynamic> route) => false);
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  ProfileSection({
    Key? key,
    required this.userProfile,
  }) : super(key: key);

  User? userProfile;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (BuildContext context, state) {
        if (state is AuthStateProfileUpdatedSuccess) {
          userProfile = state.newProfile;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // maskgroupx6d (814:6610)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
              width: 90,
              height: 90,
              child: Image.asset(
                "assets/avatar.png",
                width: 90,
                height: 90,
              ),
            ),
            Container(
              // group18062UKs (814:6607)
              width: double.infinity,
              height: 41,
              child: Stack(
                children: [
                  Positioned(
                    // farionwickE49 (814:6608)
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        // width: 100,
                        // height: 26,
                        child: Text(
                          '${userProfile?.first_name} ${userProfile?.last_name}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.2575,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // farionwickgmailcomW1f (814:6609)
                    left: 0,
                    top: 23,
                    child: Align(
                      child: SizedBox(
                        width: 135,
                        height: 18,
                        child: Text(
                          '${userProfile?.email}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.2575,
                            color: Color(0xff9ea1b1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
