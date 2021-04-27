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
    
    public func showanimate(types : AnimationOptions)
     {
        switch types {
         case .curveEaseIn:
            self .transform = CGAffineTransform(scaleX: 0, y: 0)
             UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn , animations:  {
                 self.transform = .identity
             },  completion:nil)
        case .curveLinear:
        self .transform = CGAffineTransform(scaleX: 0, y: 0)
         UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveLinear , animations:  {
             self.transform = .identity
         },  completion:nil)
        case .transitionFlipFromBottom:
        self .transform = CGAffineTransform(scaleX: 0, y: 0)
         UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.transitionFlipFromBottom , animations:  {
             self.transform = .identity
         },  completion:nil)
        
         default:
             break
         }
     }
    func Setimages(index : Int )
    { 
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
    }
}
