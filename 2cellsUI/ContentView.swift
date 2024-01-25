//
//  ContentView.swift
//  2cellsUI
//
//  Created by Кирилл Лебедкин on 24.01.2024.
//

import SwiftUI

struct Odds {
    let name: String
    let odd: Double
    let color: Color
    let maxOdd: Double
}
struct PerBets {
    let name: String
    let quantity: Int
    let persent: Int
    let color: Color
}
struct ContentView: View {
    let odds = [Odds(name: "Выигрыш", odd: 1.94, color: .green, maxOdd: 3),
                Odds(name: "Проигрыш", odd: 2.17, color: .red, maxOdd: 3),
                Odds(name: "Возврат", odd: 1.26, color: .gray, maxOdd: 3)]
    let perBets = [PerBets(name: "Выигрыши", quantity: 16, persent: 50, color: .green),
                   PerBets(name: "Проигрыш", quantity: 11, persent: 34, color: .red),
                   PerBets(name: "Возврат", quantity: 5, persent: 16, color: .gray)]
    let img = Image("bets")
    var body: some View {
        NavigationView {
            List {
                OddsCellView(title: "Средние коэффициенты", odds: self.odds)
                    .border(.black, width: 1)
                BetsCellView(title: "Выигрыши/проигрыши по букмекерам", perBets: self.perBets, img: self.img)
                    .border(.black, width: 1)
            }.listStyle(.plain)
                .navigationTitle("test")
        }
    }
}
