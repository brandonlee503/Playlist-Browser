//
//  PlaylistDetailViewController.swift
//  Treehouse Playlist Browser
//
//  Created by Brandon Lee on 6/9/15.
//  Copyright (c) 2015 Brandon Lee. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    
    var playlist: Playlist?
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if playlist != nil {
            playlistCoverImage.image = playlist!.icon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
