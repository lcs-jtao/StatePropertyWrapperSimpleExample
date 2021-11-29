//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Joyce Tao on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    // @State is a "property wrapper"
    // "radius" is still just a property of the structure
    // The property wrapper alerts SwiftUI to the fact that we want change to this property to show in the UI
    @State var radius: Double = 10.0
    
    // MARK: Computed properties
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius")
                .bold()
            TextField("Radius",
                      text: .constant(""),
                      prompt: Text("e.g.: 24.5"))
                .keyboardType(.decimalPad)
            
            // Output
            Text("Area:")
                .bold()
            Text("24.0 square units")
            Spacer()
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
