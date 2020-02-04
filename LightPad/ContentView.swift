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

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.72, green:0.72, blue:0.94, opacity:1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Title")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600.0,height: 600.0)
                Spacer()
                NavigationLink(destination: Text("")) {
                    Text("Lit me up!")
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundColor(Color(red: 1.0, green: 0.5, blue: 0.0, opacity: 1.0))
                }.buttonStyle(PlainButtonStyle())
                Spacer()
            }
        }.onAppear(perform: playVideo)
    }

    func playVideo() {
        guard let path = Bundle.main.path(forResource: "video", ofType:"MOV") else {
            debugPrint("video.MOV not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
