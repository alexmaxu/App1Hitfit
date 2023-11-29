//
//  HistoryStore.swift
//  App1Hitfit
//
//  Created by Alex  on 29/11/23.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
      #if DEBUG
      createDevData()
      #endif
    }
}

