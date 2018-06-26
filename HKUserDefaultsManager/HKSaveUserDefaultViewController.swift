//
//  HKSaveUserDefaultViewController.swift
//  HKUserDefaultsManager
//
//  Created by Harish on 27/06/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit

class HKSaveUserDefaultViewController: UIViewController {
    
    @IBOutlet weak var textFieldKey: UITextField?
    @IBOutlet weak var textFieldValue: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func methodSave(sender: AnyObject) {
        self.methodSaveDetails(stringKey: (self.textFieldKey?.text)!, stringValue: (self.textFieldValue?.text)!)
    }
    func methodSaveDetails(stringKey:String,stringValue:String){
        UserDefaultsManager.methodForSaveStringObjectValue(stringValue, andKey: stringKey)
        self.textFieldKey?.resignFirstResponder()
        self.textFieldValue?.resignFirstResponder()
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
