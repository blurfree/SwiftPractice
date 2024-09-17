//
//  FirstView.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import SwiftUI

enum Destination: Hashable {
    
    case third, fourth
}

struct FirstView: View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Text("FirstView")
                
                NavigationLink(destination: SecondView()) {
                    
                    Text("Go To Second")
                        .foregroundStyle(.blue)
                }
                
                NavigationLink(value: Destination.third) {
                    
                    Text("Go to Third")
                        .foregroundStyle(.blue)
                }
                
                NavigationLink(value: Destination.fourth) {
                    
                    Text("Go to Fourth")
                        .foregroundStyle(.blue)
                }
                
                NavigationLink(value: "Fifth") {
                    
                    Text("Go to Fifth")
                        .foregroundStyle(.blue)
                }
                
                NavigationLink(value: "Sixth") {
                    
                    Text("Go to Sixth")
                        .foregroundStyle(.blue)
                }
                .navigationDestination(for: Destination.self) { destination in
                    
                    switch destination {
                        
                    case .third:
                        ThirdView()
                        
                    case .fourth:
                        FourthView()
                    }
                }
                .navigationDestination(for: String.self) { destination in
                    
                    switch destination {
                        
                    case "Fifth":
                        FifthView()
                        
                    case "Sixth":
                        SixthView()
                        
                    default:
                        FirstView()
                        
                    }
                }
            }
        }
    }
}

#Preview {
    FirstView()
}
