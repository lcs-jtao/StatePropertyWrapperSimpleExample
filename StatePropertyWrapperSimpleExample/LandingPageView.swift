//
//  LandingPageView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Joyce Tao on 2021-11-29.
//

import SwiftUI

struct LandingPageView: View {
    var body: some View {
        List {
            NavigationLink(destination: {
                CircleView()
            }, label: {
                Text("Circle")
            })
            NavigationLink(destination: {
                TriangleView()
            }, label: {
                Text("Triangle")
            })
        }
        .navigationTitle("Figures")
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandingPageView()
        }
    }
}
