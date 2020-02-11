//
//  DarkHostingController.swift
//  LightPad
//
//  Created by Tuva on 2020-02-11.
//  Copyright © 2020 Tuva Ekedal. All rights reserved.
//

import Foundation
import SwiftUI

class DarkHostingController<Content> : UIHostingController<Content> where Content : View {
    @objc override dynamic open var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
}
