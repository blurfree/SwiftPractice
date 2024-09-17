//
//  SecondView.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack {
            
            Text("Second")
            
        }
    }
}

#Preview {
    SecondView()
}
