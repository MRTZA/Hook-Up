//
//  Groceries.swift
//  Hook-Up
//
//  Created by Krishna  Madireddy on 2/24/18.
//  Copyright © 2018 Murtaza Hakimi. All rights reserved.
//

import UIKit

class Groceries: UIViewController
{
    @IBAction func jobsPressed(_ sender: Any)
    {
        //go to jobs screen
    }
    
    @IBAction func createPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "goToRequest", sender: self)
    }
    @IBAction func backPressed(_ sender: Any)
    {
        self.dismiss(animated: false, completion: nil)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
