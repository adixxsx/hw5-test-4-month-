//
//  FurnitureCell.swift
//  hw5(4-month)
//
//  Created by user on 26/12/23.
//

import UIKit
import SnapKit



class FurnitureCell: UITableViewCell {
    
    private lazy var cellView: UIView = MakerView.shared.createView()
    
    private lazy var mainImageView: UIImageView = MakerView.shared.createImage(
        cornerRadius: 11
    )
    
    private lazy var titleLabel: UILabel = MakerView.shared.createLabel(
        fontSize: 20, fontWeight: .semibold
    )
    
    private lazy var descriptionLabel: UILabel = MakerView.shared.createLabel(
        textColor: .gray, fontSize: 15
    )
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init ( coder ) error")
    }
    
    private func setupCell() {
        configureCellView()
        configureMainImageView()
        configureTitleLabel()
        configureDescriptionLabel()
    }
    
    private func configureCellView() {
        contentView.addSubview(cellView)
        
        cellView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20)
            make.height.equalTo(220)
        }
    }
    
    private func configureMainImageView() {
        cellView.addSubview(mainImageView)
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(166)
        }
    }
    
    private func configureTitleLabel() {
        cellView.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(5)
            make.leading.equalToSuperview()
        }
    }
    
    private func configureDescriptionLabel() {
        cellView.addSubview(descriptionLabel)
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview()
        }
    }
    
    func setupDataCell(image: String, title: String, description: String) {
        mainImageView.image = UIImage(named: image)
        titleLabel.text = title
        descriptionLabel.text = description
    }
    
}
