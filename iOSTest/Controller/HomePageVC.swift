//
//  ViewController.swift
//  iOSTest
//
//  Created by Fuad Hasan on 25/5/21.
//

import UIKit

class HomePageVC: UIViewController {
    
    
    let label = UILabel(text: "Ok Working fine", font: .systemFont(ofSize: 15), textColor: .black, textAlignment: .left, numberOfLines: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.navigationItem.title = "Home"
        
    }
    
    //    fileprivate func postRequest(){
    //        let dict:[String:Any] = ["title":"foo",
    //                                 "body":"bar",
    //                                 "userId":1]
    //
    //        "https://jsonplaceholder.typicode.com/posts"
    //
    //        Service.shared.postRequest(urlString: "", dictToPost: ["":""]) { result in
    //
    //        }
    //    }
    
    
}

extension HomePageVC : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


