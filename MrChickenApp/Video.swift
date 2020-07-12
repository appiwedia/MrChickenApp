//
//  Video.swift
//  Xcode12IOSDemo
//
//  Created by Mickael Mas on 10/07/2020.
//

import Foundation

struct Video: Identifiable {
    var id = UUID()
    
    var title: String
    var thumbnailName: String
    var description: String
    var videoName: String
    var videoExtension: String
    
    static var all = [
        Video(title: "Despacito Chicken Version (Mr. Chicken)", thumbnailName: "chicken1", description: "Despacito cover por Mr Chicken.", videoName: "video1", videoExtension: "mp4"),
        Video(title: "Vai Malandra Cover Mr Chicken", thumbnailName: "chicken2", description: "Cover de Vai Malandra.", videoName: "video2", videoExtension: "mp4"),
        Video(title: "Frosty the snowman MR CHICKEN", thumbnailName: "chicken3", description: "Frosty the snowman performed by Mr. Chicken.", videoName: "video3", videoExtension: "mp4")
        ]
}
