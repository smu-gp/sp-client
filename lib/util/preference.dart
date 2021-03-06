import 'package:fill_memo/model/models.dart';

import 'constants.dart';

class AppPreferences {
  static final String keyUserId = "pref_user_id";
  static final String keyDarkMode = "pref_dark_mode";
  static final String keyDefaultMemoType = "pref_default_memo_type";
  static final String keyQuickMemoWriting = "pref_quick_memo_writing";
  static final String keyNewNoteOnStartup = "pref_new_note_onstartup";
  static final String keyQuickFolderClassification =
      "pref_quick_folder_classification";
  static final String keyUseFingerprint = "pref_use_finderprint";
  static final String keyResultAppendType = "pref_result_append_type";

  // For debug options
  static final String keyServiceHost = "pref_service_host";

  static final List<Preference> preferences = [
    Preference<String>(
      key: keyUserId,
      initValue: null,
    ),
    Preference<String>(
      key: keyDefaultMemoType,
      initValue: typeRichText,
    ),
    Preference<bool>(
      key: keyDarkMode,
      initValue: false,
    ),
    Preference<bool>(
      key: keyNewNoteOnStartup,
      initValue: false,
    ),
    Preference<bool>(
      key: keyQuickFolderClassification,
      initValue: true,
    ),
    Preference<String>(
      key: keyServiceHost,
      initValue: defaultServiceHost,
    ),
    Preference<bool>(
      key: keyUseFingerprint,
      initValue: false,
    ),
    Preference<bool>(
      key: keyQuickMemoWriting,
      initValue: false,
    ),
    Preference<String>(
      key: keyResultAppendType,
      initValue: typeSpace,
    ),
  ];
}
