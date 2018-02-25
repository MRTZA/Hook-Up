//
//  Home.swift
//  Hook-Up
//
//  Created by Krishna  Madireddy on 2/24/18.
//  Copyright © 2018 Murtaza Hakimi. All rights reserved.
//

import UIKit

class Home: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    @IBAction func buttonPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "goToGroceries", sender: self)
    }
    @IBAction func logoutPressed(_ sender: Any)
    {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    let options = ["groceries", "studying", "rides", "relationships", "rooming", "trade", "games", "events"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return options.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "iconCell", for: indexPath) as! IconCell
        
        cell.buttonCell.setImage(UIImage (named: options[indexPath.row]), for: .normal)
        //cell.imageCell.image = UIImage(named: options[indexPath.row])
        cell.labelCell.text = options[indexPath.row].capitalized
        
        return cell
    }
}
