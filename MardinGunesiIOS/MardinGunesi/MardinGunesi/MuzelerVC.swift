//
//  MuzelerVC.swift
//  MardinGunesi
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class MuzelerVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "muze1"), BundleImageSource(imageString: "muze2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        
        MARDİN MÜZESİ
        
        Mardin Merkez 1. Cadde Cumhuriyet Alanı Atatürk heykeli yanındadır. Binanın doğu tarafına bitişik olan Meryem Ana Kilisesi'nin müzeye bakan kapalı portalindeki kitabeye göre bina, 1895 yılında Antakya Patriği İgnatios Behnam Banni tarafından Süryani katolik patrikhanesi olarak yaptırılmıştır.
        Daha sonraları askeri garnizon, M.S.P. İl teşkilatı, kooperatif binası, sağlık ocağı ve polis karakolu olarak kullanılmıştır.
        Binayı Süryani Katolik Vakfı'ndan satın alan Kültür Bakanlığı 1988 yılında bunu restore etmeye karar vermiş ve 1995 yılında da bina müze olarak hizmete açılmıştır. Bu ana kadar eski müze Artuklu sultanlarından Sultan İsa tarafından, 14. yüzyıl başlarında yaptırılan Zinciriye Medresesinde faaliyet gösteriyordu.
        Yeni müze binası tamamen kesme kalker taşından yapılmıştır. İç ve dıştaki tonoz, kemer, korkuluk ve sütun başlıklarında eşsiz süslemeler mevcuttur.    Müze üç katlıdır:
        Birinci katta; danışma yeri, konferans, sergi ve dinlenme salonları,
        İkinci katta; etnografya sergi salonu, kütüphane ve eser depoları;
        Üçüncü katta ise Girnevas Höyük kazısında çıkarılan kimi eserlerle, satın alınarak müzeye kazandırılan arkeolojik eserlerin sergilendiği salonlar ve idari bölümler yer almaktadır.
        Müzedeki eserler; M.Ö. 4000'den, M.Ö. 7. yüzyıla kadar olan döneme ait eserlerdir. Arkeolojik salonlarda Eski Tunç, Asur, Urartu, Grek, Pers, Hellenistik, Roma, Bizans, Büyük Selçuklu, Artuklular ve Osmanlı devirlerine ait tabletler, silindir ve damga mühürler, kült kapları, figürinler, metalden bızlar, takılar, keramikler, altın, gümüş ve bakır sikkeler, gözyaşı şişeleri ve kandiller sergilenmektedir.
        
        
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
