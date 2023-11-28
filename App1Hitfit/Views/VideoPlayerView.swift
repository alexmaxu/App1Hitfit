//
//  VideoPlayerView.swift
//  App1Hitfit
//
//  Created by Alex  on 28/11/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let index: Int
    var exercise: Exercise { Exercise.exercises[index]
    }
    var body: some View {
        if let url = Bundle.main.url(
            forResource: exercise.videoName,
          withExtension: "mp4") {
          VideoPlayer(player: AVPlayer(url: url))
        } else {
            Text("Couldn’t find \(exercise.videoName).mp4")
            .foregroundColor(.red)
        }
    }
}

#Preview {
    VideoPlayerView(index: 0)
}
