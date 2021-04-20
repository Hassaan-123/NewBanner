//
//  NewBanner.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import Foundation
import UIKit
 

public class NewBanner: UIViewController ,UICollectionViewDataSource ,UICollectionViewDelegate , UICollectionViewDelegateFlowLayout
{
    var images = ["download1" ,"download2","download3","download4","download5"]
   
    var views : UIView!
    
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
         
        maincollection.delegate =  self
        maincollection.dataSource = self
        
       
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
    
 
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = maincollection.dequeueReusableCell(withReuseIdentifier: "Collections", for: indexPath) as! NewBannerCell
        //cell.image = images[indexPath.row]
        print("inside cell for item at")
        cell.backgroundColor = .yellow
        let img = UIImageView()
        cell.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.topAnchor.constraint(equalTo: cell.topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: cell.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: cell.trailingAnchor).isActive=true
        img.bottomAnchor.constraint(equalTo: cell.bottomAnchor).isActive=true
        img.image = UIImage(named: images[indexPath.row])
        print("going out of cell for row at")
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 300, height: 150)
    }
    
}
