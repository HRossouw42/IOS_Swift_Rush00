//
//  deathCell.swift
//  TableView
//
//  Created by Ryan de Kwaadsteniet on 10/9/19.
//  Copyright © 2019 Ryan de Kwaadsteniet. All rights reserved.
//

import Foundation
import UIKit

class EventCell: UITableViewCell {
    
    var name: String?
    var desc: String?
    var date: String?
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    var descLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    var dateLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.right
        label.font = UIFont.italicSystemFont(ofSize: 12)
        label.textColor = .darkGray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(nameLabel)
        self.addSubview(descLabel)
        self.addSubview(dateLabel)
        
        descLabel.sizeToFit()
        
        nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10) .isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: self.descLabel.topAnchor).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: self.dateLabel.leftAnchor).isActive = true
        
        descLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        descLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        descLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        descLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor).isActive = true
        
        dateLabel.leftAnchor.constraint(equalTo: self.nameLabel.rightAnchor).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: self.descLabel.topAnchor).isActive = true
        dateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let name = name {
            nameLabel.text = name
        }
        if let desc = desc {
            descLabel.text = desc
        }
        if let date = date {
            dateLabel.text = date
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
