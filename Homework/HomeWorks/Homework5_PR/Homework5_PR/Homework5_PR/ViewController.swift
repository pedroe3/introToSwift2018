//
//  ViewController.swift
//  Homework5_PR
//
//  Created by Pedro Rivera on 4/14/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redColorViewModel: [ColorViewModel] = []

    @IBOutlet weak var tableView: UITableView! {
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    @IBOutlet weak var segmentSelect: UISegmentedControl! {
        didSet{
          return  segmentSelect.addTarget(self, action: #selector(segmentControlValueChanged), for: .valueChanged)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBarSetup()
        reloadColors(button: 0)
    }

    private func navBarSetup(){
        title = "Color Table"
    }
    
    @objc private func segmentControlValueChanged(){
        reloadColors(button: self.segmentSelect.selectedSegmentIndex)
    }
    
    private func reloadColors(button: Int){
        redColorViewModel = ColorManager.generateColors(numberOfColors: 100, colorRequest: button )
        tableView.reloadData()
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return redColorViewModel.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let colorViewModel = redColorViewModel[indexPath.row]
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        
            cell.backgroundColor = colorViewModel.color
            cell.textLabel?.text = colorViewModel.name
            cell.textLabel?.textColor = .white
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}

