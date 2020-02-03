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
            Color.gray
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Title")
                Text("Hello LightPad user!")
                    .foregroundColor(.red)
                Spacer()
                Button(action: {
                    //vad som händer när man klickar på knappen
                }) {
                    Text("Lit me up!")
                        .foregroundColor(.yellow)
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
