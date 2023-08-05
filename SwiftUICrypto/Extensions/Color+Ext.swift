//
//  Color+Ext.swift
//  SwiftUICrypto
//
//  Created by Finn Christoffer Kurniawan on 05/08/23.
//

import Foundation
import SwiftUI

extension Color {
  
  static let theme = Colortheme()
  
}

struct Colortheme {
  
  let accent = Color("AccentColor")
  let background = Color("BackgroundColor")
  let green = Color("GreenColor")
  let red = Color("RedColor")
  let secondaryText = Color("SecondaryTextColor")
}
