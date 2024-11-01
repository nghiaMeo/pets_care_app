import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:pets_care_app/core/theme/app_colors.dart';
import 'package:pets_care_app/widgets/app_bar_widget.dart';

class UpdateUserScreen extends StatefulWidget {
  // Simulated user data for pre-filling the form
  final String initialFirstName;
  final String initialLastName;
  final String initialEmail;
  final String initialContactInfo;
  final String initialAddress;
  final int initialNumberOfCats;

  UpdateUserScreen({
    required this.initialFirstName,
    required this.initialLastName,
    required this.initialEmail,
    required this.initialContactInfo,
    required this.initialAddress,
    required this.initialNumberOfCats,
  });

  @override
  _UpdateUserScreenState createState() => _UpdateUserScreenState();
}

class _UpdateUserScreenState extends State<UpdateUserScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _contactInfo;
  String? _address;
  int? _numberOfCats;
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? selectedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const BasicAppbar(
        title: Text("Update User Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _image != null ? FileImage(File(_image!.path)) : null,
                  child: _image == null ? Icon(Icons.camera_alt, size: 50) : null,
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                initialValue: widget.initialFirstName,
                decoration: InputDecoration(labelText: 'First Name'),
                onSaved: (value) => _firstName = value,
                validator: (value) => value!.isEmpty ? 'Please enter first name' : null,
              ),
              TextFormField(
                initialValue: widget.initialLastName,
                decoration: InputDecoration(labelText: 'Last Name'),
                onSaved: (value) => _lastName = value,
                validator: (value) => value!.isEmpty ? 'Please enter last name' : null,
              ),
              TextFormField(
                initialValue: widget.initialEmail,
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) => _email = value,
                validator: (value) => value!.isEmpty ? 'Please enter email' : null,
              ),
              TextFormField(
                initialValue: widget.initialContactInfo,
                decoration: InputDecoration(labelText: 'Contact Information'),
                onSaved: (value) => _contactInfo = value,
                validator: (value) => value!.isEmpty ? 'Please enter contact information' : null,
              ),
              TextFormField(
                initialValue: widget.initialAddress,
                decoration: InputDecoration(labelText: 'Address'),
                onSaved: (value) => _address = value,
                validator: (value) => value!.isEmpty ? 'Please enter address' : null,
              ),
              TextFormField(
                initialValue: widget.initialNumberOfCats.toString(),
                decoration: InputDecoration(labelText: 'Number of Cats'),
                keyboardType: TextInputType.number,
                onSaved: (value) => _numberOfCats = int.tryParse(value!),
                validator: (value) => value!.isEmpty ? 'Please enter the number of cats' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform user update action here
                    print('First Name: $_firstName');
                    print('Last Name: $_lastName');
                    print('Email: $_email');
                    print('Contact Information: $_contactInfo');
                    print('Address: $_address');
                    print('Number of Cats: $_numberOfCats');
                    // Update user information
                  }
                },
                child: const Text('Update',style: TextStyle(
                  color: AppColors.button
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
