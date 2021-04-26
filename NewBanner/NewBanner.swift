//
//  NewBanner.swift
//  NewBanner
//
//  Created by cedcoss on 4/19/21.
//

import Foundation
import UIKit
 

@IBDesignable open class NewBanner: UIView
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
            maincollection.backgroundColor = .white
            maincollection.register(NewBannerCell.self, forCellWithReuseIdentifier: "Collections")
            return maincollection
        }()
    
//    private var NewSlidderDataSource: NewSlidderDataSource? {
//        return maincollection.dataSource as? NewSlidderDataSource
//    }

    public func execute() {
        print("executed")
    }
    var cellnumber = 0
    
    @IBInspectable open var numberOfCell : Int = 1 {
        
        didSet{
        cellnumber = oldValue
        
        }
    }
    
    @IBInspectable open var imagecolor : UIColor = .white
    {
        didSet{
            maincollection.backgroundColor = oldValue
    }}
    
    @IBInspectable open var cornerradius : CGFloat = 0
    {
        didSet
        {
            maincollection.layer.cornerRadius = cornerradius
        }
    }
    
    @IBInspectable open var border : CGFloat = 0
    {
        didSet{
            maincollection.layer.borderWidth = border
        }
    }
    
    @IBInspectable open var bordercolor : UIColor = .white
        {
        didSet{
            maincollection.layer.borderColor = bordercolor.cgColor
        }
        }
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        
        singleimage(myview: self)
     }
     
    required public init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         
        singleimage(myview: self)
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
    
    public func singleimage(myview : UIView)
    {
        let img = UIImageView()
        self.addSubview(img)
      //  myview.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints=false
        img.bottomAnchor.constraint(equalTo:  self.bottomAnchor).isActive=true
        img.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive=true
        img.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive=true
        img.heightAnchor.constraint(equalToConstant: 100).isActive=true
        img.image = UIImage(named: "download1")
    }
    
 
  
    
}
extension NewBanner: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return images.count + cellnumber
  }
  
    public func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("inside newbanner")
    let cell = maincollection.dequeueReusableCell(withReuseIdentifier: "Collections", for: indexPath) as! NewBannerCell
        cell.Setimages(img: images[indexPath.row])
    return cell
    
  }
}
