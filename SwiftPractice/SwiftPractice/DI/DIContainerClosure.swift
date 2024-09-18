//
//  DIContainerClosure.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import Foundation

class DIContainerClosure {
    
    static let shared = DIContainerClosure()
    
    private var closures: [String: () -> Injectable] = [:]
    
    /// 컨테이너에 등록
    func register<T>(service: T.Type, closure: @escaping () -> Injectable) {
        
        let name = String(describing: service)
        closures[name] = closure
    }
    
    /// 컨테이너에서 클로저 불러오기
    func resolve<T>(service: T.Type) -> T where T: Injectable {
        
        let name = String(describing: service)
        
        guard let instance = closures[name]?() as? T else {
            
            fatalError("컨테이너에 해당하는 인스턴스가 없습니다.")
        }
        
        return instance
    }
    
    /// 컨테이너에서 인스턴스 삭제하기
    func remove<T>(service: T.Type) {
        
        let name = String(describing: service)
        
        closures.removeValue(forKey: name)
    }
}
