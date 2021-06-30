//
//  ViewController.swift
//  CoreDataTutorial
//
//  Created by Rahul Mane on 17/07/18.
//  Copyright © 2018 developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        
        let context = appDelegate.persistentContainer.viewContext
        
        let user = User(context: context)
        user.name = "rahul"
        user.lastname = "mane"

        do{
            try context.save()
        }
        catch let error as NSError{
            print("Could not save. \(error), \(error.userInfo)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

