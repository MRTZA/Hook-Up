//
//  Request.swift
//  Hook-Up
//
//  Created by Krishna  Madireddy on 2/24/18.
//  Copyright © 2018 Murtaza Hakimi. All rights reserved.
//

import UIKit

class Request: UIViewController {

    @IBAction func createPressed(_ sender: Any)
    {
        //update information on db
        //segue if successful
        self.dismiss(animated: false, completion: nil)
    }
    @IBAction func backPressed(_ sender: Any)
    {
        self.dismiss(animated: false, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
