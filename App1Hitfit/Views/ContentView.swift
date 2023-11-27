//
//  ContentView.swift
//  App1Hitfit
//
//  Created by Alex  on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WelcomeView()
            Text("To HitFit App!")
            Spacer()
            HStack {
                Text("Get Fit My Friend")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
