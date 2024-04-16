//
//  CatsFactsAPI.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import Foundation
import Combine

final class CatFactAPI {
    func fetchCatFact() -> AnyPublisher<CatFact, Never> {
        let url = URL(string: "https://catfact.ninja/fact")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: CatFact.self, decoder: JSONDecoder())
            .replaceError(with: CatFact(fact: "Failed to fetch fact", length: 0))
            .eraseToAnyPublisher()
    }
}
