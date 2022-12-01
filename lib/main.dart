import 'package:educational_world/Auth/Login_Screen.dart';
import 'package:educational_world/Auth/SignUp_Screen.dart';
import 'package:educational_world/Constans/PageViewBar.dart';
import 'package:educational_world/Developer/Courses.dart';
import 'package:educational_world/Developer/DeveloperBar.dart';
import 'package:educational_world/Developer/ReportPosts.dart';
import 'package:educational_world/STM/Local/MyLocal.dart';
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:educational_world/Screens/Comment.dart';
import 'package:educational_world/Screens/EditPost.dart';
import 'package:educational_world/Screens/EditProfile.dart';
import 'package:educational_world/Screens/Home.dart';
import 'package:educational_world/Screens/Show_Profile.dart';
import 'package:educational_world/Screens/image_view_screen.dart';
import 'package:educational_world/Screens/test/ICONSSS.dart';
import 'package:educational_world/Splach/first_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:educational_world/Screens/Search.dart';
import 'Auth/Welcom.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  //  SharedPreferences shatepref = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     MyLocalController controller= Get.put(MyLocalController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyLocal(),
      locale: Get.deviceLocale,
      theme: Themes.customLightTheme,
      builder: EasyLoading.init(),
       // routes: {
       //   '/login' : (c) => LoginScreen(),
       //   '/sign' : (c)=>SignUpScreen(),
       //   '/home' : (c)=>HomeScreen(),
       //   '/image_view': (c)=> ImageViewScreen()
       // },
         initialRoute: '/',
        // getPages: [
        //   GetPage(name: '/register', page: ()=>SignUpScreen()),
        //   GetPage(name: '/login', page: ()=>LoginScreen()),
        //   GetPage(name: '/home', page: ()=>HomeScreen()),
        // ],
       onGenerateRoute: (settings)
        {
       switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => WelcomeScreen());
         case '/courses':
           return MaterialPageRoute(builder: (context) => CoursesPage());
         case '/report_post':
           return MaterialPageRoute(builder: (context) => ReportPosts());
         case '/developer':
           return MaterialPageRoute(builder: (context) => DeveloperPage());
         case '/comment':
           return MaterialPageRoute(builder: (context) => CommentScreen());
       //  case '/edit_post':
          // return MaterialPageRoute(builder: (context) => EditPostScreen());
         case '/edit_profile':
           return MaterialPageRoute(builder: (context) => EditProfileScreen());
         case '/show_profile':
           return MaterialPageRoute(builder: (context) => ShowProfileScreen());
         case '/login':
           return MaterialPageRoute(builder: (context) => LoginScreen());
         case '/sign':
          return MaterialPageRoute(builder: (context) => SignUpScreen());
        case '/home':

         return MaterialPageRoute(builder: (context) => HomePage());
         case '/Search':
           return MaterialPageRoute(builder: (context) => SearchScreen());
         case '/image_view':
           return MaterialPageRoute(
               builder: (context) =>
                  ImageViewScreen(
                    imagePath: settings.arguments as String,
                   ));
        default:
           return MaterialPageRoute(builder: (context) => WelcomeScreen());
      }
    }
     );
  }
}
class Themes{
  static ThemeData customDarkTheme =ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.black),
  );
  static ThemeData customLightTheme =ThemeData.light().copyWith();
}