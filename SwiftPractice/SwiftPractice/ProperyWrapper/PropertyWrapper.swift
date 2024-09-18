//
//  PropertyWrapper.swift
//  SwiftPractice
//
//  Created by blurfree on 9/18/24.
//

import Foundation

@propertyWrapper
struct Uppercase {
    
    private var valueee: String
    
    var wrappedValue: String {
        
        get { return valueee }
        set { valueee = newValue }
    }
    
    init(wrappedValue: String) {
        self.valueee = wrappedValue.uppercased()
    }
}

struct User {
    
    @Uppercase var name: String
}

var user = User(name: "john")

@propertyWrapper
struct UserDefaultsWrapper<T> {
    
    var key: String
    var value: T
    
    var wrappedValue: T {
        
        
        
    }
    
}
