//
//  ExerciseView.swift
//  App1Hitfit
//
//  Created by Alex  on 28/11/23.
//

import SwiftUI
import AVKit
struct ExerciseView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("ExerciseNAme")
                    .font(.title)
                HStack {
                    Image(systemName: "1.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                    Image(systemName: "4.circle")
                }
                Spacer()
                Text("VIDEO PANEL")
                VideoPlayerView()
                    .frame(height: geometry.size.height * 0.45)
                Spacer()
                Text("Temporizador")
                Spacer()
                HStack {
                    Text("Start Exercise")
                    Text("Done")
                }
                Spacer()
                Text("Symbol energy")
                Spacer()
                Text("History")
                
            }
        }
    }
}

#Preview {
    ExerciseView()
}
