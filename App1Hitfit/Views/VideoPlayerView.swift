//
//  VideoPlayerView.swift
//  App1Hitfit
//
//  Created by Alex  on 28/11/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        if let url = Bundle.main.url(
          forResource: "burpee",
          withExtension: "mp4") {
          VideoPlayer(player: AVPlayer(url: url))
        } else {
          Text("Couldn’t find burpee.mp4")
            .foregroundColor(.red)
        }
    }
}

#Preview {
    VideoPlayerView()
}
