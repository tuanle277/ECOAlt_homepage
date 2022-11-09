import 'package:flutter/material.dart';

import '/widgets/couponCell.dart';

class CouponScreen extends StatelessWidget {
  final List<CouponCell> _listOfCoupon;

  const CouponScreen(this._listOfCoupon);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: mediaQuery.size.height * 0.1,
          width: mediaQuery.size.width,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15),
          child: const Text('E-book coupons', style: TextStyle(fontSize: 38)),
        ),
        Container(
          color: Colors.grey[300],
          height: mediaQuery.size.height * 0.8,
          width: mediaQuery.size.width,
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return _listOfCoupon[index];
                },
                itemCount: _listOfCoupon.length),
          ),
        ),
      ],
    );
  }
}
