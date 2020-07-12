//
//  VideoPlayerView.swift
//  MrChickenApp
//
//  Created by Mickael Mas on 10/07/2020.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    internal init(video: Video) {
        self.video = video
        self.player = AVPlayer(url: Bundle.main.url(forResource: video.videoName, withExtension: video.videoExtension)!)
    }
    
    
    var video: Video
    private var player: AVPlayer
    
    var body: some View {
        VStack(spacing: 20) {
            VideoPlayer(player: player) {
                VStack {
                    Text("APPIWEDIA")
                        .foregroundColor(.white)
                        .padding(.all, 10)
                    Spacer()
                }
            }.frame(height: 200)
            
            
            Text(video.title)
                .font(.title)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Text(video.description)
                .font(.caption)
                .foregroundColor(.gray)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Spacer()
        }.navigationBarTitle(video.title, displayMode: .inline)
        .onDisappear {
            player.pause()
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(video: Video.all[0])
    }
}
