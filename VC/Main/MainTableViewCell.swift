//
//  MainTableViewCell.swift
//  RxSwiftExample
//
//  Created by Yessen Yermukhanbet on 8/13/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    private let mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    public func set(name: String, image: UIImage){
        self.setUI()
        self.mainLabel.text = name
        self.mainImage.image = image
    }
    private func setUI(){
        self.addSubview(mainImage)
        mainImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        mainImage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        mainImage.heightAnchor.constraint(equalToConstant: 15).isActive = true
        self.addSubview(mainLabel)
        mainLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 10).isActive = true
        mainLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}
