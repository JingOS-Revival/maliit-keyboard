/*
 * Copyright 2013 Canonical Ltd.
 * Copyright 2021 Yu Jiashu <yujiashu@jingos.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick.Layouts 1.12
import QtQuick 2.4
import QtGraphicalEffects 1.12 as KeyEffects
import MaliitKeyboard 2.0

Item {
    id: key

    property int padding: 0
    property bool ifReleased: true
    property string label: ""
    property string shifted: ""
    property var extended; // list of extended keys
    property var extendedShifted; // list of extended keys in shifted state
    property var currentExtendedKey; // The currently highlighted extended key
    property bool highlight: false;
    property double textCenterOffset: Device.gu(-0.15)
    property string valueToSubmit:(panel.activeKeypadState === "NORMAL") ? downKeyLabel.text: upKeyLabel.text
    property alias acceptDoubleClick: keyMouseArea.acceptDoubleClick
    property alias horizontalSwipe: keyMouseArea.horizontalSwipe

    property string action
    property bool noMagnifier: false
    property bool skipAutoCaps: false
    property bool switchBackFromSymbols: false

    property bool leftSide: false
    property bool rightSide: false

    property double rowMargin: fullScreenItem.landscape ? Device.rowMarginLandscape
                                                        : Device.rowMarginPortrait
    property double keyMargin: Device.keyMargins

    readonly property double leftOffset: buttonRect.anchors.leftMargin
    readonly property double rightOffset: buttonRect.anchors.rightMargin

    property string normalColor: Theme.charKeyColor
    property string pressedColor: Theme.charKeyPressedColor
    property string hoverColor: "#F3F4F4"
    property bool borderEnabled: Theme.keyBorderEnabled
    property color borderColor: Theme.charKeyBorderColor
    property int fontSize: 13 * fullScreenItem.screenWidthScale
    property alias fontFamily: upKeyLabel.font.family

    property string annotation: ""
    property alias currentlyPressed: keyMouseArea.pressed
    property string __annotationLabelNormal
    property string __annotationLabelShifted

    property bool extendedKeysShown: extendedKeysSelector.enabled
    property string oskState: panel.activeKeypadState
    property var activeExtendedModel: (panel.activeKeypadState === "NORMAL") ? extended : extendedShifted
    property bool overridePressArea: false
    property bool allowPreeditHandler: false
    property var preeditHandler: null
    property bool swipeReady: false

    signal pressed()
    signal released()
    signal pressAndHold()
    signal doubleClicked()
    signal keySent(string key)

    Component.onCompleted: {
        if (annotation) {
            __annotationLabelNormal = annotation
            __annotationLabelShifted = annotation
        } else {
            if (extended)
                __annotationLabelNormal = extended[0]
            if (extendedShifted)
                __annotationLabelShifted = extendedShifted[0]
        }
    }

    function doReleased(){
        if(ifReleased)
            return
        ifReleased=true
        key.released()
        if (key.overridePressArea) {
            return
        }
        if (key.extendedKeysShown) {
            if (key.currentExtendedKey) {
                key.currentExtendedKey.commit()
                key.currentExtendedKey = null
            } else {
                extendedKeysSelector.closePopover()
            }
        } else if(!keyMouseArea.swipedOut) {
            // Read this prior to altering autocaps
            var keyToSend = key.valueToSubmit;
            if (magnifier.currentlyAssignedKey == key) {
                magnifier.shown = false;
            }

            if (panel.autoCapsTriggered && key.action != "backspace") {
                panel.autoCapsTriggered = false
            }
            else if (!key.skipAutoCaps) {
                if (panel.activeKeypadState === "SHIFTED" && panel.state === "CHARACTERS")
                    panel.activeKeypadState = "NORMAL"
            }
            if (key.switchBackFromSymbols && panel.state === "SYMBOLS") {
                panel.state = "CHARACTERS"
            }
            if (key.switchBackFromSymbols && key.action === "hide") {
                maliit_input_method.hide()
                return
            }
            if (key.allowPreeditHandler && key.preeditHandler) {
                preeditHandler.onKeyReleased(keyToSend, key.action)
                return;
            }
            event_handler.onKeyReleased(keyToSend, key.action)
            keySent(keyToSend);
        } else if (key.action == "backspace") {
            event_handler.onKeyReleased(valueToSubmit, key.action)
            keySent(key.valueToSubmit)
        }

        if(fullScreenItem.prePressedKey===key){
            fullScreenItem.prePressedKey=null
        }
    }

    Connections {
        target: swipeArea.drag
        onActiveChanged: {
            if (swipeArea.drag.active)
                keyMouseArea.cancelPress();
        }
    }

    Item {
        anchors.top: parent.top
        height: parent.height
        width: parent.width
        MouseArea {
            id: mouse
            anchors.fill: parent
            hoverEnabled: fullScreenItem.pressKeyCount===0
        }

        Loader {
            id: keyDropShadow
            anchors.fill: buttonRect
            asynchronous: true
            sourceComponent: keyShadow
            onStatusChanged: {
                if (keyDropShadow.status === Loader.Ready){
                    ++fullScreenItem.keyLoadCount
                    if(fullScreenItem.keyLoadCount>50){
                        fullScreenItem.keyShadowVisible = true
                    }else{
                        fullScreenItem.keyShadowVisible = false
                    }
                }
            }
        }
        Component {
            id: keyShadow
            KeyEffects.DropShadow {
                radius: 1
                samples: 25
                color: Qt.rgba(0,0,0, 0.2)
                source: buttonRect
                verticalOffset: 2
                visible: fullScreenItem.keyShadowVisible ? ( mouse.containsMouse || keyMouseArea.pressed ? false : true )
                                                         : false
            }
        }

        Rectangle {
            id: buttonRect
            color:{
                if(mouse.containsMouse) {
                    if(key.currentlyPressed || key.highlight){
                        if(fullScreenItem.prePressedKey===key){
                            return pressedColor
                        }else{
                            return normalColor
                        }
                    }else{
                        return hoverColor
                    }
                } else {
                    if(key.currentlyPressed || key.highlight) {
                        if(fullScreenItem.prePressedKey===key){
                            return pressedColor
                        }else{
                            return normalColor
                        }
                    }else{
                        return normalColor
                    }
                }
            }

            anchors.fill: parent
            border {
                width: borderEnabled ? 8 * (0.1) : 0
                color: borderColor
            }
            radius: (10)

            Column {
                anchors.fill: parent
                spacing: 5
                Text {
                    id: upKeyLabel
                    text:   shifted
                    font.family: Theme.fontFamily
                    font.pixelSize: fontSize
                    font.weight: Font.Light
                    color: Theme.fontColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: downKeyLabel.visible ? Text.AlignBottom : Text.AlignVCenter
                    elide: text.length <= 4 ? Text.ElideNone : Text.ElideRight
                    visible: !panel.hideKeyLabels
                    height: downKeyLabel.visible ? parent.height/2 : parent.height
                    width: parent.width
                }
                Text {
                    id: downKeyLabel
                    text: label
                    font.family: Theme.fontFamily
                    font.pixelSize: fontSize
                    font.weight: Font.Light
                    color: Theme.fontColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    // Avoid eliding characters that are slightly too wide (e.g. some emoji and chinese characters)
                    elide: text.length <= 4 ? Text.ElideNone : Text.ElideRight
                    visible: panel.hideKeyLabels ? false: ((panel.activeKeypadState === "NORMAL") ? true : false)
                    height: downKeyLabel.visible ? parent.height/2 : 0
                    width: parent.width
                }
            }
        }
    }

    PressArea {
        id: keyMouseArea
        anchors.fill: parent

        onPressAndHold: {
            if (overridePressArea) {
                key.pressAndHold();
                return;
            }
            if (activeExtendedModel != undefined) {
                Feedback.startPressEffect();

                swipeReady = false;
                swipeTimer.restart();
                magnifier.shown = false
                extendedKeysSelector.enabled = true
                extendedKeysSelector.extendedKeysModel = activeExtendedModel
                extendedKeysSelector.currentlyAssignedKey = key
                var extendedKeys = extendedKeysSelector.keys;
                var middleKey = extendedKeys.length > 1 ? Math.floor(extendedKeys.length / 2) - 1 : 0;
                extendedKeys[middleKey].highlight = true;
                currentExtendedKey = extendedKeys[middleKey];
            }
        }

        onMouseXChanged: {
            evaluateSelectorSwipe();
        }

        onMouseYChanged: {
            evaluateSelectorSwipe();
        }

        onReleased: {
            if(fullScreenItem.pressKeyCount>0)
                 --fullScreenItem.pressKeyCount
            doReleased()
        }

        onSwipedOutChanged: {
            if(swipedOut && magnifier.currentlyAssignedKey == key) {
                magnifier.shown = false;
            }
        }

        onPressed: {
            ++fullScreenItem.pressKeyCount
            ifReleased=false
            if(fullScreenItem.prePressedKey && fullScreenItem.prePressedKey !== key){
                fullScreenItem.prePressedKey.doReleased()
            }
            fullScreenItem.prePressedKey=key
            key.pressed();
            if (overridePressArea) {
                return;
            }
            magnifier.currentlyAssignedKey = key
            magnifier.shown = !noMagnifier

            Feedback.keyPressed();

            // Quick workaround to fix initial autocaps - not beautiful, but works
            if(action != "backspace") {
                panel.autoCapsTriggered = false;
            }
            event_handler.onKeyPressed(valueToSubmit, action);
        }

        onDoubleClicked: {
            key.doubleClicked();
            if (overridePressArea) {
                return;
            }
        }

        // Determine which extended key we're underneath when swiping,
        // highlight it and set it as the currentExtendedKey (to be committed
        // when press is released)
        function evaluateSelectorSwipe() {
            if (extendedKeysSelector.enabled && swipeReady) {
                var extendedKeys = extendedKeysSelector.keys;
                currentExtendedKey = null;
                var keyMapping = extendedKeysSelector.mapToItem(key, extendedKeysSelector.rowX, extendedKeysSelector.rowY);
                var mx = mouseX - keyMapping.x;
                var my = mouseY - keyMapping.y;
                for(var i = 0; i < extendedKeys.length; i++) {
                    var posX = extendedKeys[i].x;
                    var posY = extendedKeys[i].y;
                    if(mx > posX && mx < (posX + extendedKeys[i].width)
                       && my > posY && my < (posY + extendedKeys[i].height * 2.5)) {
                        if(!extendedKeys[i].highlight) {
                            Feedback.startPressEffect();
                        }
                        extendedKeys[i].highlight = true;
                        currentExtendedKey = extendedKeys[i];
                    } else if('highlight' in extendedKeys[i]) {
                        extendedKeys[i].highlight = false;
                    }
                }
            }
        }
    }

    Timer {
        id: swipeTimer
        interval: 750
        onTriggered: {
            swipeReady = true;
            keyMouseArea.evaluateSelectorSwipe();
        }
    }
}
