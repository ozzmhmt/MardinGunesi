//
//  CamilerVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class CamilerVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "cami1"), BundleImageSource(imageString: "cami2"), BundleImageSource(imageString: "cami3"), BundleImageSource(imageString: "cami4"), BundleImageSource(imageString: "cami5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        Abdullatif ( Latifiye) Camii:
        
        M.S.1314'de Artukoğullarından Melik Salih ve Melik Muzaffer'in adamlarından Abdullatif Bin Abdullah tarafından yaptırılmıştır. Minaresi Mısır Valisi Muhammed Ziya Tayyar Paşa tarafından inşa ettirilmiştir. Sultan Avis ve Melik Mansur burada gömülüdür.
        
        Camii (Cami-i Kebir):
        
        Mardin'deki camilerin en eskisidir. Ulu cami mahallesindedir. Kıble duvarına paralel uzanan üç nef, mihrap önünde 2 nef boyunca tromplu ve dıştan ' bir kubbe ile örtülmüştür. 6 paye üzerine oturan kubbe, bütün mekana hakimdir. Çapraz tonozlu revaklarda yalnız kuzeyde beş bölüm kalmış diğerleri kay muştur. Burada revaklar arasında küçük sel sebilli bir eyvan dikkati çeker. Minaresi Artuklu hükümdarı Kudbettin İlgazi zamanında inşa olunmuştur (1176). Bu camiye, Artuklu hükümdarlarından Melik Salih (1312-1362) bir kısım malını vakıf yaptırmıştır. Bunlar 38 dükkan, bir hamam, Bab-ı Cedid civarında bir bahçe ve Mardin köylerinde bir çok bağ dan oluşuyordu. Mardin'in en önemli İslami merkezlerinden biri olan Ulu Cami, devasa yapısıyla tarihin ihtişamını gökyüzüne mağrur minaresiyle göz kırparak taşımaktadır.
        
        Melik Mahmut Camii (Bab Es Sur):
        
        Camii, yatık bir dikdörtgen alan kaplayan ve bir yanında ve diğer yanlardan dar sokakların ayrıldığı evlerle ve çeşitli portal şeklinde taş işlemeli ana girişi küçük bir meydanda açık durumdadır. Melik Mahmud (1367-1368)'un burada defnedilmiş olmasından da bu camiye Melik Mahmud Camisi denmektedir.
        
        Reyhaniye Camii:
        
        1756 tarihinde Ahmet Paşa'nın kızı Adile Hanım tarafından yaptırılan bu camii Hasan ayyar çarşısında bulunmaktadır. Minaresi sekiz köşelidir.
        
        Şehidiye Medresesi:
        
        Şehidiye Camii 1214 tarihinde Melik Mansur Nasreddin Artuk Aslan tarafından yaptırılmıştır. Bu günkü minaresi, Şerefeye çıkılan çift merdivenleri ile helezonik yapıdadır. 1916 yılında inşa edilmiştir
        
        """
        
        
        txtView.scrollRangeToVisible(NSRange(location:0, length:-1))
        //        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.png")!)
        
        slideshow.slideshowInterval = 5.0
        slideshow.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        slideshow.contentScaleMode = UIViewContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        pageControl.pageIndicatorTintColor = UIColor.black
        slideshow.pageIndicator = pageControl
        
        // optional way to show activity indicator during image load (skipping the line will show no activity indicator)
        slideshow.activityIndicator = DefaultActivityIndicator()
        
        
        // can be used with other sample sources as `afNetworkingSource`, `alamofireSource` or `sdWebImageSource` or `kingfisherSource`
        slideshow.setImageInputs(localSource)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(MardinTaniyalimVC.didTap))
        slideshow.addGestureRecognizer(recognizer)
    }
    
    @objc func didTap() {
        let fullScreenController = slideshow.presentFullScreenController(from: self)
        // set the activity indicator for full screen controller (skipping the line will show no activity indicator)
        fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        txtView.isScrollEnabled = true
    }
    
    
    
}
