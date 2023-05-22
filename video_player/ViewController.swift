//
//  ViewController.swift
//  video_player
//
//  Created by Evandro Caxala on 16.05.23.
//

import UIKit  // provides window and view architecture
import AVKit  // provides interfaces for AV playback
import AVFoundation // provides access to devicce camera or processing Audio

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        playVideo()
    }
    
    
    private func playVideo(){
        guard let path=Bundle.main.path(forResource: "sampleVid", ofType: "mp4") else {
            debugPrint("Mp4 video file not found")
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player=player
        present(playerController, animated: true) {
            player.play()
        }
    }
}


