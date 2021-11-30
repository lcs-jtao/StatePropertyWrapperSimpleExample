//
//  TriangleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Joyce Tao on 2021-11-29.
//

import SwiftUI

struct TriangleView: View {
    // MARK: Stored properties
    @State var height: Double = 10.0
    @State var base: Double = 10.0
    
    // MARK: Computed properties
    var area: Double {
        return (height * base) / 2
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Height input
            Text("Height:")
                .bold()
            
            Group {
                HStack {
                    Spacer()
                    Text("\(String(format: "%.2f", height))")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: $height,
                                   in: 0.0...100.0,
                                   label: {
                                Text("Height")
                            },
                                   minimumValueLabel: {
                                Text("0.0")
                            },
                                   maximumValueLabel: {
                                Text("100.0")
                            })
            }
            
            
            // Base input
            Text("Base:")
                .bold()
            
            Group {
                HStack {
                    Spacer()
                    Text("\(String(format: "%.2f", base))")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: $base,
                                   in: 0.0...100.0,
                                   label: {
                                Text("Base")
                            },
                                   minimumValueLabel: {
                                Text("0.0")
                            },
                                   maximumValueLabel: {
                                Text("100.0")
                            })
            }
            
            
            // Area output
            Text("Area:")
                .bold()
            Text("\(String(format: "%.1f", area)) square units")
            Spacer()
        }
        .padding()
        .navigationTitle("Triangle")
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TriangleView()
        }
    }
}
