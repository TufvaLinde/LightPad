//
//  ContentView.swift
//  LightPad
//
//  Created by Tuva on 2020-02-03.
//  Copyright © 2020 Tuva Ekedal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
            .edgesIgnoringSafeArea(.all)
            Text("Hello LightPad user!")
                .foregroundColor(.blue)
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
