//
//  NewBannerCell.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import UIKit

public class NewBannerCell: UICollectionViewCell {
    
    var myview : UIView!
    func Setimages(img : String)
    {
        print("inside cell for item at")
         
        let img = UIImageView()
        img.contentMode = .scaleToFill
        contentView.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.topAnchor.constraint(equalTo:  contentView.topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo:  contentView.trailingAnchor).isActive=true
        img.bottomAnchor.constraint(equalTo:  contentView.bottomAnchor).isActive=true
        img.image = UIImage(named: "\(img)")
        print("going out of cell for row at")
        
    }
}
