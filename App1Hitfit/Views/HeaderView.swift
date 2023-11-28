//
//  WelcomeView.swift
//  App1Hitfit
//
//  Created by Alex  on 27/11/23.
//

import SwiftUI

struct HeaderView: View {
    var index: Int
    var body: some View {
        VStack {
            Text(Exercise.exercises[index].exerciseName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
        }
    }
}

#Preview {
    HeaderView(index: 0)
}
