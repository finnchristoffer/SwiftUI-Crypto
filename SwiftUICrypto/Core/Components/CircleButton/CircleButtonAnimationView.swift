//
//  CircleButtonAnimationView.swift
//  SwiftUICrypto
//
//  Created by Finn Christoffer Kurniawan on 05/08/23.
//

import SwiftUI

struct CircleButtonAnimationView: View {
  
  @Binding var animate: Bool
  
  var body: some View {
    Circle()
      .stroke(lineWidth: 5.0)
      .scale(animate ? 1.0 : 0.0)
      .opacity(animate ? 0.0 : 1.0)
      .onTapGesture {
          withAnimation(.easeOut(duration: 1.0)) {
              animate.toggle()
          }
      }
  }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
  static var previews: some View {
    CircleButtonAnimationView(animate: .constant(false))
      .foregroundColor(.red)
      .frame(width: 100, height: 100)
  }
}
