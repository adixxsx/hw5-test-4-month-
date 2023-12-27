//
//  SecondVC.swift
//  hw5(4-month)
//
//  Created by user on 26/12/23.
//

import UIKit
import SnapKit



class SecondVC: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    
    private lazy var mainImageView: UIImageView = MakerView.shared.createImage()
    
    private lazy var titleLabel: UILabel = MakerView.shared.createLabel(
        fontSize: 22, fontWeight: .medium, numberOfLines: 2
    )
    
    private let star1 = MakerView.shared.createImage(image: UIImage(named: "star"))
    private let star2 = MakerView.shared.createImage(image: UIImage(named: "star"))
    private let star3 = MakerView.shared.createImage(image: UIImage(named: "star"))
    private let star4 = MakerView.shared.createImage(image: UIImage(named: "star"))
    private let star5 = MakerView.shared.createImage(image: UIImage(named: "star"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = .white
        configureMainImageView()
        configureTitleLabel()
//        Star1()
//        Star2()
//        Star3()
//        Star4()
//        Star5()
    }
    
    private func configureMainImageView() {
        view.addSubview(mainImageView)
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(height / 2.15)
        }
    }
    
    private func configureTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(14)
            make.horizontalEdges.equalToSuperview().inset(16)
            make.height.equalTo(56)
        }
    }
    
    private func Star1() {
        view.addSubview(star1)
        
        star1.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            make.leading.equalTo(view.snp.leading).offset(12)
            make.trailing.equalTo(star2.snp.trailing).offset(1)
        }
    }
    private func Star2() {
        view.addSubview(star2)
        
        star2.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            make.leading.equalTo(star1.snp.leading).offset(1)
            make.trailing.equalTo(star3.snp.trailing).offset(1)
        }
    }
    private func Star3() {
        view.addSubview(star3)
        
        star3.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            make.leading.equalTo(star2.snp.leading).offset(1)
            make.trailing.equalTo(star4.snp.trailing).offset(1)
        }
    }
    private func Star4() {
        view.addSubview(star4)
        
        star4.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            make.leading.equalTo(star3.snp.leading).offset(1)
            make.trailing.equalTo(star5.snp.trailing).offset(1)
        }
    }
    private func Star5() {
        view.addSubview(star5)
        
        star5.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            make.leading.equalTo(star4.snp.leading).offset(1)
        }
    }
    
    func setupDataScreen(image: String, text: String) {
        mainImageView.image = UIImage(named: image)
        titleLabel.text = text
    }
}
