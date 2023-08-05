//
//  ReviewProvider+Ext.swift
//  SwiftUICrypto
//
//  Created by Finn Christoffer Kurniawan on 05/08/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
  
  static var dev: DeveloperPreview {
    return DeveloperPreview.instance
  }
}

class DeveloperPreview {
  
  static let instance = DeveloperPreview()
  private init() { }
  
  let homeVM = HomeViewModel()
  
  let coin =  CoinModel(
      id: "dummy_id",
      symbol: "BTC",
      name: "Bitcoin",
      image: "bitcoin_image",
      currentPrice: 45000.0,
      marketCap: 1000000000,
      marketCapRank: 1,
      fullyDilutedValuation: 1200000000,
      totalVolume: 50000000,
      high24H: 47000.0,
      low24H: 43000.0,
      priceChange24H: 2000.0,
      priceChangePercentage24H: 4.5,
      marketCapChange24H: 5000000,
      marketCapChangePercentage24H: 2.5,
      circulatingSupply: 18000000,
      totalSupply: 21000000,
      maxSupply: 21000000,
      ath: 58000.0,
      athChangePercentage: 8.5,
      athDate: "2021-04-15",
      atl: 30000.0,
      atlChangePercentage: -12.3,
      atlDate: "2021-02-10",
      roi: Roi(times: 2.0, currency: .usd, percentage: 150.0),
      lastUpdated: "2023-08-05",
      sparklineIn7D: SparklineIn7D(price: [44000.0, 47000.0, 46000.0, 48000.0, 45000.0, 47000.0, 46000.0]),
      priceChangePercentage24HInCurrency: 2.0,
      currentHolding: 5.0
  )
}
