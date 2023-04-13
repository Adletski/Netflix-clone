//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 07.04.2023.
//

import UIKit
import SnapKit

class HeroHeaderUIView: UIView {
    
    private let playButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        return button
    }()
    
    private let downloadButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        return button
    }()
    
    private let heroImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "harryPotter")
        return imageView
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        playButton.snp.makeConstraints { make in
            make.leading.equalTo(snp.leading).offset(80)
            make.bottom.equalTo(snp.bottom).offset(-35)
            make.width.equalTo(110)
        }
        
        downloadButton.snp.makeConstraints { make in
            make.trailing.equalTo(snp.trailing).offset(-80)
            make.bottom.equalTo(snp.bottom).offset(-35)
            make.width.equalTo(110)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
