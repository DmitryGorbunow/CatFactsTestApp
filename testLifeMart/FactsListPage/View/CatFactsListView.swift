//
//  ListView.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Foundation
import SwiftUI

struct CatFactsListView: View {
    
    @StateObject var viewModel = CatFactsListViewModel()
    
    var body: some View {
        VStack {
            Button("Refresh") {
                viewModel.fetchFacts()
            }
            
            Button("Sort") {
                viewModel.sortFactsByLength()
            }
            
            if viewModel.isLoading {
                ProgressView()
            }
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.facts, id: \.self) { catFact in
                        CatFactRow(catFact: catFact)
                    }
                }
                .padding()
            }
        }
        .onAppear {
            viewModel.fetchFacts()
        }
    }
}




