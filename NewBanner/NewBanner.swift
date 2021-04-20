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
   
    var views : UIView!
    
    public lazy var maincollection : UICollectionView =
        {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal.self
            
           
            let maincollection = UICollectionView(frame: views.frame, collectionViewLayout: layout)
            maincollection.translatesAutoresizingMaskIntoConstraints=false
            maincollection.isMultipleTouchEnabled = true
            maincollection.allowsMultipleSelection = true
            
            maincollection.register(NewBannerCell.self, forCellWithReuseIdentifier: "Collections")
            maincollection.backgroundColor = .white
            return maincollection
        }()

    public func execute() {
        print("executed")
    }
    
    public func ImageSlide(myview : UIView)
    {
        
        views = myview
        views.addSubview(maincollection) 
        maincollection.topAnchor.constraint(equalTo: views.topAnchor).isActive=true
        maincollection.leadingAnchor.constraint(equalTo: views.leadingAnchor).isActive=true
        maincollection.trailingAnchor.constraint(equalTo: views.trailingAnchor).isActive=true
        maincollection.bottomAnchor.constraint(equalTo: views.bottomAnchor).isActive=true
         
        maincollection.delegate = self
        maincollection.dataSource = self
        
    }
    
}

extension NewBanner : UICollectionViewDataSource ,UICollectionViewDelegate
{
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = maincollection.dequeueReusableCell(withReuseIdentifier: "Collections", for: indexPath) as! NewBannerCell
        cell.image = images[indexPath.row]
        return cell
    }
}
