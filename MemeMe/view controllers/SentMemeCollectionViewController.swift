//
//  MmemCollectionViewController.swift
//  MemeMe
//
//  Created by Hussain Almajed on 12/1/18.
//  Copyright © 2018 UdacityHS. All rights reserved.
//

import UIKit




class SentMemeCollectionViewController: UICollectionViewController {

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let spacex: CGFloat = 0.5
        let spacey: CGFloat = 0.5
        
        let dimensionx = (self.view.frame.width -  2*spacex)/3
        flowLayout.minimumLineSpacing = spacey
        flowLayout.minimumInteritemSpacing = spacex
        if self.view.frame.width < self.view.frame.height{
            flowLayout.itemSize = CGSize( width: dimensionx , height: dimensionx)}
        else{
            flowLayout.itemSize = CGSize( width: dimensionx/1.5 , height: dimensionx/1.5)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
        collectionView.reloadData()
    }
        
    

   
  
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionCell", for: indexPath) as! MemeCollectionViewCell
        
        let meme = memes[indexPath.row]
        cell.memImageCollection.image = meme.memedImage
        
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vController = storyboard?.instantiateViewController(withIdentifier: "detailsView") as! MemeDetailsViewController
        let meme = memes[indexPath.row]
        vController.meme = meme
        
        
        let leftBackButton = UIBarButtonItem()
        leftBackButton.title = "Collection View"
        navigationItem.backBarButtonItem = leftBackButton
        navigationController?.pushViewController(vController, animated: true)
        
    }
   
}
