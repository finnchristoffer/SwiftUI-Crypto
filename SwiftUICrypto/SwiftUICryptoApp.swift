//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Finn Christoffer Kurniawan on 05/08/23.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
  
    @StateObject private var vm = HomeViewModel()
  
    var body: some Scene {
        WindowGroup {
          NavigationView {
            HomeView()
              .navigationBarHidden(true)
          }
          .environmentObject(vm)
        }
    }
}
