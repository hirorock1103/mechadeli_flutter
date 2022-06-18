import 'package:flutter/material.dart';


enum MechadeliFlow { fet, test, cancel, ok }

Map<dynamic, dynamic> flowList = {
  MechadeliFlow.ok : 1,
  MechadeliFlow.cancel : 2,
  MechadeliFlow.test : 3,
  MechadeliFlow.fet : 4,
};
