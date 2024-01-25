//
//  OddView.swift
//  2cellsUI
//
//  Created by Кирилл Лебедкин on 25.01.2024.
//

import SwiftUI

struct Rect: View {
    @State var lineSize: CGSize = .zero
    let odd: Odds
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.gray)
                .opacity(0.2)
                .frame(height: 8, alignment: .center)
                .onAppear {
                    self.lineSize = geometry.size
                }
            Rectangle()
                .fill(self.odd.color)
                .frame(width: (self.odd.odd * (self.lineSize.width / CGFloat(self.odd.maxOdd))), height: 8, alignment: .center)
            
        }
        .frame(height: 8)
        .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
    }
}
