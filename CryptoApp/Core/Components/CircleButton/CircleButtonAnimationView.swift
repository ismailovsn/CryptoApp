//
//  CircleButtonAnimationView.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/02.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate: Bool
    
    var body: some View {
        withAnimation(animate ? .easeInOut(duration: 1.0) : .none) {
            Circle()
                .stroke(lineWidth: 5.0)
                .scale(animate ? 1.0 : 0.0)
                .opacity(animate ? 0.0 : 1.0)
        }
        
//            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none)
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
