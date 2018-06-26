//
//  HKFetchUserDefaultsViewController.swift
//  HKUserDefaultsManager
//
//  Created by Harish on 27/06/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit

class HKFetchUserDefaultsViewController: UIViewController {
    @IBOutlet weak var textFieldKey: UITextField?
    @IBOutlet weak var textViewResult: UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func methodFetch(sender: AnyObject) {
        self.methodFetchDetails(stringKey: (self.textFieldKey?.text)!)
    }
    func methodFetchDetails(stringKey:String){
        let stringFetchResult:String =  UserDefaultsManager.methodForFetchStringObjectValue(stringKey)
        textViewResult?.text = stringFetchResult
        self.textFieldKey?.resignFirstResponder()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
