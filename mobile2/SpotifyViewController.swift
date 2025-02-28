//
//  SpotifyViewController.swift
//  mobile2
//
//  Created by ITIT2 on 20/02/25.
//

import UIKit
import SwiftVideoBackground

class SpotifyViewController: UIViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
        try? VideoBackground.shared.play(view: view, videoName: "videoSpotifyLogin",videoType:"mp4")
        self.navigationController?.navigationBar.isHidden=true
        //self.tabBarController?.tabBar.isHidden=true
    }
}
