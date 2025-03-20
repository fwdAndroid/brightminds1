import 'package:brightminds/screens/auth/select_language.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:brightminds/screens/auth/login_screen.dart';
import 'package:brightminds/utils/colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String selectedGender = ''; // To track selected gender
  bool _isLoading = false; // To manage loading state
  bool _isPasswordVisible = false; // Track password visibility
  TextEditingController _ageContorller = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _registerUser() async {
    if (_formKey.currentState!.validate() && selectedGender.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });

      try {
        // Register the user with Firebase Authentication
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Save user data to Firestore
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'name': _nameController.text.trim(),
          'age': _ageContorller.text,
          'email': _emailController.text.trim(),
          'gender': selectedGender,
          'uid': FirebaseAuth.instance.currentUser!.uid,
          'createdAt': DateTime.now(),
        });

        // Navigate to MainDashboard
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Account created successfully!')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (builder) => SelectLanguage()),
        );
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? 'An error occurred')),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    } else if (selectedGender.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select a gender')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                      color: Color(0xFFA0CF52),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  _buildTextField(
                    controller: _nameController,
                    label: 'Name',
                    hintText: 'Enter your full Name',
                  ),
                  SizedBox(height: 15),
                  _buildTextField(
                    controller: _ageContorller,
                    label: 'Age',
                    hintText: 'Enter your Age',
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    controller: _emailController,
                    label: 'Email Address',
                    hintText: 'Enter your email',
                    validator: (value) => value!.contains('@')
                        ? null
                        : 'Please enter a valid email',
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                    controller: _passwordController,
                    label: 'Password',
                    hintText: 'Enter your password',
                    obscureText: !_isPasswordVisible,
                    validator: (value) => value!.length >= 6
                        ? null
                        : 'Password must be at least 6 characters',
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Creating Account For',
                    style: TextStyle(
                      color: Color(0xFFA0CF52),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildGenderButton('Girl', selectedGender == 'Girl'),
                      SizedBox(width: 10),
                      _buildGenderButton('Boy', selectedGender == 'Boy'),
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: _isLoading ? null : _registerUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: _isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => LoginPage()),
                      );
                    },
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have account ? ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(color: Colors.purple),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hintText,
    bool obscureText = false,
    String? Function(String?)? validator,
    Widget? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }

  Widget _buildGenderButton(String gender, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF5FDDC) : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.transparent : Colors.orange,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          gender,
          style: TextStyle(
            color: isSelected ? Colors.green : Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
