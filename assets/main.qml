/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

Page {
    property string lookupversion
    property string swrelease
    Container {
        Label {
            text: "OS Version"
        }
        TextField {
            id: osversion
            hintText: "OS version"
            inputMode: TextFieldInputMode.NumbersAndPunctuation
            onTextChanged: {
                lookupversion = osversion.text;
            }
        }
        Button {
            id: lookupbutton
            text: "Lookup"
            onClicked: {
                _swlookup.post(lookupversion);
                swrelease = _swlookup.softwareRelease();          
            }
        }
        Label {
            id: swreleaselabel
            text: "Software Release: " + swrelease
        }
    }
}
