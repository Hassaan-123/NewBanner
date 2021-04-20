//
//  NewBannerCell.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import UIKit

public class NewBannerCell: UICollectionViewCell {
    var image = String()
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        let img = UIImageView()
        contentView.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        img.heightAnchor.constraint(equalToConstant: 250).isActive=true
        img.image = UIImage(named: image)
    }
    
}
