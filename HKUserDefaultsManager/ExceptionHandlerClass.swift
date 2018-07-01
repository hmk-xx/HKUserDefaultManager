//
//  ExceptionHandlerClass.swift
//  NMFDemo
//
//  Created by Harish Kumar11 on 22/06/18.
//  Copyright © 2018 Harish Kumar11. All rights reserved.
//

import UIKit

class ExceptionHandlerClass: NSObject {

    
    class func showAlert(_ alertTitle: String, andMessage alertMessage: String, withController view: UIViewController){

        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        view.present(alert, animated: true, completion: nil)
    }
    
}
