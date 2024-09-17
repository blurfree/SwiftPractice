//
//  SecondPathView.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import SwiftUI

struct SecondPathView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        Text("SecondPath")
        
        Button {
            
            /// Go to previous view
            path.removeLast()
            
        } label: {
            Text("Go Back")
        }
        
        Button {
            
            path.append(DestinationPath.thirdPath)
            
        } label: {
            
            Text("Go to Third")
        }
    }
}

#Preview {
    SecondPathView(path: .constant(NavigationPath()))
}
