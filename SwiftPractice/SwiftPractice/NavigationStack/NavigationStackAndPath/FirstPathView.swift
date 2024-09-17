//
//  FirstPathView.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import SwiftUI

enum DestinationPath: Hashable {
    
    case secondPath
    case thirdPath
}

struct FirstPathView: View {
    
    @State var path = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $path) {
            
            Text("First")
            
            Button {
                
                /// Go to next view
                path.append(DestinationPath.secondPath)
                
            } label: {
                Text("Go to Second")
            }
            .navigationDestination(for: DestinationPath.self) { destination in
             
                switch destination {
                    
                case .secondPath:
                    SecondPathView(path: $path)
                    
                case .thirdPath:
                    ThirdPathView(path: $path)
                    
                }
            }
        }
    }
}

#Preview {
    FirstPathView()
}

