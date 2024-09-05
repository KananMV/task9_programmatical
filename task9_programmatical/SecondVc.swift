//
//  SecondVc.swift
//  task9_programmatical
//
//  Created by Kenan Memmedov on 05.09.24.
//

import UIKit
class SecondVc: UIViewController{
    private let centerLabel:UILabel = {
       let label = UILabel()
        label.text = "Tap Gesture Worked"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20,weight: .bold)
        label.isUserInteractionEnabled = true
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(centerLabel)
        view.backgroundColor = .orange
        tapGs()
        centerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func tapGs(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        self.centerLabel.addGestureRecognizer(tapGesture)
    }
    @objc func onTap(_ sender:UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
    
}
extension SecondVc: UIGestureRecognizerDelegate{
    
}

