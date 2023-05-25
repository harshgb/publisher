import 'package:flutter/material.dart';
import 'package:publisher_test/utils/image_const.dart';
import 'package:publisher_test/utils/text_style_const.dart';
import 'package:publisher_test/utils/theme_manager.dart';
import 'package:publisher_test/view/like_animation.dart';

class PostDetailsScreen extends StatefulWidget {
  const PostDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  ThemeManager themeManager = ThemeManager();
  PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;
  bool like1 = false;
  bool like2 = false;
  bool like3 = false;
  List<String> data = [
    "#2023",
    "#TODAYISMONDAY",
    "#TOP",
    "#POPS!",
    "#WOW",
    "#ROW"
  ];
  List<String> imageSection = [
    ImageConst.networkImage,
    ImageConst.networkImage,
    ImageConst.networkImage,
    ImageConst.networkImage,
    ImageConst.networkImage,
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: themeManager.whiteColor,
      appBar: AppBar(
        backgroundColor: themeManager.whiteColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///--------------Back button------------

            Icon(
              Icons.arrow_back_ios_new_outlined,
              color: themeManager.lightestBlackColor,
              size: width * 0.05,
            ),

            ///--------------Title text------------

            Text(
              "자유톡",
              style: notoBold.copyWith(
                  fontSize: width * 0.05, color: themeManager.lightBlackColor),
            ),

            ///--------------Notification icon------------

            Container(
                width: width * 0.06,
                height: width * 0.06,
                child: Image.asset(ImageConst.bellIcon))
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ///--------------Profile photo------------

                    Container(
                        width: width * 0.09,
                        height: width * 0.09,
                        child: Image.asset(ImageConst.profileImage)),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ///--------------안녕 나 응애  text------------

                              Text(
                                "안녕 나 응애 ",
                                style: notoBold.copyWith(
                                    fontSize: width * 0.035,
                                    color: themeManager.lightBlackColor),
                              ),

                              ///--------------tick icon------------

                              Container(
                                height: width * 0.042,
                                width: width * 0.042,
                                margin: EdgeInsets.only(
                                    left: width * 0.00, right: width * 0.005),
                                decoration: BoxDecoration(
                                    color: themeManager.tealColor,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.check,
                                    color: themeManager.whiteColor,
                                    size: width * 0.032),
                              ),

                              ///--------------1일전 text------------

                              Text(
                                "1일전",
                                style: notoBold.copyWith(
                                    fontSize: width * 0.025,
                                    color: themeManager.lightGreyColor),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ///--------------165cm text------------

                              Text(
                                "165cm",
                                style: notoBold.copyWith(
                                    fontSize: width * 0.03,
                                    color: themeManager.lightGreyColor),
                              ),
                              Container(
                                height: width * 0.01,
                                width: width * 0.01,
                                margin: EdgeInsets.only(
                                    left: width * 0.01, right: width * 0.01),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: themeManager.lightGreyColor),
                              ),

                              ///--------------53 text------------

                              Text(
                                "53kg",
                                style: notoBold.copyWith(
                                    fontSize: width * 0.03,
                                    color: themeManager.lightGreyColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),

                    ///--------------팔로우 button------------

                    Container(
                      height: height * 0.035,
                      width: width * 0.155,
                      decoration: BoxDecoration(
                          color: themeManager.tealColor,
                          borderRadius: BorderRadius.circular(width * 0.1)),
                      alignment: Alignment.center,
                      child: Text(
                        "팔로우",
                        style: notoMedium.copyWith(
                            fontSize: width * 0.033,
                            color: themeManager.whiteColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              ///--------------Details text------------

              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Text(
                  "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                  style: notoBold.copyWith(
                      color: themeManager.lightBlackColor,
                      fontSize: width * 0.038),
                ),
              ),

              ///--------------Details text------------
              Container(
                margin: EdgeInsets.only(
                    top: height * 0.015,
                    bottom: height * 0.02,
                    left: width * 0.04,
                    right: width * 0.04),
                child: Text(
                  "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?",
                  style: notoMedium.copyWith(
                      color: themeManager.lightBlackColor,
                      fontSize: width * 0.033),
                ),
              ),

              ///--------------Details text------------
              Container(
                margin: EdgeInsets.only(
                    bottom: height * 0.02,
                    left: width * 0.04,
                    right: width * 0.04),
                child: Text(
                  "후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???",
                  style: notoMedium.copyWith(
                      color: themeManager.lightBlackColor,
                      fontSize: width * 0.033),
                ),
              ),

              ///--------------Details text------------
              Container(
                margin: EdgeInsets.only(
                    bottom: height * 0.02,
                    left: width * 0.04,
                    right: width * 0.04),
                child: Text(
                  "올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
                  style: notoMedium.copyWith(
                      color: themeManager.lightBlackColor,
                      fontSize: width * 0.033),
                ),
              ),

              ///-------------- # Details text------------
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: List.generate(
                    data.length,
                    (index) {
                      return Container(
                        margin: EdgeInsets.only(
                            right: width * 0.022, bottom: height * 0.015),
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.005,
                            horizontal: width * 0.033),
                        decoration: BoxDecoration(
                            color: themeManager.lightWhiteColor,
                            border: Border.all(
                                color: themeManager.lightestGreyColor),
                            borderRadius: BorderRadius.circular(width * 0.2)),
                        child: Text(
                          data[index],
                          style: robotoMedium.copyWith(
                              fontSize: width * 0.03,
                              color: themeManager.lightBlueColor),
                        ),
                      );
                    },
                  ),
                ),
              ),

              ///--------------Image Section------------
              Stack(
                children: [
                  Container(
                    height: height * 0.6,
                    margin: EdgeInsets.only(top: height * 0.01),
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          _activePage = value;
                        });
                      },
                      itemCount: imageSection.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: width,
                          color: themeManager.lightestGreyColor,
                          child: Image.network(
                            imageSection[index],
                            fit: BoxFit.fill,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                  child: CircularProgressIndicator(
                                color: themeManager.tealColor,
                              ));
                            },
                          ),
                        );
                      },
                    ),
                  ),

                  ///--------------Page indicator------------
                  Positioned(
                    bottom: height * 0.02,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          imageSection.length,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: InkWell(
                                  onTap: () {
                                    _pageController.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: CircleAvatar(
                                    radius: width * 0.01,
                                    backgroundColor: _activePage == index
                                        ? themeManager.whiteColor
                                        : themeManager.whiteColorOpacity,
                                  ),
                                ),
                              )),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: height * 0.015, bottom: height * 0.015),
                child: Row(
                  children: <Widget>[
                    ///--------------Like button------------
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.04, right: width * 0.01),
                      child: LikeAnimation(
                        isAnimating: like1,
                        smallLike: true,
                        child: GestureDetector(
                            child: like1 == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: height * 0.03,
                                  )
                                : Container(
                                    height: height * 0.03,
                                    width: height * 0.03,
                                    child: Image.asset(ImageConst.likeIcon)),
                            onTap: () {
                              setState(() {
                                like1 = !like1;
                              });
                            }),
                      ),
                    ),
                    Text(
                      "5",
                      style: robotoRegular.copyWith(
                          color: themeManager.lightestBlueColor,
                          fontSize: width * 0.033),
                    ),

                    ///--------------Comment button------------

                    Container(
                        margin: EdgeInsets.only(
                            left: width * 0.025, right: width * 0.01),
                        height: height * 0.028,
                        width: height * 0.028,
                        child: Image.asset(
                          ImageConst.commentIcon,
                          fit: BoxFit.fill,
                        )),
                    Text(
                      "5",
                      style: robotoRegular.copyWith(
                          color: themeManager.lightestBlueColor,
                          fontSize: width * 0.033),
                    ),

                    ///--------------Save button------------

                    Container(
                        margin: EdgeInsets.only(
                            left: width * 0.025, right: width * 0.04),
                        height: height * 0.025,
                        width: height * 0.025,
                        child: Image.asset(ImageConst.saveIcon)),

                    ///--------------menu button------------

                    GestureDetector(
                        child: Image.asset(
                          "assets/icons/menu_icon.png",
                          width: width * 0.032,
                        ),
                        onTap: () {}),
                  ],
                ),
              ),

              ///------------- divider ---------------///
              Container(
                height: height * 0.003,
                width: width,
                color: Colors.grey.withOpacity(0.2),
              ),

              Container(
                margin:
                    EdgeInsets.only(right: width * 0.04, top: height * 0.01),
                height: width * 0.04,
                width: width,
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    child: Image.asset(
                      "assets/icons/menu_icon.png",
                      width: width * 0.032,
                    ),
                    onTap: () {}),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  children: [
                    ///--------------Profile photo------------

                    Container(
                        width: width * 0.09,
                        height: width * 0.09,
                        child: Image.asset(ImageConst.profileImage)),

                    Container(
                      margin: EdgeInsets.only(left: width * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///--------------안녕 나 응애  text------------
                          Text(
                            "안녕 나 응애 ",
                            style: notoBold.copyWith(
                                fontSize: width * 0.035,
                                color: themeManager.lightBlackColor),
                          ),

                          ///--------------Chcek icon------------

                          Container(
                            height: width * 0.042,
                            width: width * 0.042,
                            margin: EdgeInsets.only(
                                left: width * 0.00, right: width * 0.005),
                            decoration: BoxDecoration(
                                color: themeManager.tealColor,
                                shape: BoxShape.circle),
                            child: Icon(Icons.check,
                                color: themeManager.whiteColor,
                                size: width * 0.032),
                          ),

                          ///--------------1일전 text------------

                          Text(
                            "1일전",
                            style: notoBold.copyWith(
                                fontSize: width * 0.025,
                                color: themeManager.lightGreyColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                    left: width * 0.15,
                    right: width * 0.065,
                    top: height * 0.005),

                ///--------------Comment message------------

                child: Text(
                  "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
                  // softWrap: true,

                  style: notoRegular.copyWith(
                      color: themeManager.lightestBlackColor,
                      fontSize: width * 0.033),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: width * 0.15,
                    right: width * 0.065,
                    top: height * 0.005),
                child: Row(
                  children: <Widget>[
                    ///--------------Like button------------
                    Container(
                      margin: EdgeInsets.only(right: width * 0.01),
                      child: LikeAnimation(
                        isAnimating: like2,
                        smallLike: true,
                        child: GestureDetector(
                            child: like2 == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: height * 0.025,
                                  )
                                : Container(
                                    height: height * 0.025,
                                    width: height * 0.025,
                                    child: Image.asset(ImageConst.likeIcon)),
                            onTap: () {
                              setState(() {
                                like2 = !like2;
                              });
                            }),
                      ),
                    ),
                    Text(
                      "5",
                      style: robotoRegular.copyWith(
                          color: themeManager.lightestBlueColor,
                          fontSize: width * 0.03),
                    ),

                    ///--------------Comment icon------------
                    Container(
                        margin: EdgeInsets.only(
                            left: width * 0.03, right: width * 0.01),
                        height: height * 0.023,
                        width: height * 0.023,
                        child: Image.asset(
                          ImageConst.commentIcon,
                          fit: BoxFit.fill,
                        )),
                    Text(
                      "5",
                      style: robotoRegular.copyWith(
                          color: themeManager.lightestBlueColor,
                          fontSize: width * 0.03),
                    ),
                  ],
                ),
              ),

              ///--------------menu icon-----------
              Container(
                margin: EdgeInsets.only(right: width * 0.04),
                height: width * 0.04,
                width: width,
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    child: Image.asset(
                      "assets/icons/menu_icon.png",
                      width: width * 0.032,
                    ),
                    onTap: () {}),
              ),

              Container(
                margin: EdgeInsets.only(left: width * 0.147),
                child: Row(
                  children: [
                    ///--------------profile image------------

                    Container(
                        width: width * 0.09,
                        height: width * 0.09,
                        child: Image.asset(ImageConst.profileImage)),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///--------------ㅇㅅㅇ Text------------
                          Text(
                            "ㅇㅅㅇ",
                            style: notoBold.copyWith(
                                fontSize: width * 0.035,
                                color: themeManager.lightBlackColor),
                          ),

                          ///--------------1일전 text------------
                          Container(
                            margin: EdgeInsets.only(left: width * 0.02),
                            child: Text(
                              "1일전",
                              style: notoBold.copyWith(
                                  fontSize: width * 0.025,
                                  color: themeManager.lightGreyColor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///--------------Comment reply text------------
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(left: width * 0.0, right: width * 0.05),
                // color: Colors.black12,
                child: Text(
                  "어머 제가 있던 테이블이 제일 반응이 좋았나보네요",
                  softWrap: true,
                  style: notoRegular.copyWith(
                      color: themeManager.lightestBlackColor,
                      fontSize: width * 0.033),
                ),
              ),

              ///--------------Like button------------

              Container(
                margin: EdgeInsets.only(
                    left: width * 0.28,
                    right: width * 0.065,
                    top: height * 0.005),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: width * 0.01),
                      child: LikeAnimation(
                        isAnimating: like3,
                        smallLike: true,
                        child: GestureDetector(
                            child: like3 == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: height * 0.025,
                                  )
                                : Container(
                                    height: height * 0.025,
                                    width: height * 0.025,
                                    child: Image.asset(ImageConst.likeIcon)),
                            onTap: () {
                              setState(() {
                                like3 = !like3;
                              });
                            }),
                      ),
                    ),
                    Text(
                      "5",
                      style: robotoRegular.copyWith(
                          color: themeManager.lightestBlueColor,
                          fontSize: width * 0.03),
                    ),
                  ],
                ),
              ),

              ///------------- divider ---------------///
              Container(
                height: height * 0.002,
                width: width,
                margin: EdgeInsets.only(top: height * 0.03),
                color: Colors.grey.withOpacity(0.2),
              ),

              ///--------------Text Field------------

              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "댓글을 남겨주세요.",
                      hintStyle: notoRegular.copyWith(
                          fontSize: width * 0.035, color: Color(0xff919EB6)),
                      prefixIcon: Container(
                          padding: EdgeInsets.all(width * 0.035),
                          height: width * 0.01,
                          width: width * 0.01,
                          child: Image.asset(ImageConst.imageMode)),
                      suffixIcon: Container(
                        alignment: Alignment.center,
                        width: width * 0.05,
                        child: Text(
                          "등록",
                          style: notoRegular.copyWith(
                              fontSize: width * 0.035,
                              color: Color(0xff919EB6)),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
