//
//  NewBannerCell.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import UIKit

public class NewBannerCell: UICollectionViewCell {
    
    var myview : UIView!
    var images = ["download1" ,"download2","download3","download4","download5"]
    public lazy var img : UIImageView =
        {
            
            let img = UIImageView()
            img.translatesAutoresizingMaskIntoConstraints=false
            img.contentMode = .scaleToFill
            return img
        }()
    
    
    func Setimages(index : Int )
    {
        print("inside cell for item at")
        contentView.addSubview(img)
         
        img.topAnchor.constraint(equalTo:  contentView.topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo:  contentView.trailingAnchor).isActive=true
        img.bottomAnchor.constraint(equalTo:  contentView.bottomAnchor).isActive=true
        if index > images.count - 1
        {img.image = UIImage(named: "Noimage")}
        else
        {
        img.image = UIImage(named: images[index])
        }
        print("going out of cell for row at")
        
    }
}
