//
//  ViewController.swift
//  task9_programmatical
//
//  Created by Kenan Memmedov on 02.09.24.
//

import UIKit

class ViewController: UIViewController {
    private let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Profile"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20,weight: .bold)
        label.textAlignment = .center
        return label
    }()
    private let bellButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("", for: .normal)
        button.setImage(UIImage(named: "bell_image"), for: .normal)
        return button
    }()
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "profileImage")
        return image
        
    }()
    let profileLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Amelia Barlow"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20,weight: .bold)
        label.textAlignment = .center
        return label
    }()
    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileImage,profileLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 24
        return stackView
    }()
    private lazy var redeemView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "redeemviewColor")
        view.layer.cornerRadius = 24
        view.addSubview(redeemLabel1)
        view.addSubview(redeemLabel2)
        view.addSubview(redeemButton)
        
        redeemLabel1.topAnchor.constraint(equalTo: view.topAnchor, constant: 24).isActive = true
        redeemLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        redeemLabel2.topAnchor.constraint(equalTo: redeemLabel1.bottomAnchor, constant: 24).isActive = true
        redeemLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 42).isActive = true
        redeemLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -42).isActive = true
        
        redeemButton.topAnchor.constraint(equalTo: redeemLabel2.bottomAnchor, constant: 12).isActive = true
        redeemButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redeemButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        redeemButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        return view
    }()
    private let redeemLabel1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "You won 300 points"
        label.font = .systemFont(ofSize: 24,weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    private let redeemLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thanks for riding with us! you won \n 300 point from your last ride"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14,weight: .medium)
        label.textColor = .white
        return label
    }()
    private let redeemButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let redeemText = NSAttributedString(string: "Redeem now 🔥", attributes: [
            .font: UIFont.systemFont(ofSize: 10, weight: .medium),
            .foregroundColor: UIColor.blue
        ])
        let fullString = NSMutableAttributedString()
        fullString.append(redeemText)
        button.setAttributedTitle(fullString, for: .normal)
        button.layer.cornerRadius = 18
        button.backgroundColor = .white
        return button
        
    }()
    private lazy var optionsView: UIView = {
        let view = UIView()
        view.addSubview(optionsStackView)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        return view
    }()
    private lazy var optionsStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [profileInfoStack,thinView1,cardStackView,thinView2,settingStackView,thinView3,activitiesStackView,thinView4,walletStackView])
        view.backgroundColor = .white
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alignment = .fill
        view.distribution = .fill
        view.spacing = 12
        return view
    }()
    
    private lazy var profileInfoStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileInfoInnerStack,sectionRightIcon1])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        return stackView
    }()
    private let profileIconImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "profile_icon")
        return image
    }()
    private let profileSectionLabel: UILabel = {
        let label = UILabel()
        label.text = "Profile info"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16,weight: .medium)
        label.textAlignment = .center
        return label
    }()
    private let sectionRightIcon1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let sectionRightIcon2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let sectionRightIcon3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let sectionRightIcon4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let sectionRightIcon5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .black
        image.contentMode = .scaleAspectFit
        return image
    }()
    private lazy var profileInfoInnerStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileIconImage,profileSectionLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 16
        return stackView
    }()
    private let thinView1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "thinView_color")
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    private let thinView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "thinView_color")
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    private let thinView3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "thinView_color")
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    private let thinView4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "thinView_color")
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    private lazy var cardStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [cardInnerStackView,sectionRightIcon2])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        return stackView
    }()
    private lazy var cardInnerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [cardImage,cardLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 16
        return stackView
    }()
    private let cardImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "card_icon")
        return image
    }()
    private let cardLabel: UILabel = {
        let label = UILabel()
        label.text = "Cards"
        label.font = .systemFont(ofSize: 16,weight: .medium)
        label.textColor = .black
        return label
    }()
    private lazy var settingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [settingInnerStackView,sectionRightIcon3])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        return stackView
    }()
    private lazy var settingInnerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [settingImage,settingLabel])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 16
        return stackView
    }()
    private let settingImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "settings_icon")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let settingLabel: UILabel = {
        let label = UILabel()
        label.text = "Settings"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16,weight: . medium)
        return label
    }()
    private lazy var activitiesStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [activitiesInnerStackView,sectionRightIcon4])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        return stackView
    }()
    private lazy var activitiesInnerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [activitiesImage,activitiesLabel])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 16
        return stackView
    }()
    private let activitiesImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "activities_icon")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let activitiesLabel: UILabel = {
        let label = UILabel()
        label.text = "Activities"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16,weight: . medium)
        return label
    }()
    private lazy var walletStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [walletInnerStackView,sectionRightIcon5])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        return stackView
    }()
    private lazy var walletInnerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [walletImage,walletLabel])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 16
        return stackView
    }()
    private let walletImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "wallet_icon")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let walletLabel: UILabel = {
        let label = UILabel()
        label.text = "My wallet"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16,weight: . medium)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
//        pinchGs()
//        panGs()
//        tapGs()
//        rotateGs()
        
    }
    func pinchGs(){
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(onPinch(_:)))
        self.redeemView.addGestureRecognizer(pinchGesture)
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    }
    @objc func onPinch(_ sender: UIPinchGestureRecognizer){
        let piece = sender.view
        var newScale = sender.scale
        if newScale < 1.0 {
            newScale = 1.0
        }
        if sender.state == .began {
            piece!.layer.zPosition = 1
        }
        if sender.state == .changed{
            sender.view?.transform = (sender.view?.transform.scaledBy(x: min(1.05,newScale), y: min(1.05,newScale)))!
            sender.scale = 1.0
            
        }
        if sender.state == .ended{
            UIView.animate(withDuration: 0.3) {
                sender.view?.transform = CGAffineTransform.identity
            }
        }
    }
    func panGs(){
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(onPan(_:)))
        redeemView.addGestureRecognizer(panGesture)
    }
    var initialCenter = CGPoint()
    var newCenter = CGPoint()
    @objc func onPan(_ sender:UIPanGestureRecognizer){
        let piece = sender.view
        let translation = sender.translation(in: piece?.superview)
         
        if sender.state == .began{
            self.initialCenter = piece!.center
            self.scrollView.isScrollEnabled = false
        }
        if sender.state == .changed{
            self.newCenter = CGPoint(x: initialCenter.x + translation.x, y: initialCenter.y + translation.y)
            piece?.center = newCenter
        }
        if sender.state == .ended{
            UIView.animate(withDuration: 0.3){
                piece?.center = self.initialCenter
            }
            self.scrollView.isScrollEnabled = true
        }
    }
    func tapGs(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        redeemView.addGestureRecognizer(tapGesture)
    }
    
    @objc func onTap(_ sender: UITapGestureRecognizer){
        print("asc")
        let secondVC = SecondVc()
        print("tapped")
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
    }
    func rotateGs(){
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: #selector(onRotate(_:)))
        redeemView.addGestureRecognizer(rotateGesture)
    }
    @objc func onRotate(_ sender:UIRotationGestureRecognizer){
        if sender.state == .changed{
            sender.view?.transform = CGAffineTransform(rotationAngle: sender.rotation)
            self.redeemView.transform = (sender.view?.transform.rotated(by: sender.rotation))!
        }
    }
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        return view
    }()
    private let scrollInnerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setup(){
        self.redeemView.isUserInteractionEnabled = true
        view.backgroundColor = UIColor(named: "viewBackgroundColor")
        view.addSubview(scrollView)
        scrollView.addSubview(scrollInnerView)
        scrollInnerView.addSubview(topLabel)
        scrollInnerView.addSubview(bellButton)
        scrollInnerView.addSubview(profileStackView)
        scrollInnerView.addSubview(redeemView)
        scrollInnerView.addSubview(optionsView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -20),
            
            scrollInnerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            scrollInnerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollInnerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollInnerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollInnerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        topLabel.topAnchor.constraint(equalTo: scrollInnerView.topAnchor, constant: 10).isActive = true
        topLabel.centerXAnchor.constraint(equalTo: scrollInnerView.centerXAnchor).isActive = true
        
        bellButton.centerYAnchor.constraint(equalTo: topLabel.centerYAnchor).isActive = true
        bellButton.trailingAnchor.constraint(equalTo: scrollInnerView.trailingAnchor, constant: -28).isActive = true
        
        profileStackView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 26).isActive = true
        profileStackView.centerXAnchor.constraint(equalTo: scrollInnerView.centerXAnchor).isActive = true
        
        redeemView.topAnchor.constraint(equalTo: profileStackView.bottomAnchor, constant: 20).isActive = true
        redeemView.leadingAnchor.constraint(equalTo: scrollInnerView.leadingAnchor, constant: 26).isActive = true
        redeemView.trailingAnchor.constraint(equalTo: scrollInnerView.trailingAnchor, constant: -26).isActive = true
        redeemView.heightAnchor.constraint(equalToConstant: 179).isActive = true
    
        optionsView.topAnchor.constraint(equalTo: redeemView.bottomAnchor, constant: 16).isActive = true
        optionsView.leadingAnchor.constraint(equalTo: scrollInnerView.leadingAnchor,constant: 26).isActive = true
        optionsView.trailingAnchor.constraint(equalTo: scrollInnerView.trailingAnchor,constant: -26).isActive = true
        optionsView.bottomAnchor.constraint(equalTo: scrollInnerView.bottomAnchor).isActive = true
        
        optionsStackView.topAnchor.constraint(equalTo: optionsView.topAnchor,constant: 20).isActive = true
        optionsStackView.bottomAnchor.constraint(equalTo: optionsView.bottomAnchor,constant: -10).isActive = true
        optionsStackView.leadingAnchor.constraint(equalTo: optionsView.leadingAnchor,constant: 16).isActive = true
        optionsStackView.trailingAnchor.constraint(equalTo: optionsView.trailingAnchor,constant: -16).isActive = true
        
    }
    
}
extension ViewController: UIGestureRecognizerDelegate{
    
}

