import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../services/media_service.dart';
import '../services/database_service.dart';
import '../services/cloud_storage_service.dart';

import '../widgets/custom_input_fields.dart';
import '../widgets/rounded_button.dart';

import '../provider/authentication_provider.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  Widget _buildUI(){
    return Scaffold();
  }
}
