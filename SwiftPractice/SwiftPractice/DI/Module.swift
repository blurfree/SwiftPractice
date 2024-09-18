//
//  Module.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import Foundation

/// 주입하고자 하는 타입이 채택할 프로토콜. 제약 조건을 주는 것
public protocol Injectable { }

public struct Module {
    
    let name: String
    /// 클로저를 저장한다는 것은 인스턴스를 지연 초기화하는 것을 의미
    /// 필요할 때까지 실제 인스턴스를 생성하지 않고 인스턴스를 생성하는 방법(클로저)만 저장해두는 것.
    let resolve: () -> Injectable
    
    /// resolve 프로퍼티에 탈출 클로저를 할당하도록 생성자 정의
    init(name: String, resolve: @escaping () -> Injectable) {
        self.name = name
        self.resolve = resolve
    }
    
}

