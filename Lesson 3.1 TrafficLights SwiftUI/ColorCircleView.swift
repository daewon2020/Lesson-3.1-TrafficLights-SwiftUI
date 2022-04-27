//
//  ColorCircleView.swift
//  Lesson 3.1 TrafficLights SwiftUI
//
//  Created by Константин Андреев on 27.04.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .shadow(color: .white, radius: 10)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
