//
//  OddsCellView.swift
//  2cellsUI
//
//  Created by Кирилл Лебедкин on 25.01.2024.
//

import SwiftUI

struct OddsCellView: View {
    let title: String
    let odds: [Odds]
    var body: some View {
        VStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
                .bold()
            HStack {
                VStack {
                    ForEach(0..<self.odds.count, id: \.self)
                    { Rect(odd: self.odds[$0]) }
                }
                VStack {
                    ForEach((0..<self.odds.count), id: \.self) 
                    { Text("\(self.odds[$0].name)")
                            .frame(width: 90, alignment: .leading)
                            .font(.system(size: 16))
                            .opacity(0.2)
                            .tint(.gray)
                            .bold()
                    }
                }
                VStack {
                    ForEach((0..<self.odds.count), id: \.self)
                    { Text("\(self.odds[$0].odd.formatted(.number.precision(.fractionLength(2))))")
                            .frame(alignment: .leading)
                            .font(.system(size: 16))
                            .bold()
                    }
                }
            }
        }
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
        .listRowSeparator(.hidden)
    }
}
