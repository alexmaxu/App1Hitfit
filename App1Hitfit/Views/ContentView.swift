//
//  ContentView.swift
//  App1Hitfit
//
//  Created by Alex  on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            WelcomeView()
            ForEach(Exercise.exercises.indices, id: \.self) {index in
                ExerciseView(index: index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
