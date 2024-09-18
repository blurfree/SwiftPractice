//
//  DIContainerInstance.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import Foundation

class DIContainerInstance {
    
    static let shared = DIContainerInstance()

    private var instances: [String: Injectable] = [:]
    
    /// 컨테이너에 등록
    func register<T>(service: T.Type, instance: T) where T: Injectable {
        
        let name = String(describing: service)
        instances[name] = instance
    }
    
    /// 컨테이너에서 인스턴스 불러오기
    func resolve<T>(service: T.Type) -> T where T: Injectable {
     
        let name = String(describing: service)
        
        guard let instance = instances[name] as? T else {
            
            fatalError("컨테이너에 해당하는 인스턴스가 없습니다.")
        }
        
        return instance
    }
    
    /// 컨테이너에서 인스턴스 삭제하기
    func remove<T>(service: T.Type) {
        
        let name = String(describing: service)
        
        instances.removeValue(forKey: name)
    }
}

