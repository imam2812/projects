import 'dart:convert';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'PRIME 4.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool isSwitched = false;

  static const List<String> list = <String>['Male', 'Female', 'Transgender'];

  String dropdownValue = list.first;

  static const List<String>

  list1 = <String>['Select your city',
    'Ariyalur','Chengalpattu','Chennai','Coimbatore','Cuddalore',
    'Dharmapuri','Dindigul','Erode','Kallakurichi','Kancheepuram',
    'Karur','Krishnagiri','Madurai','Mayiladuthurai','Nagapattinam',
    'Nagercoil','Namakkal','Perambalur','Pudukkottai','Ramanathapuram',
    'Ranipet','Salem','Sivagangai','Tenkasi','Thanjavur',
    'Theni','Thiruvallur','Thiruvarur','Thoothukudi','Tiruchirappalli',
    'Tirunelveli','Tirupathur','Tiruppur','Tiruvannamalai','Ooty',
    'Vellore','Viluppuram','Virudhunagar','Outside of Tamilnadu'];

  String dropdownValue1 = list1.first;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  Uint8List? _image;

  void initState() {
    super.initState();
    loadImageFromPreferences();  }

  Future<void> loadImageFromPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? base64String = prefs.getString('saved_image');
    if (base64String != null) {
      final Uint8List bytes = base64Decode(base64String);
      setState(() {
        _image = bytes;
      });
    }
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet( 
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/10,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      getImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.image,size: 50,color: Colors.blueAccent),
                          Text("Files",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      getImageFromCamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.camera_alt, size: 50,color: Colors.blueAccent),
                          Text( "Camera",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> getImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage
      (source: ImageSource.gallery);
    if (pickedFile != null) {
      final Uint8List imageBytes = await pickedFile.readAsBytes();
      await saveImageToPreferences(imageBytes); // Save image to SharedPreferences
      setState(() {
        _image = imageBytes;
      });
    }
  }


  Future<void> getImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final Uint8List imageBytes = await pickedFile.readAsBytes();
      await saveImageToPreferences(imageBytes); // Save image to SharedPreferences
      setState(() {
        _image = imageBytes;
      });
    }
  }

  Future<void> saveImageToPreferences(Uint8List imageBytes) async {
    final String base64String = base64Encode(imageBytes);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_image', base64String);
  }

  Widget build(BuildContext context) {

    return Scaffold(
     //  backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: Colors.blueAccent,),onPressed: () {
          setState(() {
          Navigator.
          push(context,
            MaterialPageRoute(builder: (context) => ott4()),);
        });
          },),
        title: Text(" My Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:25.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                Navigator.
                push(context,
                  MaterialPageRoute(builder: (context) =>
                      ott4()),);
              });
            }, child: Text("Save")),
          ),
        ],
      ),
      body:
      Center(
        child:
        Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: SingleChildScrollView(
            child: SafeArea(

              child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child:
                    Stack(
                      children: [
                        _image !=null ?
                        CircleAvatar(
                          radius: 150,
                          backgroundImage:
                          MemoryImage(_image!),
                        )
                            :
                        CircleAvatar(
                          radius: 150,
                          backgroundImage: _image == null ?
                          NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s")
                          as ImageProvider<Object>?
                              : MemoryImage(_image!),
                        ),
                        // Container(
                        //   height: 200,
                        // width: 200,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(80),
                        //     image: _image !=null ?
                        //     DecorationImage(image: MemoryImage(_image!),
                        //         fit: BoxFit.cover):null,
                        //               ),
                        //             ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 1,
                    right: 2,
                    child: IconButton(
                      onPressed: () {
                        showImagePickerOption(context);
                      },
                      icon: Icon(Icons.add_a_photo,size: 30,color: Colors.greenAccent,),
                    ),
                  ),

                  SizedBox(height: 30,),

                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(Icons.person,color: Colors.blueAccent,),
                          ),
                          Text("Full Name", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent,),),
                          Padding(
                            padding: const EdgeInsets.only(left:60.0),
                            child: Text("S . Mohamed Imam", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent,),),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Divider(color: Colors.yellowAccent,
                    height: 30,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,),

                  SizedBox(height: 30,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(Icons.phone_iphone,color: Colors.blueAccent,),
                          ),
                          Text("Phone no", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent,),),
                          Padding(
                            padding: const EdgeInsets.only(left:60.0),
                            child: Text("+917639978402", style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Divider(color: Colors.yellowAccent,
                    height: 30,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,),

                  SizedBox(height: 30,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(Icons.add,color: Colors.blueAccent,),
                          ),
                          Text("Gender", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent,),),
                          // Switch(
                          //       value: isSwitched,
                          //       onChanged: _toggleSwitch,
                          //       activeTrackColor: Colors.lightGreenAccent,
                          //       activeColor: Colors.green,
                          //       ),

                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(value: value,child: Text(value));
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Divider(color: Colors.yellowAccent,
                    height: 30,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,),

                  SizedBox(height: 30,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.add_location,color: Colors.blueAccent,),
                          ),
                          Text("Location", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent,),),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: DropdownButton<String>(
                              value: dropdownValue1,
                              // icon: const Icon(Icons.arrow_downward),
                              // elevation: 25,
                              style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent,),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue1 = value!;
                                });
                              },
                              items: list1.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(value: value,child: Text(value));
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Divider(color: Colors.yellowAccent,
                    height: 30,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,),

                  SizedBox(height: 200,),

                  Text("By sharing this information,you \n agree to the Amazon Prime \n Privacy Policy", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

