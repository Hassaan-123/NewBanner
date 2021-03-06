//
//  NewSlidderDataSource.swift
//  NewBanner
//
//  Created by cedcoss on 4/20/21.
//

import UIKit

class NewSlidderDataSource: NSObject
{
    
    var images = ["download1" ,"download2","download3","download4","download5"]
    
    var collect : UICollectionView!
    private func imagesCellAtIndexPath(indexPath: IndexPath) -> UICollectionViewCell {
      
      guard let cell = collect.dequeueReusableCell(
        withReuseIdentifier: "Collections", for: indexPath) as? NewBannerCell else {
          return UICollectionViewCell()
        
      }
        configureScoopCell(cell: cell, atIndexPath: indexPath)
        return cell
}
    private func configureScoopCell(cell: NewBannerCell, atIndexPath indexPath: IndexPath) {
     
        
    }
    
}

