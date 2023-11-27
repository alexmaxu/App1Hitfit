//
//  WelcomeView.swift
//  App1Hitfit
//
//  Created by Alex  on 27/11/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.largeTitle)
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
    WelcomeView()
}
