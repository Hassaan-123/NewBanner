//
//  NewBanner.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import Foundation
import UIKit
 

public class BannerSlidderPod: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource
{
    var images : [UIImageView] = []
    var maincollection : UICollectionView!

    public func execute() {
        print("executed")
    }
    
    public func ImageSlide(collection : UICollectionView , image : [UIImageView])
    {
        images=image
        maincollection = collection
        maincollection.register(NewBannerCell.self, forCellWithReuseIdentifier: "Collections")
        collection.delegate = self
        collection.dataSource = self
        
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = maincollection.dequeueReusableCell(withReuseIdentifier: "Collections", for: indexPath) as! NewBannerCell
        let img = UIImageView()
        view.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive=true
        img.heightAnchor.constraint(equalToConstant: 250).isActive=true
        img.image = UIImage(named: "\(images[indexPath.row])")
        return cell
    }
}

