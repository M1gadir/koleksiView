//
//  ViewController.swift
//  koleksiView
//
//  Created by My Macbook on 22/11/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var mykoleksi: UICollectionView!
    
    let array:[String] = ["1","2","3","4","5","6","7","7","8","9","10","11","12","13","1","2","3","4","5","6","7","7","8","9","10","11","12","13"]

    override func viewDidLoad() {
        super.viewDidLoad()
       let itemSize = UIScreen.main.bounds.width/3 - 10
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset =  UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        mykoleksi.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Selsaya
        cell.img.image = UIImage(named: array[indexPath.row] + ".jpg")
        return cell
    }
}

