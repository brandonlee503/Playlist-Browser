//
//  Playlist.swift
//  Treehouse Playlist Browser
//
//  Created by Brandon Lee on 6/10/15.
//  Copyright (c) 2015 Brandon Lee. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var background: UIColor = UIColor.clearColor()
    
    init(index: Int){
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        title = playlistDictionary["title"] as! String!
        description = playlistDictionary["description"] as! String!
        let iconName = playlistDictionary["icon"] as! String!
        icon =  UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String!
        largeicon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artistKey"] as! [String]
    }
}