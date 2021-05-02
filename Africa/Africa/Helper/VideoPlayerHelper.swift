//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Sood, Gaurav on 25/04/21.
//

import SwiftUI
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileformat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileformat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileformat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
