//
//  ContentView.swift
//  LightPad
//
//  Created by Tuva on 2020-02-03.
//  Copyright © 2020 Tuva Ekedal. All rights reserved.
//

import SwiftUI
import AVKit
import AVFoundation

struct LightView: View {
    @State var hideStatusBar = true

    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
        }
        .statusBar(hidden: hideStatusBar)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red:0.72, green:0.72, blue:0.94, opacity:1.0)
                VStack {
                    Image("LightPad")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600.0,height: 600.0)
                    Spacer()
                    NavigationLink(destination: LightView()) {
                        Text("Lit me up!")
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                        .statusBar(hidden: true)
                    }.foregroundColor(.white)
                    Spacer()
                }
            }.edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


//struct ContentView: View {
//    @State var showingLightView = false
//    @State var tag:Int? = nil
//
//    var body: some View {
//        ZStack {
//            Color(red:0.72, green:0.72, blue:0.94, opacity:1.0)
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Image("LightPad")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 600.0,height: 600.0)
//                Spacer()
//
//                Button(action: {
//                    // What to perform
//                    self.showingLightView.toggle()
//                }) {
//                    // How the button looks like
//                    Text("Lit me up!")
//                        .font(.largeTitle)
//                        .fontWeight(.thin)
//                        .foregroundColor(Color(red: 1.0, green: 0.5, blue: 0.0, opacity: 1.0))
//                }.sheet(isPresented: $showingLightView) {
//                        LightView()
//                }
//                Spacer()
//            }
//        }
//        //        .onAppear(perform: playVideo)
//    }
//
////        func playVideo() {
////            guard let path = Bundle.main.path(forResource: "video", ofType:"MOV") else {
////                debugPrint("video.MOV not found")
////                return
////            }
////            let player = AVPlayer(url: URL(fileURLWithPath: path))
////            let playerController = AVPlayerViewController()
////            playerController.player = player
////            present(playerController, animated: true) {
////                player.play()
////            }
////        }
//}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
