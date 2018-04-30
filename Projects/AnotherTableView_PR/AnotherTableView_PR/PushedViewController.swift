//
//  PushedViewController.swift
//  AnotherTableView_PR
//
//  Created by Pedro Rivera on 4/24/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

class PushedViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: DetailViewModel!
    
    override func viewDidLoad() {
        titleLabel.text = viewModel.title
        detailLabel.text = viewModel.description
    }
}
