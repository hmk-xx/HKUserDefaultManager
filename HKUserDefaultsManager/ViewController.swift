//
//  ViewController.swift
//  HKUserDefaultsManager
//
//  Created by Harish on 27/06/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func methodSaveUserDefaults(sender: AnyObject) {
        let objHKSaveUserDefaultViewController = self.storyboard?.instantiateViewController(withIdentifier: "HKSaveUserDefaultViewController") as! HKSaveUserDefaultViewController
        self.navigationController?.pushViewController(objHKSaveUserDefaultViewController, animated: true)
    }
    @IBAction func methodFetchUserDefaults(sender: AnyObject) {
        let objHKFetchUserDefaultsViewController = self.storyboard?.instantiateViewController(withIdentifier: "HKFetchUserDefaultsViewController") as! HKFetchUserDefaultsViewController
        self.navigationController?.pushViewController(objHKFetchUserDefaultsViewController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

