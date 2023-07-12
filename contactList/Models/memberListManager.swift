//
//  memberListManager.swift
//  contactList
//
//  Created by 이명진 on 2023/07/12.
//

import UIKit

final class memberListManager {
    
    private var membersList : [Member] = []
    
    func makeMembersListDatas() {
        
        membersList = [
            Member(name: "홍길동", age: 20, phone: "010-1111-2222", address: "서울"),
            Member(name: "임꺽정", age: 23, phone: "010-2222-3333", address: "서울"),
            Member(name: "스티브", age: 50, phone: "010-1234-1234", address: "미국"),
            Member(name: "쿡", age: 30, phone: "010-7777-7777", address: "캘리포니아"),
            Member(name: "베조스", age: 50, phone: "010-2222-7777", address: "하와이"),
            Member(name: "배트맨", age: 40, phone: "010-3333-1234", address: "고담씨티"),
            Member(name: "조커", age: 40, phone: "010-4321-1234", address: "고담씨티")
        ]
        
    }
    
    // 전체 멤버 리스트 얻기
    func getMemberList() -> [Member] {
        return membersList
    }
    
    // 멤버 추가
    func makeNewMembers(_ member: Member){
        membersList.append(member)
    }
    
    // 멤버 업데이트
    func updateMemberInfo(index: Int, _ member:Member) {
        membersList[index] = member
    }
    
    
    
}
