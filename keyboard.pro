######################################################################
# Automatically generated by qmake (3.1) Tue Jun 29 10:37:32 2021
######################################################################

TEMPLATE = app
 QT += dbus
TARGET = keyboard
INCLUDEPATH += .

# The following define makes your compiler warn you if you use any
# feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
HEADERS += plugins/westernsupport/candidatescallback.h \
           plugins/westernsupport/spellchecker.h \
           plugins/westernsupport/spellpredictworker.h \
           plugins/westernsupport/westernlanguagefeatures.h \
           plugins/westernsupport/westernlanguagesplugin.h \
           plugins/westernsupport/westernsupport.h \
           plugins/westernsupport/westernsupport_global.h \
           src/lib/coreutils.h \
           src/plugin/device.h \
           src/plugin/editor.h \
           src/plugin/feedback.h \
           src/plugin/greeterstatus.h \
           src/plugin/inputmethod.h \
           src/plugin/inputmethod_p.h \
           src/plugin/keyboardgeometry.h \
           src/plugin/keyboardsettings.h \
           src/plugin/plugin.h \
           src/plugin/theme.h \
           src/plugin/updatenotifier.h \
           src/view/abstracttexteditor.h \
           src/view/setup.h \
           plugins/ar/src/arabicplugin.h \
           plugins/az/src/azerbaijaniplugin.h \
           plugins/bs/src/bosnianplugin.h \
           plugins/ca/src/catalanplugin.h \
           plugins/chewing/src/chewingadapter.h \
           plugins/chewing/src/chewinglanguagefeatures.h \
           plugins/chewing/src/chewingplugin.h \
           plugins/cs/src/czechplugin.h \
           plugins/da/src/danishplugin.h \
           plugins/de/src/germanplugin.h \
           plugins/el/src/greekplugin.h \
           plugins/emoji/src/emojilanguagefeatures.h \
           plugins/emoji/src/emojiplugin.h \
           plugins/en/src/englishplugin.h \
           plugins/eo/src/esperantoplugin.h \
           plugins/es/src/spanishplugin.h \
           plugins/fa/src/persianplugin.h \
           plugins/fi/src/finnishplugin.h \
           plugins/fr/src/frenchplugin.h \
           plugins/gd/src/gaelicplugin.h \
           plugins/he/src/hebrewplugin.h \
           plugins/hr/src/croatianplugin.h \
           plugins/hu/src/hungarianplugin.h \
           plugins/is/src/icelandicplugin.h \
           plugins/it/src/italianplugin.h \
           plugins/ja/src/anthyadapter.h \
           plugins/ja/src/japaneselanguagefeatures.h \
           plugins/ja/src/japaneseplugin.h \
           plugins/ko/src/koreanlanguagefeatures.h \
           plugins/ko/src/koreanplugin.h \
           plugins/lv/src/latvianplugin.h \
           plugins/nb/src/norwegianplugin.h \
           plugins/nl/src/dutchplugin.h \
           plugins/pinyin/src/chineselanguagefeatures.h \
           plugins/pinyin/src/pinyinadapter.h \
           plugins/pinyin/src/pinyinplugin.h \
           plugins/pl/src/polishplugin.h \
           plugins/pt/src/portugueseplugin.h \
           plugins/ro/src/romanianplugin.h \
           plugins/ru/src/russianplugin.h \
           plugins/sl/src/slovenianplugin.h \
           plugins/sr/src/serbianplugin.h \
           plugins/sv/src/swedishplugin.h \
           plugins/uk/src/ukrainianplugin.h \
           src/3rdparty/QGSettings/qconftypes.h \
           src/3rdparty/QGSettings/qgsettings.h \
           src/3rdparty/QGSettings/util.h \
           src/lib/logic/abstractlanguagefeatures.h \
           src/lib/logic/abstractlanguageplugin.h \
           src/lib/logic/abstractwordengine.h \
           src/lib/logic/eventhandler.h \
           src/lib/logic/languageplugininterface.h \
           src/lib/logic/style.h \
           src/lib/logic/wordengine.h \
           src/lib/models/area.h \
           src/lib/models/key.h \
           src/lib/models/keyarea.h \
           src/lib/models/keyboard.h \
           src/lib/models/keydescription.h \
           src/lib/models/layout.h \
           src/lib/models/styleattributes.h \
           src/lib/models/text.h \
           src/lib/models/wordcandidate.h \
           src/lib/models/wordribbon.h \
           tests/testlayout/src/testlayoutplugin.h \
           tests/unittests/common/inputmethodhostprobe.h \
           tests/unittests/common/mockscreen.h \
           tests/unittests/common/utils.h \
           tests/unittests/common/wordengineprobe.h \
           tests/unittests/ut_editor/wordengineprobe.h \
           tests/unittests/ut_keyboardsettings/qgsettings.h \
           tests/unittests/ut_word-candidates/wordengineprobe.h
SOURCES += plugins/westernsupport/candidatescallback.cpp \
           plugins/westernsupport/spellchecker.cpp \
           plugins/westernsupport/spellpredictworker.cpp \
           plugins/westernsupport/westernlanguagefeatures.cpp \
           plugins/westernsupport/westernlanguagesplugin.cpp \
           plugins/westernsupport/westernsupport.cpp \
           src/keyboard/keyboard.cpp \
           src/lib/coreutils.cpp \
           src/plugin/device.cpp \
           src/plugin/editor.cpp \
           src/plugin/feedback.cpp \
           src/plugin/greeterstatus.cpp \
           src/plugin/inputmethod.cpp \
           src/plugin/keyboardgeometry.cpp \
           src/plugin/keyboardsettings.cpp \
           src/plugin/plugin.cpp \
           src/plugin/theme.cpp \
           src/plugin/updatenotifier.cpp \
           src/view/abstracttexteditor.cpp \
           src/view/setup.cpp \
           plugins/chewing/src/chewingadapter.cpp \
           plugins/chewing/src/chewinglanguagefeatures.cpp \
           plugins/chewing/src/chewingplugin.cpp \
           plugins/emoji/src/emojilanguagefeatures.cpp \
           plugins/emoji/src/emojiplugin.cpp \
           plugins/ja/src/anthyadapter.cpp \
           plugins/ja/src/japaneselanguagefeatures.cpp \
           plugins/ja/src/japaneseplugin.cpp \
           plugins/ko/src/koreanlanguagefeatures.cpp \
           plugins/ko/src/koreanplugin.cpp \
           plugins/pinyin/src/chineselanguagefeatures.cpp \
           plugins/pinyin/src/pinyinadapter.cpp \
           plugins/pinyin/src/pinyinplugin.cpp \
           src/3rdparty/QGSettings/qconftypes.cpp \
           src/3rdparty/QGSettings/qgsettings.cpp \
           src/3rdparty/QGSettings/util.cpp \
           src/lib/logic/abstractlanguageplugin.cpp \
           src/lib/logic/abstractwordengine.cpp \
           src/lib/logic/eventhandler.cpp \
           src/lib/logic/style.cpp \
           src/lib/logic/wordengine.cpp \
           src/lib/models/area.cpp \
           src/lib/models/key.cpp \
           src/lib/models/keyarea.cpp \
           src/lib/models/layout.cpp \
           src/lib/models/styleattributes.cpp \
           src/lib/models/text.cpp \
           src/lib/models/wordcandidate.cpp \
           src/lib/models/wordribbon.cpp \
           tests/qmltests/qml-api-tests/plugin.cpp \
           tests/unittests/common/inputmethodhostprobe.cpp \
           tests/unittests/common/mockscreen.cpp \
           tests/unittests/common/utils-gui.cpp \
           tests/unittests/common/utils.cpp \
           tests/unittests/common/wordengineprobe.cpp \
           tests/unittests/ut_editor/ut_editor.cpp \
           tests/unittests/ut_editor/wordengineprobe.cpp \
           tests/unittests/ut_keyboardgeometry/ut_keyboardgeometry.cpp \
           tests/unittests/ut_keyboardsettings/fake_qgsettings.cpp \
           tests/unittests/ut_keyboardsettings/ut_keyboardsettings.cpp \
           tests/unittests/ut_languagefeatures/ut_languagefeatures.cpp \
           tests/unittests/ut_preedit-string/ut_preedit-string.cpp \
           tests/unittests/ut_repeat-backspace/ut_repeat-backspace.cpp \
           tests/unittests/ut_text/ut_text.cpp \
           tests/unittests/ut_word-candidates/ut_word-candidates.cpp \
           tests/unittests/ut_word-candidates/wordengineprobe.cpp \
           tests/unittests/ut_wordengine/ut_wordengine.cpp

DISTFILES += \
    plugins/ar/qml/Keyboard_ar.qml \
    plugins/ar/qml/Keyboard_ar_email.qml \
    plugins/ar/qml/Keyboard_ar_url.qml \
    plugins/ar/qml/Keyboard_ar_url_search.qml \
    plugins/az/qml/Keyboard_az.qml \
    plugins/az/qml/Keyboard_az_email.qml \
    plugins/az/qml/Keyboard_az_url.qml \
    plugins/az/qml/Keyboard_az_url_search.qml \
    plugins/bs/qml/Keyboard_bs.qml \
    plugins/bs/qml/Keyboard_bs_email.qml \
    plugins/bs/qml/Keyboard_bs_url.qml \
    plugins/bs/qml/Keyboard_bs_url_search.qml \
    plugins/ca/qml/Keyboard_ca.qml \
    plugins/ca/qml/Keyboard_ca_email.qml \
    plugins/ca/qml/Keyboard_ca_url.qml \
    plugins/ca/qml/Keyboard_ca_url_search.qml \
    plugins/chewing/qml/Keyboard_zh-hant.qml \
    plugins/chewing/qml/Keyboard_zh-hant_email.qml \
    plugins/chewing/qml/Keyboard_zh-hant_url.qml \
    plugins/chewing/qml/Keyboard_zh-hant_url_search.qml \
    plugins/cs/qml/Keyboard_cs.qml \
    plugins/cs/qml/Keyboard_cs_email.qml \
    plugins/cs/qml/Keyboard_cs_url.qml \
    plugins/cs/qml/Keyboard_cs_url_search.qml \
    plugins/da/qml/Keyboard_da.qml \
    plugins/da/qml/Keyboard_da_email.qml \
    plugins/da/qml/Keyboard_da_url.qml \
    plugins/da/qml/Keyboard_da_url_search.qml \
    plugins/de/qml/Keyboard_de.qml \
    plugins/de/qml/Keyboard_de_email.qml \
    plugins/de/qml/Keyboard_de_url.qml \
    plugins/de/qml/Keyboard_de_url_search.qml \
    plugins/el/qml/Keyboard_el.qml \
    plugins/el/qml/Keyboard_el_email.qml \
    plugins/el/qml/Keyboard_el_url.qml \
    plugins/el/qml/Keyboard_el_url_search.qml \
    plugins/emoji/qml/CategoryKey.qml \
    plugins/emoji/qml/Keyboard_emoji.qml \
    plugins/emoji/qml/Keyboard_emoji_email.qml \
    plugins/emoji/qml/Keyboard_emoji_url.qml \
    plugins/emoji/qml/Keyboard_emoji_url_search.qml \
    plugins/emoji/qml/emoji.js \
    plugins/en/qml/Keyboard_en.qml \
    plugins/en/qml/Keyboard_en_email.qml \
    plugins/en/qml/Keyboard_en_url.qml \
    plugins/en/qml/Keyboard_en_url_search.qml \
    plugins/eo/qml/Keyboard_eo.qml \
    plugins/eo/qml/Keyboard_eo_email.qml \
    plugins/eo/qml/Keyboard_eo_url.qml \
    plugins/eo/qml/Keyboard_eo_url_search.qml \
    plugins/es/qml/Keyboard_es.qml \
    plugins/es/qml/Keyboard_es_email.qml \
    plugins/es/qml/Keyboard_es_url.qml \
    plugins/es/qml/Keyboard_es_url_search.qml \
    plugins/fa/qml/Keyboard_fa.qml \
    plugins/fa/qml/Keyboard_fa_email.qml \
    plugins/fa/qml/Keyboard_fa_url.qml \
    plugins/fa/qml/Keyboard_fa_url_search.qml \
    plugins/fa/qml/Keyboard_symbols_fa.qml \
    plugins/fi/qml/Keyboard_fi.qml \
    plugins/fi/qml/Keyboard_fi_email.qml \
    plugins/fi/qml/Keyboard_fi_url.qml \
    plugins/fi/qml/Keyboard_fi_url_search.qml \
    plugins/fr/qml/Keyboard_fr.qml \
    plugins/fr/qml/Keyboard_fr_email.qml \
    plugins/fr/qml/Keyboard_fr_url.qml \
    plugins/fr/qml/Keyboard_fr_url_search.qml \
    plugins/gd/qml/Keyboard_gd.qml \
    plugins/gd/qml/Keyboard_gd_email.qml \
    plugins/gd/qml/Keyboard_gd_url.qml \
    plugins/gd/qml/Keyboard_gd_url_search.qml \
    plugins/he/qml/Keyboard_he.qml \
    plugins/he/qml/Keyboard_he_email.qml \
    plugins/he/qml/Keyboard_he_url.qml \
    plugins/he/qml/Keyboard_he_url_search.qml \
    plugins/hr/qml/Keyboard_hr.qml \
    plugins/hr/qml/Keyboard_hr_email.qml \
    plugins/hr/qml/Keyboard_hr_url.qml \
    plugins/hr/qml/Keyboard_hr_url_search.qml \
    plugins/hu/qml/Keyboard_hu.qml \
    plugins/hu/qml/Keyboard_hu_email.qml \
    plugins/hu/qml/Keyboard_hu_url.qml \
    plugins/hu/qml/Keyboard_hu_url_search.qml \
    plugins/is/qml/Keyboard_is.qml \
    plugins/is/qml/Keyboard_is_email.qml \
    plugins/is/qml/Keyboard_is_url.qml \
    plugins/is/qml/Keyboard_is_url_search.qml \
    plugins/it/qml/Keyboard_it.qml \
    plugins/it/qml/Keyboard_it_email.qml \
    plugins/it/qml/Keyboard_it_url.qml \
    plugins/it/qml/Keyboard_it_url_search.qml \
    plugins/ja/qml/Keyboard_ja.qml \
    plugins/ja/qml/Keyboard_ja_email.qml \
    plugins/ja/qml/Keyboard_ja_url.qml \
    plugins/ja/qml/Keyboard_ja_url_search.qml \
    plugins/ja/qml/keys/CommitKey.qml \
    plugins/ja/qml/keys/CursorKey.qml \
    plugins/ja/qml/keys/DomainKey.qml \
    plugins/ja/qml/keys/FlickArea.qml \
    plugins/ja/qml/keys/FlickCharKey.qml \
    plugins/ja/qml/keys/FlickPop.qml \
    plugins/ja/qml/keys/FlickPopKey.qml \
    plugins/ja/qml/keys/KanaSwitchKey.qml \
    plugins/ja/qml/keys/ModifierKey.qml \
    plugins/ja/qml/keys/UndoKey.qml \
    plugins/ja/qml/keys/modifier.js \
    plugins/ko/qml/Keyboard_ko.qml \
    plugins/ko/qml/Keyboard_ko_email.qml \
    plugins/ko/qml/Keyboard_ko_url.qml \
    plugins/ko/qml/Keyboard_ko_url_search.qml \
    plugins/ko/qml/keys/HBackspaceKey.qml \
    plugins/ko/qml/keys/HCharKey.qml \
    plugins/ko/qml/keys/languages.js \
    plugins/ko/qml/keys/parser.js \
    plugins/lv/qml/Keyboard_lv.qml \
    plugins/lv/qml/Keyboard_lv_email.qml \
    plugins/lv/qml/Keyboard_lv_url.qml \
    plugins/lv/qml/Keyboard_lv_url_search.qml \
    plugins/nb/qml/Keyboard_nb.qml \
    plugins/nb/qml/Keyboard_nb_email.qml \
    plugins/nb/qml/Keyboard_nb_url.qml \
    plugins/nb/qml/Keyboard_nb_url_search.qml \
    plugins/nl/qml/Keyboard_nl.qml \
    plugins/nl/qml/Keyboard_nl_email.qml \
    plugins/nl/qml/Keyboard_nl_url.qml \
    plugins/nl/qml/Keyboard_nl_url_search.qml \
    plugins/pinyin/qml/Keyboard_zh-hans.qml \
    plugins/pinyin/qml/Keyboard_zh-hans_email.qml \
    plugins/pinyin/qml/Keyboard_zh-hans_url.qml \
    plugins/pinyin/qml/Keyboard_zh-hans_url_search.qml \
    plugins/pl/qml/Keyboard_pl.qml \
    plugins/pl/qml/Keyboard_pl_email.qml \
    plugins/pl/qml/Keyboard_pl_url.qml \
    plugins/pl/qml/Keyboard_pl_url_search.qml \
    plugins/pt/qml/Keyboard_pt.qml \
    plugins/pt/qml/Keyboard_pt_email.qml \
    plugins/pt/qml/Keyboard_pt_url.qml \
    plugins/pt/qml/Keyboard_pt_url_search.qml \
    plugins/ro/qml/Keyboard_ro.qml \
    plugins/ro/qml/Keyboard_ro_email.qml \
    plugins/ro/qml/Keyboard_ro_url.qml \
    plugins/ro/qml/Keyboard_ro_url_search.qml \
    plugins/ru/qml/Keyboard_ru.qml \
    plugins/ru/qml/Keyboard_ru_email.qml \
    plugins/ru/qml/Keyboard_ru_url.qml \
    plugins/ru/qml/Keyboard_ru_url_search.qml \
    plugins/sl/qml/Keyboard_sl.qml \
    plugins/sl/qml/Keyboard_sl_email.qml \
    plugins/sl/qml/Keyboard_sl_url.qml \
    plugins/sl/qml/Keyboard_sl_url_search.qml \
    plugins/sr/qml/Keyboard_sr.qml \
    plugins/sr/qml/Keyboard_sr_email.qml \
    plugins/sr/qml/Keyboard_sr_url.qml \
    plugins/sr/qml/Keyboard_sr_url_search.qml \
    plugins/sv/qml/Keyboard_sv.qml \
    plugins/sv/qml/Keyboard_sv_email.qml \
    plugins/sv/qml/Keyboard_sv_url.qml \
    plugins/sv/qml/Keyboard_sv_url_search.qml \
    plugins/uk/qml/Keyboard_uk.qml \
    plugins/uk/qml/Keyboard_uk_email.qml \
    plugins/uk/qml/Keyboard_uk_url.qml \
    plugins/uk/qml/Keyboard_uk_url_search.qml \
    qml/Keyboard.qml \
    qml/KeyboardContainer.qml \
    qml/WordRibbon.qml \
    qml/images/action_key@27.png \
    qml/images/action_key@27.sci \
    qml/images/action_key_bg@18.png \
    qml/images/action_key_bg@18.sci \
    qml/images/b2.png \
    qml/images/border_bottom.png \
    qml/images/border_top.png \
    qml/images/grey_key@27.png \
    qml/images/grey_key@27.sci \
    qml/images/icon_backspace@18.png \
    qml/images/icon_enter@18.png \
    qml/images/icon_shift@18.png \
    qml/images/icon_shift_upsidedown@18.png \
    qml/images/icon_shift_white@18.png \
    qml/images/key_bg@18.png \
    qml/images/key_bg@18.sci \
    qml/images/keybg_action@18.png \
    qml/images/keybg_action@18.sci \
    qml/images/keybg_action_active@18.png \
    qml/images/keybg_action_active@18.sci \
    qml/images/keybg_capslock_bg@18.png \
    qml/images/keyboard-caps-disabled.svg \
    qml/images/keyboard-caps-enabled.svg \
    qml/images/keyboard-caps-locked.svg \
    qml/images/keyboard_popover.png \
    qml/images/keyboard_spacebar@27.png \
    qml/images/magnified_key.png \
    qml/images/magnified_key.sci \
    qml/images/popover.png \
    qml/images/popover.sci \
    qml/images/popover_tooltip@27.png \
    qml/images/rect3846.png \
    qml/images/tablet_icon_backspace@20.png \
    qml/images/tablet_icon_return@20.png \
    qml/images/tablet_icon_shift@20.png \
    qml/images/tablet_icon_shift_white@20.png \
    qml/images/white_key@27.png \
    qml/images/white_key@27.sci \
    qml/keys/ActionKey.qml \
    qml/keys/BackspaceKey.qml \
    qml/keys/CharKey.qml \
    qml/keys/DropShadow.qml \
    qml/keys/ExtendedKeysSelector.qml \
    qml/keys/JActionKey.qml \
    qml/keys/JAltKey.qml \
    qml/keys/JBackspaceKey.qml \
    qml/keys/JCapsKey.qml \
    qml/keys/JCharKey.qml \
    qml/keys/JControlKey.qml \
    qml/keys/JDirectionKey.qml \
    qml/keys/JEscKey.qml \
    qml/keys/JHideKey.qml \
    qml/keys/JLanguageKey.qml \
    qml/keys/JReturnKey.qml \
    qml/keys/JShiftKey.qml \
    qml/keys/JSpaceKey.qml \
    qml/keys/JSymbolNumKey.qml \
    qml/keys/JSymbolShiftKey.qml \
    qml/keys/JTabKey.qml \
    qml/keys/KeyPad.qml \
    qml/keys/KeyPopover.qml \
    qml/keys/LanguageKey.qml \
    qml/keys/LanguageMenu.qml \
    qml/keys/Magnifier.qml \
    qml/keys/OneTwoKey.qml \
    qml/keys/PressArea.qml \
    qml/keys/ReturnKey.qml \
    qml/keys/ShiftKey.qml \
    qml/keys/SmallSpaceKey.qml \
    qml/keys/SpaceKey.qml \
    qml/keys/Spacer.qml \
    qml/keys/SymbolShiftKey.qml \
    qml/keys/UrlKey.qml \
    qml/keys/languages.js \
    qml/keys/qmldir \
    qml/languages/Keyboard_numbers.qml \
    qml/languages/Keyboard_symbols.qml \
    qml/languages/Keyboard_telephone.qml \
    qml/prototype.qmlproject