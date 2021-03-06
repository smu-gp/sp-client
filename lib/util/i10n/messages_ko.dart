// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static m0(displayName, modelName) => "${displayName}의 ${modelName}";

  static m1(deviceName) => "${deviceName}이(가) 연결을 요청합니다";

  static m2(resultsCount) => "${resultsCount}개의 결과";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "actionAccept" : MessageLookupByLibrary.simpleMessage("허용"),
    "actionAdd" : MessageLookupByLibrary.simpleMessage("추가"),
    "actionAddFolder" : MessageLookupByLibrary.simpleMessage("폴더 추가"),
    "actionAddMemo" : MessageLookupByLibrary.simpleMessage("메모 추가"),
    "actionAddTextFromImage" : MessageLookupByLibrary.simpleMessage("이미지에서 텍스트 가져오기"),
    "actionConnect" : MessageLookupByLibrary.simpleMessage("연결"),
    "actionConnection" : MessageLookupByLibrary.simpleMessage("연결"),
    "actionCreateNewFolder" : MessageLookupByLibrary.simpleMessage("새 폴더 생성"),
    "actionDarkMode" : MessageLookupByLibrary.simpleMessage("야간 모드"),
    "actionDate" : MessageLookupByLibrary.simpleMessage("날짜"),
    "actionDelete" : MessageLookupByLibrary.simpleMessage("삭제"),
    "actionEdit" : MessageLookupByLibrary.simpleMessage("편집"),
    "actionFolder" : MessageLookupByLibrary.simpleMessage("폴더"),
    "actionManageFolder" : MessageLookupByLibrary.simpleMessage("폴더 관리"),
    "actionMoveFolder" : MessageLookupByLibrary.simpleMessage("다른 폴더로 이동"),
    "actionNotes" : MessageLookupByLibrary.simpleMessage("메모"),
    "actionReject" : MessageLookupByLibrary.simpleMessage("거부"),
    "actionRemoveFolder" : MessageLookupByLibrary.simpleMessage("폴더 삭제"),
    "actionRename" : MessageLookupByLibrary.simpleMessage("이름 변경"),
    "actionRenameFolder" : MessageLookupByLibrary.simpleMessage("폴더 이름 변경"),
    "actionRetry" : MessageLookupByLibrary.simpleMessage("재시도"),
    "actionSecretFolder" : MessageLookupByLibrary.simpleMessage("비밀 폴더"),
    "actionSelectionAll" : MessageLookupByLibrary.simpleMessage("전체 선택"),
    "actionSendImage" : MessageLookupByLibrary.simpleMessage("이미지 보내기"),
    "actionSettings" : MessageLookupByLibrary.simpleMessage("설정"),
    "actionSort" : MessageLookupByLibrary.simpleMessage("정렬"),
    "androidCancelButton" : MessageLookupByLibrary.simpleMessage("취소"),
    "androidFingerprintHint" : MessageLookupByLibrary.simpleMessage("지문 센서에 손가락을 올려주세요"),
    "androidFingerprintNotRecognized" : MessageLookupByLibrary.simpleMessage("지문이 인식되지 않았습니다. 다시 시도하세요."),
    "androidFingerprintRequiredTitle" : MessageLookupByLibrary.simpleMessage("지문 필요"),
    "androidFingerprintSuccess" : MessageLookupByLibrary.simpleMessage("지문이 인식되었습니다."),
    "androidGoToSettingsDescription" : MessageLookupByLibrary.simpleMessage("기기에 지문이 설정되어 있지 않습니다. 지문을 추가하려면 \'설정 > 보안\'으로 이동하십시오."),
    "androidSignInTitle" : MessageLookupByLibrary.simpleMessage("지문 확인"),
    "appName" : MessageLookupByLibrary.simpleMessage("Fill 메모"),
    "authenticatedReason" : MessageLookupByLibrary.simpleMessage("앱을 사용하기 위해 인증이 필요합니다"),
    "connectionCodeHelp" : MessageLookupByLibrary.simpleMessage("연결코드란?"),
    "connectionCodeNavigate" : MessageLookupByLibrary.simpleMessage("연결 > 연결코드 생성"),
    "connectionCodePrefix" : MessageLookupByLibrary.simpleMessage("Fill 메모 애플리케이션이 설치된 기기와의 연결을 위해 필요한 코드입니다. 연결코드는 애플리케이션 내 "),
    "connectionCodeSuffix" : MessageLookupByLibrary.simpleMessage(" 으로 확인할 수 있습니다."),
    "deviceName" : m0,
    "dialogConnectionWithDevice" : MessageLookupByLibrary.simpleMessage("이 기기와 연결할까요?"),
    "dialogDeleteFolder" : MessageLookupByLibrary.simpleMessage("폴더 내 모든 기록들이 기본 폴더로 이동됩니다. 폴더를 삭제할까요?"),
    "dialogDeleteItem" : MessageLookupByLibrary.simpleMessage("삭제할까요?"),
    "dialogFolderSelect" : MessageLookupByLibrary.simpleMessage("폴더 선택"),
    "dialogSendImage" : MessageLookupByLibrary.simpleMessage("이미지 보내는 중..."),
    "errorEmptyCode" : MessageLookupByLibrary.simpleMessage("오류: 연결 코드는 비워둘 수 없습니다"),
    "errorEmptyName" : MessageLookupByLibrary.simpleMessage("오류: 이름은 비워둘 수 없습니다"),
    "folderDefault" : MessageLookupByLibrary.simpleMessage("기본"),
    "goToSettings" : MessageLookupByLibrary.simpleMessage("설정으로 이동"),
    "hintConnectAnotherDevice" : MessageLookupByLibrary.simpleMessage("연결코드로 다른 기기에 연결합니다"),
    "hintGenerateCode" : MessageLookupByLibrary.simpleMessage("다른 기기에서 연결하기 위해 코드를 생성합니다"),
    "hintInputNote" : MessageLookupByLibrary.simpleMessage("메모"),
    "hintInputTitle" : MessageLookupByLibrary.simpleMessage("제목"),
    "hintName" : MessageLookupByLibrary.simpleMessage("* 다른 기기에서 표시할 이름을 설정합니다"),
    "imageFromCamera" : MessageLookupByLibrary.simpleMessage("사진 촬영"),
    "imageFromGallery" : MessageLookupByLibrary.simpleMessage("이미지 선택"),
    "labelAppInitialize" : MessageLookupByLibrary.simpleMessage("초기화하는 중..."),
    "labelAppendTypeNewLine" : MessageLookupByLibrary.simpleMessage("새로운 줄"),
    "labelAppendTypeNone" : MessageLookupByLibrary.simpleMessage("없음"),
    "labelAppendTypeSpace" : MessageLookupByLibrary.simpleMessage("띄어쓰기"),
    "labelAuthFailed" : MessageLookupByLibrary.simpleMessage("인증 실패"),
    "labelChangePinCode" : MessageLookupByLibrary.simpleMessage("PIN 번호 변경"),
    "labelClose" : MessageLookupByLibrary.simpleMessage("닫기"),
    "labelConnectFailed" : MessageLookupByLibrary.simpleMessage("연결 실패"),
    "labelConnectSuccess" : MessageLookupByLibrary.simpleMessage("연결 성공"),
    "labelConnectionCode" : MessageLookupByLibrary.simpleMessage("연결코드"),
    "labelConnectionRequest" : m1,
    "labelDefaultMemoType" : MessageLookupByLibrary.simpleMessage("기본 메모 유형"),
    "labelDeviceConnect" : MessageLookupByLibrary.simpleMessage("기기 연결"),
    "labelDisconnect" : MessageLookupByLibrary.simpleMessage("연결 해제"),
    "labelDisconnectAnother" : MessageLookupByLibrary.simpleMessage("다른 기기에서 연결 해제"),
    "labelErrorOccurred" : MessageLookupByLibrary.simpleMessage("오류 발생"),
    "labelFingerprint" : MessageLookupByLibrary.simpleMessage("지문을 사용하여 잠금해제"),
    "labelHandWriting" : MessageLookupByLibrary.simpleMessage("손글씨"),
    "labelInternalErr" : MessageLookupByLibrary.simpleMessage("서버 내부 오류"),
    "labelLightTheme" : MessageLookupByLibrary.simpleMessage("밝은 테마"),
    "labelMarkdown" : MessageLookupByLibrary.simpleMessage("마크다운"),
    "labelName" : MessageLookupByLibrary.simpleMessage("이름"),
    "labelNoHostWaited" : MessageLookupByLibrary.simpleMessage("연결하려는 기기가 기다리지 않음"),
    "labelNoProcessResult" : MessageLookupByLibrary.simpleMessage("결과가 없습니다"),
    "labelNoTitle" : MessageLookupByLibrary.simpleMessage("제목없음"),
    "labelNone" : MessageLookupByLibrary.simpleMessage("없음"),
    "labelQuickFolderClassification" : MessageLookupByLibrary.simpleMessage("빠른 폴더 분류"),
    "labelQuickMemoWriting" : MessageLookupByLibrary.simpleMessage("빠른 메모 작성"),
    "labelRejectHost" : MessageLookupByLibrary.simpleMessage("연결하려는 기기가 거부함"),
    "labelResponseTimeout" : MessageLookupByLibrary.simpleMessage("연결하는 기기의 응답시간 만료"),
    "labelResultAppendType" : MessageLookupByLibrary.simpleMessage("텍스트 결과 추가 유형"),
    "labelRichText" : MessageLookupByLibrary.simpleMessage("서식 있는 텍스트"),
    "labelServiceHost" : MessageLookupByLibrary.simpleMessage("서비스 호스트"),
    "labelServiceUnavailable" : MessageLookupByLibrary.simpleMessage("서비스 사용할 수 없음"),
    "labelUnnamed" : MessageLookupByLibrary.simpleMessage("이름 없음"),
    "labelUpdateProfile" : MessageLookupByLibrary.simpleMessage("프로필 업데이트"),
    "labelUseFingerprint" : MessageLookupByLibrary.simpleMessage("지문 사용"),
    "labelVersion" : MessageLookupByLibrary.simpleMessage("버전"),
    "labelWaitConnection" : MessageLookupByLibrary.simpleMessage("연결 중..."),
    "labelWaitHostResponse" : MessageLookupByLibrary.simpleMessage("연결하려는 기기의 응답을 기다리는 중"),
    "labelWebConnectionRequest" : MessageLookupByLibrary.simpleMessage("웹에서 연결을 요청합니다"),
    "labelWriteNewNoteOnStartup" : MessageLookupByLibrary.simpleMessage("앱 시작 시 새 메모 작성"),
    "memoEmpty" : MessageLookupByLibrary.simpleMessage("메모가 비어있습니다"),
    "memoError" : MessageLookupByLibrary.simpleMessage("메모를 불러오는 데 오류가 발생하였습니다"),
    "orderByCreated" : MessageLookupByLibrary.simpleMessage("만든 날짜 순"),
    "orderByUpdated" : MessageLookupByLibrary.simpleMessage("수정 날짜 순"),
    "orderCreatedAsc" : MessageLookupByLibrary.simpleMessage("추가한 날짜 오름차순"),
    "orderCreatedDes" : MessageLookupByLibrary.simpleMessage("추가한 날짜 내림차순"),
    "orderType" : MessageLookupByLibrary.simpleMessage("순서"),
    "orderTypeAsc" : MessageLookupByLibrary.simpleMessage("오름차순"),
    "orderTypeDes" : MessageLookupByLibrary.simpleMessage("내림차순"),
    "resultCountMessage" : m2,
    "subtitleDebug" : MessageLookupByLibrary.simpleMessage("디버그"),
    "subtitleInfo" : MessageLookupByLibrary.simpleMessage("정보"),
    "subtitleNote" : MessageLookupByLibrary.simpleMessage("메모"),
    "subtitleQuickFolderClassification" : MessageLookupByLibrary.simpleMessage("메모 제목을 작성할때 폴더를 분류합니다"),
    "subtitleQuickMemoWriting" : MessageLookupByLibrary.simpleMessage("기본 메모 유형으로 메모를 작성합니다"),
    "subtitleResultAppendType" : MessageLookupByLibrary.simpleMessage("이미지에서 가져온 여러 텍스트 결과를 추가할때 내용에 덧붙일 방법을 설정합니다"),
    "subtitleSecurity" : MessageLookupByLibrary.simpleMessage("보안"),
    "titleAddImage" : MessageLookupByLibrary.simpleMessage("이미지 영역 선택"),
    "titleGuestConnection" : MessageLookupByLibrary.simpleMessage("다른 기기에 연결"),
    "titleHistory" : MessageLookupByLibrary.simpleMessage("기록"),
    "titleHostConnection" : MessageLookupByLibrary.simpleMessage("연결코드 생성"),
    "titleResult" : MessageLookupByLibrary.simpleMessage("처리 결과"),
    "validationServiceHost" : MessageLookupByLibrary.simpleMessage("오류: 서비스 호스트는 비워둘 수 없습니다"),
    "warnGenerateCode" : MessageLookupByLibrary.simpleMessage("화면을 닫으면 연결 요청을 받을 수 없습니다")
  };
}
