//
//  Member.swift
//  contactList
//
//  Created by 이명진 on 2023/07/12.
//

import UIKit

// 프로토콜 생성
protocol MemberDelegate: AnyObject { // class에서만 사용 가능한 프로토콜
    
    func addNewMember(_ member: Member)
    func update(index: Int, _ member: Member)
    
}






struct Member {
    
    lazy var memberImage: UIImage? = {
        
        // 이름이 없으면, 기본이미지 추가
        guard let name = name else {
            return UIImage(systemName: "person") // nil
        }
        
        // 해당 이름으로된 이미지가 없으면 기본 이미지 세팅 nil x
        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
    }()
    
    // 멤버의 순서를 위한 타입 저장 속성
    static var memberNumbers: Int = 0
    
    let memberId: Int
    var name:String?
    var age: Int?
    var phone: String?
    var address: String?
    
    init(name: String?, age: Int?, phone: String?, address: String?) {
        
        self.memberId = Member.memberNumbers
        
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        // 멤버 생성시, memberNumbers 저장 속성 += 1
        Member.memberNumbers += 1
    }
    
    
}
