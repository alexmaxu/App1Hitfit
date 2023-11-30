//
//  WelcomeView.swift
//  App1Hitfit
//
//  Created by Alex  on 27/11/23.
//

import SwiftUI

struct HeaderView: View {
    var index: Int
    @Binding var selectedTab: Int
    var body: some View {
        VStack {
            Text(Exercise.exercises[index].exerciseName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
            HStack {
                ForEach(Exercise.exercises.indices, id: \.self) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index+1).circle\(fill)").onTapGesture {
                        selectedTab = index
                    }
                   
                }
            }
        }
    }
}

#Preview {
    HeaderView(index: 0, selectedTab: .constant(0))
}
