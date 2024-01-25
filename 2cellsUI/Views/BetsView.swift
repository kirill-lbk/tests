//
//  BetsView.swift
//  2cellsUI
//
//  Created by Кирилл Лебедкин on 25.01.2024.
//

import SwiftUI

struct BetsView: View {
    let perBets: PerBets
    var body: some View {
        VStack {
            Rectangle()
                .fill(self.perBets.color)
                .frame(maxWidth: .infinity, minHeight: 8, alignment: .leading)
            Spacer()
            Text("\(self.perBets.quantity)(\(self.perBets.persent)%)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 14))
                .bold()
        }
    }
}
