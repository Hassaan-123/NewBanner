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
            layout.scrollDirection =  .horizontal
            
            let maincollection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
            maincollection.translatesAutoresizingMaskIntoConstraints=false
            maincollection.isMultipleTouchEnabled = true
            maincollection.allowsMultipleSelection = true
            maincollection.backgroundColor = .white
            maincollection.tag = collectiontag
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
    
    @IBInspectable open var collectiontag : Int{
        set {maincollection.tag = newValue}
        get { return 0 }
    }
    
    
    @IBInspectable open var NoCell : Int   {
        
        set{ cellnumber = newValue}
        get{ return  2 }
        
    }
    
    @IBInspectable open var collectionviewColor : UIColor = .white
    {
        didSet{
            maincollection.backgroundColor = collectionviewColor
    }}
    
    @IBInspectable open var ViewColor : UIColor = .clear
    {
        didSet{ self.backgroundColor = ViewColor}
    }
    
    @IBInspectable open var CornerRadius : CGFloat = 0
    {
        didSet
        {
            maincollection.layer.cornerRadius = CornerRadius
        }
    }
    
    @IBInspectable open var BorderWidth : CGFloat = 0
    {
        didSet{
            maincollection.layer.borderWidth = BorderWidth
        }
    }
    
    @IBInspectable open var BorderColor : UIColor = .white
        {
        didSet{
            maincollection.layer.borderColor = BorderColor.cgColor
        }
        }
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        
        ImageSlide(myview: self)
     }
     
    required public init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         
        ImageSlide(myview: self)
     }
    
    private func commonInit() {
        
        let bundle = Bundle(for: NewBanner.self)
        bundle.loadNibNamed(String(describing: NewBanner.self), owner: self, options: nil)
    }
    public func ImageSlide(myview : UIView )
    {
         
        views = myview
        self.addSubview(maincollection)
        maincollection.topAnchor.constraint(equalTo: self.topAnchor).isActive=true
        maincollection.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive=true
        maincollection.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive=true
        maincollection.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive=true
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
    return  cellnumber
  }
  
    public func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("inside newbanner")
    let cell = maincollection.dequeueReusableCell(withReuseIdentifier: "Collections", for: indexPath) as! NewBannerCell
        
        cell.myview = self
        cell.Setimages(index:  indexPath.row)
        
    return cell
    
  }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width, height: self.frame.height)
    }
}
