//
//  ElSanatlariVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class ElSanatlariVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "sanat1"), BundleImageSource(imageString: "sanat2"), BundleImageSource(imageString: "sanat3"), BundleImageSource(imageString: "sanat4"), BundleImageSource(imageString: "sanat5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        BAKIRCILIK VE KALAYCILIK
        
        Bakırcılık ve kalaycılık, Mardin merkezinde önemli diğer sanat dalları gibi ayrı bir ihtimamla şehrin özel dokusunda yer bulan kendi adıyla anılan çarşısında yüzyıllardan beri varlığım sürdürmektedir.
        Bakırcılıkta ürünlerin ortaya çıkması son derece ağır şartlarda gerçekleşmekte ve işin tamamı el gücüne dayanmaktadır.Burada bir çok sofra takımı, çanaklar, kaşık, kepçe, kevgir, sini, leğen, yemek tencereleri, kazanlar, güğümlü ibrik denilen ibrikler, su güğümü vb. mutfak eşyaları üretilmektedir. Bakır eşyalar yılda en az bir ke'z kalaylanır.Günümüzde bu sanatı sürdürenlerin sayışı oldukça azdır.
        
        Taş İşlemeciliği
        
        Mardin de çok miktarda bulunan taş ocaklarından alınan taş, ustaların elinde işlendikten sonra ise evlerinde,kasırlarda ve dini yapılanda özgün motiflerle yerini almaktadır. Kapı, pencere çevreleri, sütunlar, kemerler taş işçiliğinin oya gibi ince örnekleri ile bezelidir.
        
        TELKARİ(GÜMÜŞ VE ALTIN)
        
        Telkari tel halinde gümüş veya altını tahta üzerinde açılmış oyuklara ve gömerek yapılan süslemedir. Tel haline getirilen altın ve gümüş kanaviçe zarafetinde ilmek ilmik işlenerek süs ve ziynet eşyasına dönüştürülür.Bu ince el sanatı Mardin Merkez ve Midyat ilcesine özgüdür. Başka bir yerde bu sanatı görmek mümkün değildir.
        
        TESTİCİLİK-ÇANAK VE ÇÖMLEKÇİLİK
        
        Testicilik, Çanak ve Çömlekçilik(Bardak,çömlek,küp,saksı vb. ürünler) Merkez ve Midyat ilçelerinde çok eski yıllardan beri devam eden bir sanat dalıdır. Yörenin kırmızı toprağı küp yapımcılığına uygun olduğu için bu sanat dalı bu ilçelerde gelişme göstermiştir. Testiler aynı zamanda evlerin kubbeli tavanlarında da kullanılmıştır.
        
        
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
