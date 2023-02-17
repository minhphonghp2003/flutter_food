import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food/foodlist/bloc/FoodBloc.dart';
import 'package:food/foodlist/bloc/FoodEvent.dart';
import 'package:food/foodlist/bloc/FoodState.dart';
import 'package:food/foodlist/model/Food.dart';
import 'package:food/foodlist/model/Review.dart';

class AddReview extends StatelessWidget {
  AddReview({Key? key, required this.food}) : super(key: key);
  Food food;
  TextEditingController rating = new TextEditingController(text: "3");
  TextEditingController content = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: BlocProvider(
        create: (BuildContext context) => FoodBloc(),
        child: Container(
          // reviewresturentEHq (814:3841)
          padding: EdgeInsets.fromLTRB(26, 37, 27, 33),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: ListView(
            children: [
              Container(
                  // group18071pmq (814:3876)
                  margin: EdgeInsets.fromLTRB(0, 0, 283, 44),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  )),
              Container(
                // group17970HQX (814:3870)
                margin: EdgeInsets.fromLTRB(121.61, 0, 121, 64.61),
                padding: EdgeInsets.fromLTRB(11.22, 10.67, 11.47, 12.02),
                width: double.infinity,

                child: Center(
                  // maskgroup9Sj (814:3873)
                  child: SizedBox(
                    child: Image.network(
                      food.image,
                    ),
                  ),
                ),
              ),
              BlocConsumer<FoodBloc, FoodState>(listener: (context, state) {
                if (state is FoodStateReviewAddedSuccess) {
                  Navigator.pop(context);
                }
              }, builder: (context, state) {
                if (state is FoodStateReviewAddedFailure) {
                  return Center(
                      child: Text(
                    "Please fill in all the fields",
                    style: TextStyle(color: Colors.redAccent),
                  ));
                }
                return Container();
              }),
              Container(
                // howwasyourlastorderfrompizzahu (814:3842)
                margin: EdgeInsets.fromLTRB(1, 0, 0, 27),
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
                child: Text(
                  'How was your last order with ${food.name} ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w300,
                    height: 1.2000000246,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Center(
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (value) {
                    rating.text = value.toInt().toString();
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: name,
                decoration: const InputDecoration(labelText: "Your name is"),
              ),
              TextField(
                controller: email,
                decoration: const InputDecoration(labelText: "Your email address (this won't be showed)"),
              ),
              TextField(
                controller: content,
                decoration: const InputDecoration(labelText: "Write your comment"),
              ),
              Container(
                // line60yGf (814:3869)
                margin: EdgeInsets.fromLTRB(1, 0, 0, 90),
                width: 321,
                height: 1,
                decoration: BoxDecoration(
                  color: Color(0x33000000),
                ),
              ),
              Container(
                // group175325ab (814:3863)
                margin: EdgeInsets.fromLTRB(39, 0, 32, 10),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.5),
                ),
                child: Container(
                  // group17531NZh (814:3864)
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.5),
                  ),
                  child: Container(
                      // group175807GP (814:3865)
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfffe724c),
                        borderRadius: BorderRadius.circular(28.5),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40fe724c),
                            offset: Offset(0, 20),
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Builder(builder: (context) {
                        return FloatingActionButton.extended(
                          onPressed: () {
                            Review review =
                                Review(rating: int.parse(rating.text), name: name.text, content: content.text, productId: food.id, email: email.text);
                            context.read<FoodBloc>().add(FoodReviewAdded(review: review));
                          },
                          label: Text("Submit"),
                          backgroundColor: Colors.redAccent,
                        );
                      })),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
