//
//  ContentView.swift
//  App1Hitfit
//
//  Created by Alex  on 27/11/23.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Welcome")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                }
                Text("To HitFit App!")
                Spacer()
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
            }
            VStack {
                
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.title)
                        Text("""
                     With high
                     intensity interval
                     training.
                     """)
                    }
                    Image("step-up copia")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200.0, height: 200.0)
                        .clipShape(Circle())
                    
                }
                Button(action: {selectedTab = 0} ) {
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(.title2)
                .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 2))
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    WelcomeView(selectedTab: .constant(9))
}
