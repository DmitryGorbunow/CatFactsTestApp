//
//  ListViewModel.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Combine
import Foundation

final class CatFactsListViewModel: ObservableObject {
    
    @Published var facts = [CatFact]()
    @Published var isLoading: Bool = false
    
    private let numberOfFacts = 20
    private let catsFactAPI = CatFactAPI()
    private var cancellableSet: Set<AnyCancellable> = []
    
    func fetchFacts() {
        
        isLoading = true
        
        let arrayOfPublishers = (0..<numberOfFacts).map { _ in
            catsFactAPI.fetchCatFact()
        }
        
        Publishers.Sequence(sequence: arrayOfPublishers)
            .flatMap{ $0 }
            .collect()
            .map { facts -> [CatFact] in
                let uniqueFacts = Array(Set(facts))
                return uniqueFacts
            }
            .receive(on: RunLoop.main)
            .sink { [weak self] facts in
                self?.isLoading = false
                self?.facts = facts
            }
            .store(in: &cancellableSet)
    }
    
    func refresh() {
        facts.removeAll()
        fetchFacts()
    }
    
    func sortFactsByLength() {
        let filteredAndSortedFacts = facts.filter { $0.length >= 50 && $0.length <= 100 }
            .sorted { $0.length < $1.length }
        
        facts = filteredAndSortedFacts
    }
}
