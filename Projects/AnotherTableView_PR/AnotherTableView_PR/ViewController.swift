//
//  ViewController.swift
//  AnotherTableView_PR
//
//  Created by Pedro Rivera on 4/19/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModels = [DetailViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Another Table"
        viewModels = DetailViewModel.DefaultData
    }//end function
}//end class

extension ViewController: UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }//end funct
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? DetailTableViewCell
        let viewModel = viewModels[indexPath.row]
        
        cell?.configureWith(viewModel)
        
      
        
        return cell ?? UITableViewCell()
        
    }

}

extension ViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        var item =  viewModels[indexPath.row]
        
        item.isSelected = !item.isSelected
    }
    
    private func pesentActionSheet(_ viewModel: DetailViewModel){
        let actionSheetController = UIAlertController(title: "Modal", message: "select action for view model", preferredStyle: .actionSheet)
    }
       
}
