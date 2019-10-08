//
//  ContentView.swift
//  Rotation3DEffectXAxis
//
//  Created by ramil on 08.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = 25.0
    var body: some View {
        VStack {
            Text("You can rotate views in three dimensions on the X, Y and Z axes. You can rotate on one axis or many axes.")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
                .overlay(Text("45 Back on X Axis")
                .font(.largeTitle).bold()
            ) // Make sure only the x axis has a value
                .rotation3DEffect(Angle(degrees: 45), axis: (x: 1.0, y: 0.0, z: 0.0))
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .overlay(Text("-45 Back on X Axis")
                .font(.largeTitle).bold()
            )
                .rotation3DEffect(Angle(degrees: -45), axis: (x: 1.0, y: 0.0, z: 0.0))
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.purple)
                .overlay(Text("Move slider to adjust ritation")
                .font(.largeTitle).bold()
            )
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 1.0, y: 0.0, z: 0.0))
            
            Slider(value: $degrees, in: -180...180, step: 1).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
