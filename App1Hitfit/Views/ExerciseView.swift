//
//  ExerciseView.swift
//  App1Hitfit
//
//  Created by Alex  on 28/11/23.
//

import SwiftUI
import AVKit
struct ExerciseView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false
    @State private var showSuccess = false
    let index: Int
    let interval: TimeInterval = 30
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(index: index, selectedTab: $selectedTab)
                    .padding(.top, 15.0)
                Spacer()
                VStack {
                    Text("VIDEO PANEL \(index)")
                    Text("selectedTab \(selectedTab)")
                }
                VideoPlayerView(index: index)
                    .frame(height: geometry.size.height * 0.45)
                Text(Date().addingTimeInterval(interval), style: .timer)
                  .font(.system(size: geometry.size.height * 0.07))
                Spacer()
                HStack(spacing: 150){
                    Button("Start Exercise") {}
                    Button("Done") {
                        if selectedTab + 1 == Exercise.exercises.count {
                            showSuccess.toggle()
                        } else {
                            selectedTab += 1
                        }
                    }.sheet(isPresented: $showSuccess) {
                        SuccesView(selectedTab: $selectedTab)
                    }
                }
                Spacer()
                Text("Symbol energy")
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
                
            }
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(9), index: 0)
}
