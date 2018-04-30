//
//  ModalViewController.swift
//  AnotherTableView_PR
//
//  Created by Pedro Rivera on 4/24/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    var viewModel: DetailViewModel!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var viewModal: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       viewModal.layer.cornerRadius = 10
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description

    }
    
    
    @IBAction func dismissButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
