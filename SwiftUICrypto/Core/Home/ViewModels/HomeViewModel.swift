//
//  HomeViewModel.swift
//  SwiftUICrypto
//
//  Created by Finn Christoffer Kurniawan on 05/08/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
  
  @Published var allCoins: [CoinModel] = []
  @Published var portfolioCoins: [CoinModel] = []
  
  private let dataService = CoinDataService()
  private var cancellables = Set<AnyCancellable>()
  
  init() {
    addSubscribers()
  }

  func addSubscribers() {
    
    dataService.$allCoins
      .sink { [weak self] (returnedCoins) in
        guard let self = self else { return }
        self.allCoins = returnedCoins
      }
      .store(in: &cancellables)
  }
}
