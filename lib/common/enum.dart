import 'package:flutter/material.dart';


enum MechadeliFlow { preContact, inContact, confirmRequest, scheduleOK, finishWork, cancel }
//予約 (2)
// 連絡中 (0)
// 日程確定 (0)
// 確認依頼 (0)
// 依頼確定 (0)
// 作業終了 (2)
// キャンセル (0)

Map<dynamic, dynamic> MechadeliFlowContents = {
  MechadeliFlow.preContact : { "id" : 1, "title":"予約" },
  MechadeliFlow.inContact : {"id": 2, "title": "連絡中"},
  MechadeliFlow.confirmRequest : {"id": 3, "title": "確認依頼"},
  MechadeliFlow.scheduleOK : {"id": 4, "title": "日程確定"},
  MechadeliFlow.finishWork : {"id": 5, "title": "作業完了"},
  MechadeliFlow.cancel : {"id": 6, "title": "キャンセル"},
};
