import 'package:flutter/material.dart';


enum MechadeliFlow { test, preContact, inContact, confirmRequest, scheduleOK, finishWork, cancel }
//予約 (2)
// 連絡中 (0)
// 日程確定 (0)
// 確認依頼 (0)
// 依頼確定 (0)
// 作業終了 (2)
// キャンセル (0)

Map<dynamic, dynamic> MechadeliFlowContents = {
  MechadeliFlow.test : { "id" : 0, "title":"未設定", "msg":"msg"},
  MechadeliFlow.preContact : { "id" : 1, "title":"予約", "msg":"msg"},
  MechadeliFlow.inContact : {"id": 2, "title": "連絡中", "msg":"現在連絡中です。やり取りを通じて内容の決定をお願いします。"},
  MechadeliFlow.confirmRequest : {"id": 3, "title": "確認依頼", "msg":"内容の確認をお願いします"},
  MechadeliFlow.scheduleOK : {"id": 4, "title": "日程確定", "msg":"日程が確定しました。"},
  MechadeliFlow.finishWork : {"id": 5, "title": "作業完了", "msg":"作業が終了しました"},
  MechadeliFlow.cancel : {"id": 6, "title": "キャンセル", "msg":"キャンセルになった申し込みです"},
};



enum ApplyStatus { notYet, confirm, ng, ok }
Map<dynamic, dynamic> ApplyStatusList = {
  ApplyStatus.notYet : { "id" : 0, "title":"未申請" },
  ApplyStatus.confirm : { "id" : 1, "title":"申請中" },
  ApplyStatus.ng : { "id" : 2, "title":"申請NG" },
  ApplyStatus.ok : { "id" : 9, "title":"申請OK" },
};

applyStatusToColor(ApplyStatus status){
  switch(status){
    case ApplyStatus.notYet:
      return Colors.greenAccent;
    case ApplyStatus.confirm:
      return Colors.yellowAccent;
    case ApplyStatus.ok:
      return Colors.blueAccent;
    case ApplyStatus.ng :
      return Colors.pink;
  }
}
applyStatusIntToString(int num){
  switch(num){
    case 0:
    return "未申請";
    case 1:
      return "申請中";
    case 2:
      return "申請NG";
    case 9:
      return "申請OK";
  }
}
applyStatusToInt(ApplyStatus status){
    switch(status){
      case ApplyStatus.notYet:
        return 0;
      case ApplyStatus.confirm:
        return 1;
      case ApplyStatus.ok:
        return 9;
      case ApplyStatus.ng :
        return 2;
    }
  }

Map<int, ApplyStatus> ApplyStatusMap = {
  0 : ApplyStatus.notYet,
  1 : ApplyStatus.confirm,
  2 : ApplyStatus.ng,
  9 : ApplyStatus.ok,
};
