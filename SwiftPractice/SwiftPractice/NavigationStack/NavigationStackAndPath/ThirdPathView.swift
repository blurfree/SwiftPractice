//
//  ThirdPathView.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import SwiftUI

struct ThirdPathView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        
        Text("Third")
        
        Button {
            
            /// Go to FirstView
            path.removeLast(path.count)
            
        } label: {
            
            Text("Go Back to First")
        }
    }
}

#Preview {
    ThirdPathView(path: .constant(NavigationPath()))
}
