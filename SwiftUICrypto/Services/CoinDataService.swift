//
//  CoinDataService.swift
//  SwiftUICrypto
//
//  Created by Finn Christoffer Kurniawan on 05/08/23.
//

import Foundation
import Combine

class CoinDataService {
  
  @Published var allCoins: [CoinModel] = []
  
  var coinSubscription: AnyCancellable?
  
  init() {
    getCoins()
  }
  
  private func getCoins() {
    guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en") else { return }
    
    coinSubscription = NetworkManager.download(url: url)
      .decode(type: [CoinModel].self, decoder: JSONDecoder())
      .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnCoins) in
        guard let self = self else { return }
        self.allCoins = returnCoins
        self.coinSubscription?.cancel()
      })
  }
}
