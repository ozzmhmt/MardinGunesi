//
//  MardinTaniyalimVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class MardinTaniyalimVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "mardin1"), BundleImageSource(imageString: "mardin2"), BundleImageSource(imageString: "mardin3"), BundleImageSource(imageString: "mardin4"), BundleImageSource(imageString: "mardin5"), BundleImageSource(imageString: "mardin6"), BundleImageSource(imageString: "mardin7")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        Mardin, mimari, etnografik, arkeolojik, tarihi ve görsel değerleri ile zamanın durduğu izlenimini veren Güneydoğunun şiirsel kentlerinden biridir. M.Ö.4500’den başlayarak klasik anlamda yerleşim gören Mardin, Subari, Sümer, Akad, Babil, Mitaniler, Asur, Pers, Roma, Bizans, Araplar, Selçuklu, Artuklu , Osmanlı dönemine ilişkin bir çok yapıyı bünyesinde harmanlayabilmiş önemli bir açık hava müzesidir.
        
        Mardin’in kuruluşu ile ilgili çeşitli efsaneler bulunmaktadır. Bunlardan birisine göre; Pers hükümdarı Ardeşir’in (226-241) Marde isimli bir kavmi yöreye yerleştirdiği ve şehrin ismi de bu kavimden kaynaklanmıştır. Bir başka efsaneye göre, Pers hükümdarlarından birisi, hasta oğlunu iyileştirmek için buraya getirmiş ve şehzadenin Mardin olan ismi yöreye verilmiştir. Diğer bir efsaneye göre de şehrin kuruluşu, günümüze ulaşan Mardin Kalesinin olduğu yere yerleşen ve gününü ibadetle geçiren Dîn isimli bir alimin öyküsüne bağlanır. Heraklius’un gönderdiği bir komutan Dîn ile önce dost olmuş, sonra da Onu öldürmüştür. Komutan buraya bir kale yaptırmış ve zamanla Dîn Öldü anlamına gelen “Mâte Dîn’in” Mardin’e dönüştüğü ileri sürülmüştür. Bu efsanelere dayanılarak kente, Süryaniler Süryanice Kale ya da Kaleler anlamına gelen Merdin, Merdi, Merdo, Mirdo, Merde, Marda, Mardin demişlerdir. Bizanslılar Maride, Mardia; Ermeniler Merdin; Araplar Maridin; Osmanlılar da Mardin olarak isimlendirmişlerdir.
        
        Geçmişi tek karede dondurmayan, taş sokaklarında dolaşanlara geniş bir tarih yelpazesi sunan büyüleyici bir şehirdir.
        
        
        

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
