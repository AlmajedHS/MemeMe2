//
//  MemeTableViewController.swift
//  MemeMe
//
//  Created by Hussain Almajed on 12/1/18.
//  Copyright © 2018 UdacityHS. All rights reserved.
//

import UIKit

class SentMemeTableViewController: UITableViewController {
    
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
        tableView.reloadData()
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return memes.count
    }

    override func tableView(_ tableView: UITableView,  cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        //obtain a cell of type Table Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableCell") as! MemeTableViewCell
        let meme = memes[indexPath.row]
        cell.memeImageView.image = meme.memedImage
        cell.memeLabel.text = meme.topText + " " + meme.bottomText
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vController = storyboard!.instantiateViewController(withIdentifier: "detailsView") as! MemeDetailsViewController
        
        let meme = memes[indexPath.row]
        vController.meme = meme
        
        let backButton = UIBarButtonItem()
        backButton.title = "Table View Controller"
        navigationItem.backBarButtonItem = backButton
        navigationController?.pushViewController(vController, animated: true)
        
        
    }

}
