//
//  ViewController.swift
//  iOSTest
//
//  Created by Fuad Hasan on 25/5/21.
//

import UIKit

class HomePageVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.navigationItem.title = "Home"
        self.presentAlert(withTitle: "Success", message: "Easy Man")
        
        
        //postRequest()
        
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

