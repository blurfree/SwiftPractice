//
//  CompletionBasic.swift
//  SwiftPractice
//
//  Created by blurfree on 9/17/24.
//

import Foundation

class MyClass {
    
    /// 프로퍼티로 클로저 선언
    var myCompletion: () -> Void
    
    /// 클로저의 내용을 인스턴스 생성과 동시에 명시해야 하는 상황,
    /// 이 클로저가 다른 메소드 등 다른 곳에서 호출되어야 하는 상황에서 이러한 구조를 가짐
    init(_ completion: @escaping () -> Void) {
        
        self.myCompletion = completion
    }
    
    func doSomething() {
        
        /// init 이후에 myCompletion 클로저가 호출되는 상황
        myCompletion()
    }
}

/// 사용 예시
let myClassInstance = MyClass {
    
    print("Completion was Called")
}

/// 나중에 클로저 호출
/// 출력: Completion was Called
/// myClassInstance.doSomething()
/// test
