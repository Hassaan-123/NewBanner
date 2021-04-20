//
//  NewBanner.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import Foundation
import UIKit
 

public class NewBanner: UIViewController ,UICollectionViewDelegate , UICollectionViewDelegateFlowLayout
{
    
    
    var images = ["download1" ,"download2","download3","download4","download5"]
   
    var views : UIView!
    var contrl : UIViewController!
    
    public lazy var maincollection : UICollectionView =
        {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal.self
            
           
            let maincollection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
            maincollection.translatesAutoresizingMaskIntoConstraints=false
            maincollection.isMultipleTouchEnabled = true
            maincollection.allowsMultipleSelection = true
            
            maincollection.register(NewBannerCell.self, forCellWithReuseIdentifier: "Collections")
            maincollection.backgroundColor = .red
           
            
            return maincollection
        }()
    
    private var NewSlidderDataSource: NewSlidderDataSource? {
        return maincollection.dataSource as? NewSlidderDataSource
    }

    public func execute() {
        print("executed")
    }
    
    public func ImageSlide(myview : UIView ,controlle:UIViewController )
    {
         
        views = myview
        views.addSubview(maincollection)
        maincollection.topAnchor.constraint(equalTo: views.topAnchor).isActive=true
        maincollection.leadingAnchor.constraint(equalTo: views.leadingAnchor).isActive=true
        maincollection.trailingAnchor.constraint(equalTo: views.trailingAnchor).isActive=true
        maincollection.bottomAnchor.constraint(equalTo: views.bottomAnchor).isActive=true
        maincollection.delegate = (controlle as! UICollectionViewDelegate)
        maincollection.dataSource = (controlle as! UICollectionViewDataSource)
        
    }
    
    public func singleimage(myview : UIView)
    {
        let img = UIImageView()
        myview.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.bottomAnchor.constraint(equalTo: myview.bottomAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: myview.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: myview.trailingAnchor).isActive=true
        img.heightAnchor.constraint(equalToConstant: 100).isActive=true
        img.image = UIImage(named: "download1")
    }
    
 
  
    
}
