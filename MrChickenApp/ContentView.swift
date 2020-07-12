//
//  ContentView.swift
//  MrChickenApp
//
//  Created by Mickael Mas on 10/07/2020.
//

import SwiftUI
import AVKit

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            VStack {
                List(Video.all) { video in
                    NavigationLink(
                        destination:
                            VideoPlayerView(video: video)
        
                        ,
                        label: {
                            HStack {
                                ZStack {
                                    Image(video.thumbnailName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
                                    
                                    Image(systemName: "play.circle")
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                }
                                
                                Text(video.title)
                                    .font(.headline)
                                    .foregroundColor(.orange)
                                
                            }
                        })
                    
                }.listStyle(PlainListStyle())
                .navigationTitle("Mr Chicken App")
                Text("\(Video.all.count) vidéos")
                    .padding(.all, 10)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
