//
//  DetailViewController.swift
//  contactList
//
//  Created by 이명진 on 2023/07/12.
//

import UIKit

final class DetailViewController: UIViewController {

    private let detailView = DetailView()
    
    var member: Member?
    
    
    // view 교체
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonAction()
        
        detailView.member = member // didSet 동작
        
    }
    
    func setupButtonAction() {
        detailView.saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    @objc func saveButtonTapped(){
        print("버튼 눌림")
    }
}
