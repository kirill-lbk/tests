//
//  BetsCellView.swift
//  2cellsUI
//
//  Created by Кирилл Лебедкин on 25.01.2024.
//

import SwiftUI

struct BetsCellView: View {
    @State var blockSize: CGSize = .zero
    let title: String
    let perBets: [PerBets]
    let img: Image
    var body: some View {
        VStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
                .bold()
            GeometryReader { geometry in
                HStack {
                    self.img
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 50, alignment: .leading)
                    
                    Text("\(self.returnQuantity()) ставки")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                }
                .onAppear {
                    self.blockSize = geometry.size
                    self.blockSize.width -= 16
                    print(geometry.size)
                }
            }
            Spacer(minLength: 20)
            HStack {
                ForEach(0..<self.perBets.count, id: \.self)
                { BetsView(perBets: self.perBets[$0])
                        .frame(width: self.blockSize.width * (CGFloat(self.perBets[$0].persent) / 100))
                }
            }
            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
        .listRowSeparator(.hidden)
    }
    func returnQuantity() -> Int {
        var q: Int = 0
        for i in self.perBets {
            q += i.quantity
        }
        return q
    }
}
