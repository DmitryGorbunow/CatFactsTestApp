//
//  CatFactRow.swift
//  testLifeMart
//
//  Created by Dmitry Gorbunow on 4/16/24.
//

import SwiftUI

struct CatFactRow: View {
    
    let catFact: CatFact
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(catFact.fact)
            Text(catFact.length.description)
        }
        .foregroundColor(.black)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue.opacity(0.16))
        )
    }
}


