//
//  Container.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import Foundation

class DIContainer {
    
    static let shared = DIContainer()
    
    private var modules: [String: Module] = [:]
    
    private init() { }
    
    func register(module: Module) {
        
        modules[module.name] = module
    }
    
    func resolve<T>(for name: String? = nil) -> T {
        
        let name = name ?? String(describing: T.self)
        
        guard let instance: T = modules[name]?.resolve() as? T else {
            fatalError("컨테이너에 해당 인스턴스가 존재하지 않음!")
        }
        
        return instance
    }
    
    
}


