//
//  DetailViewModel.swift
//  AnotherTableView_PR
//
//  Created by Pedro Rivera on 4/19/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import Foundation

struct DetailViewModel {
    let title: String
    let description: String
    let imageName: String
    var isSelected: Bool
}

extension DetailViewModel {
    static var shortDesc: String {
        return "Thhere is much to ssee here."
    }
    
    static var longDesc: String {
        return "muldfsajlj fddlsk;ajj fdas j;ljfdsa jk f;dlajkdk doijfdskj fd sklajfdsl fl sdjfldskjffdk jlfdsal fsfda lj klfd slaj  fdlsja lj fds kljl kjfdsuhnjdsjafd"
    }
    
    static  var shortTitle: String {
        return "Squire Attacks"
    }
    
    static var longTitle: String {
        return "Waring ! jkds k the dljsldj fdsljkfd f dsa lkjfldskjl fdsilfjds "
    }
    
    static var DefaultData: [DetailViewModel] {
       var viewModels = [DetailViewModel]()
        
        for i in 1...10 {
            
            let isDivisibleByTwo = i % 2 == 0
            let description = isDivisibleByTwo ? longDesc : shortDesc
            let title = isDivisibleByTwo ? shortTitle : longTitle
          
            
            let viewModel = DetailViewModel(title: title, description: description, imageName: "randomImage\(i)", isSelected: false )
            
            viewModels.append(viewModel)
        }
        
        return viewModels
    }
    
}
