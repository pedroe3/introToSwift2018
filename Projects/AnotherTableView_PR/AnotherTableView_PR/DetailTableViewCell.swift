//
//  DetailTableViewCell.swift
//  AnotherTableView_PR
//
//  Created by Pedro Rivera on 4/19/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    public func configureWith(_ viewModel: DetailViewModel){
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        detailImageView.image = UIImage(named: viewModel.imageName)
    }
    
    //add deselection
    
    //disclousure
    
}
