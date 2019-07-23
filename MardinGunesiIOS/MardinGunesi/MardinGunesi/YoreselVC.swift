//
//  YoreselVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class YoreselVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "yemek1"), BundleImageSource(imageString: "yemek2"), BundleImageSource(imageString: "yemek3"), BundleImageSource(imageString: "yemek4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        1.Çorbalar: Lebeniye,Un Corbası,Mercimek Corbası,Kelle Paca,Nohut Corbası,Corten,Ginedir Çorbası,Domates Çorbası
        
        2.Kebablar: Soğan Kebabı, Patates Kebab
        
        3.Et Yemekleri: Malzum,Kibbe,Mardin Çiğköftesi,Kelle Paca,Dobo,Firkiye,Güvec,Havuc Türlüs
        
        4.Tavalar-Kızartmalar-Kavurmalar: Semizotu Tavası,Patates,Patlıcan,Biber,Kabak,Havuc Kızartmas
        
        5.Köfteler: İçli Köfte (İkbebet), Aya Köfte (Irok), Çiğköfte, Mercimekli Köfte (Bello) ,Cevizli İçli Köfte ,Kitel Rah
        
        6.Dolmalar-Sarmalar: Patlıcan Dolması,Biber Dolması,İşkembe Dolması,Kaburga Dolması,Kabak Dolması,Hindi Dolması,
        
        Kuzu Dolması,Güvercin Dolması,Domates Dolması,Tavuk Dolması
        
        7.Pilavlar: Sehriyeli Bulgur Pilavı,Kınepleli Pilav,Mercimekli Pilav,Gasore,Ihşene,Coban Pilav
        
        8.Hamur İşleri: Sembusek,Cevizli Börek,Susamlı Patates Böreği,Lor Böreği
        
        9.Zeytinyağlı Yemekler: Zeytinyağlı Yaprak Sarması,Kıneble,Melemen,Nohut Meftunes
        
        10.Piyazlar-Salatalar: Patates Salatası,Çoban Salatası,Beyin Salatası,Acur Salatas
        
        11.Tatlılar-Pastalar: Sütlaç,Davk Bi Dips,Peynir Helvası,Harire,Asure,Zerde,Un Helvası,Zingil,Kahıyye,Davk İl May,Tahinli Helva
        
        12.Tuzlular: Icce,Kişnişli ve Kırmızı Pul Biberli Tandır Cöreg
        
        13.Cerezler: Leblebi,Sekerli Leblebi,Badem,Badem Sekeri,Ibzor,Kavun Cekirdeği,Karpuz Cekirdeği,Kabak Cekirdeği,Bıtım,Mahlep,Pestil,Cevizli ve Bademli Sucuk (Ikude)
        
        14.İçecekler: Mırra,Likör,Üzüm Suyu,Nar Suyu,Suma
        
        15.Turşular: Rami,Hıyar,İşfelleh,Yeşil Zeytin,Dag Hıyarı,Yeşil Nohut Turşusu
        
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
