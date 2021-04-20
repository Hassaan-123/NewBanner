//
//  NewBanner.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import Foundation
import UIKit
 

public class NewBanner: UIViewController
{
    var images = ["download1" ,"download2","download3","download4","download5"]
    var maincollection : UICollectionView!
    var views : UIView!

    public func execute() {
        print("executed")
    }
    
    public func ImageSlide(collection : UICollectionView , myview : UIView)
    {
        
        views = myview
        maincollection = collection
        maincollection.register(NewBannerCell.self, forCellWithReuseIdentifier: "Collections")
        
        let img = UIImageView()
        views.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.bottomAnchor.constraint(equalTo: views.bottomAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: views.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: views.trailingAnchor).isActive=true
        img.heightAnchor.constraint(equalToConstant: 250).isActive=true
        img.image = UIImage(named: "download1")
        collection.delegate = self
        collection.dataSource = self
        
    }
  
}

extension NewBanner : UICollectionViewDataSource ,UICollectionViewDelegate
{
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = maincollection.dequeueReusableCell(withReuseIdentifier: "Collections", for: indexPath) as! NewBannerCell
        let img = UIImageView()
        views.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.topAnchor.constraint(equalTo: views.topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: views.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: views.trailingAnchor).isActive=true
        img.heightAnchor.constraint(equalToConstant: 250).isActive=true
        img.image = UIImage(named: "\(images[indexPath.row])")
        return cell
    }
}
