//
//  SuccesView.swift
//  App1Hitfit
//
//  Created by Alex  on 29/11/23.
//

import SwiftUI

struct SuccesView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "hand.raised.fill").resizedToFill(width: 75, height: 75).foregroundColor(.yellow)
                    Image(systemName: "hand.raised.fill").resizedToFill(width: 75, height: 75).foregroundColor(.orange)
                    Image(systemName: "hand.raised.fill").resizedToFill(width: 75, height: 75).foregroundColor(.red)
                }
                    Text("High Five!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                Text("""
                  Good job completing all four exercises!
                  Remember tomorrow's another day.
                  So eat well and get some rest.
                  """)
                .foregroundStyle(.gray).multilineTextAlignment(.center)
            }
            VStack {
                Spacer()
                Button("Continue") {
                    dismiss()
                    selectedTab = 9
                }
                    .padding()
            }
        }
    }
}

#Preview {
    SuccesView(selectedTab: .constant(3))
}
