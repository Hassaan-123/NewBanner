//
//  NewBannerCell.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import UIKit

public class NewBannerCell: UICollectionViewCell {
    
    var myview : UIView!
    var images : [String]!
    
    
    public lazy var img : UIImageView =
        {
            
            let img = UIImageView()
            img.translatesAutoresizingMaskIntoConstraints=false
            img.contentMode = .scaleToFill
            return img
        }()
    
    public func showanimate(types : Animation)
     {
        switch types {
        case .FadeIn :
        self.alpha = 0
            UIView.animate(withDuration: 2.0, animations:  {
            self.alpha = 1.0
        }, completion: nil)
        case .FadeOut :
            self.alpha = 1.0
            UIView.animate(withDuration: 2.0, animations:  {
                self.alpha = 0.0
            }, completion: nil)
         case .EaseIn :
            self.transform = CGAffineTransform(scaleX: 0, y: 0)
            UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn , animations:  {
                self.transform = .identity
            },  completion:nil)
        case .curveLinear :
            self.transform = CGAffineTransform(scaleX: 0, y: 0)
             UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveLinear , animations:  {
                 self.transform = .identity
             },  completion:nil)
        case .Disappear :
            UIView.animate(withDuration: 2.0, delay: 0.0, options: UIView.AnimationOptions.allowAnimatedContent, animations: {
                self.frame = CGRect(x: 0, y: 0, width: 0 , height: 0)
            }, completion: nil)
        case .FlipFromTop :
            UIView.transition(with: self, duration: 2.0, options: .transitionFlipFromTop, animations: {
               
            }, completion: nil)
            
        case .FlipFromLeft :
            UIView.transition(with: self, duration: 2.0, options: .transitionFlipFromLeft, animations: {
               
            }, completion: nil)
            
        case .FlipFromBottom :
            UIView.transition(with: self, duration: 2.0, options: .transitionFlipFromBottom, animations: {
               
            }, completion: nil)
            
        case .FlipFromRight :
            UIView.transition(with: self, duration: 2.0, options: .transitionFlipFromRight, animations: {
               
            }, completion: nil)
        case .Spring :
            self.transform = CGAffineTransform(scaleX: 0, y: 0)
            UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.transform = .identity
            }, completion: nil)
        case .Rotate :
            let animation = CABasicAnimation(keyPath: #keyPath(CALayer.transform))
            animation.fillMode = .forwards
            animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            animation.duration = 3
            animation.fromValue = self.layer.transform
            animation.toValue = CATransform3DMakeRotation(.pi, 0, 0, 1)
            self.layer.add(animation, forKey: "rotate")
        case .FadeUp :
            self.transform = CGAffineTransform(translationX: 0, y: self.frame.height / 2)
            self.alpha = 0

            UIView.animate(
                withDuration: 2.0,
                delay: 0.5 ,
                options: [.curveEaseInOut],
                animations: {
                    self.transform = CGAffineTransform(translationX: 0, y: 0)
                    self.alpha = 1
            })
        case .BounceUp :
            self.transform = CGAffineTransform(translationX: 0, y: self.frame.height)

            UIView.animate(
                withDuration: 2.0,
                delay: 0.5,
                usingSpringWithDamping: 0.4,
                initialSpringVelocity: 0.1,
                options: [.curveEaseInOut],
                animations: {
                    self.transform = CGAffineTransform(translationX: 0, y: 0)
            })
        case .None :
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
