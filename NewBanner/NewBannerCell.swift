//
//  NewBannerCell.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import UIKit

public class NewBannerCell: UICollectionViewCell {
    
    
    
    func Setimages(img : String)
    {
        print("inside cell for item at")
         
        let img = UIImageView()
        img.contentMode = .scaleToFill
        addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.topAnchor.constraint(equalTo: topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo:  leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: trailingAnchor).isActive=true
        img.bottomAnchor.constraint(equalTo: bottomAnchor).isActive=true
        img.image = UIImage(named: "\(img)")
        print("going out of cell for row at")
        
    }
}
