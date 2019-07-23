//
//  ManastirVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class ManastirVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "manastir1"), BundleImageSource(imageString: "manastir2"), BundleImageSource(imageString: "manastir3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        Deyrul-zafaran Manastırı
        
        İsa’dan sonra 5. yüzyılda inşa edilen Deyrul-zafaran Manastırı, muhteşem mimarisi yanın-da Süryani Kilisesi’nin önemli merkezlerinden biridir. 1932’ye kadar 640 yıl boyunca Süryani Ortodoks patriklerinin ikametgah yeriydi.
        
        Antakya şehrinde kurulmuş olan Yakubi Süryani Patrikhanesi oradan ayrılmıştır. Patrikhane, daha sonra sırasıyla Adana (Sis), Rumkale, Homs, Maraş, Adıyaman ve Diyarbakır gibi şehirlerde uzun süreli kalamayınca, en son Mardin’e taşınır. Tarihte adı, Der-Zafaran Manastırı olarak geçen ve son yıllarda ise Deyrül-Zafaran Manastırı adıyla anılan bu manastır, Yakubi Süryaniler tarafından satın alınarak, Patrikhane’nin merkezi olarak kullanılmıştır.
        
        Manastır, Milattan önce Güneş Tapınağı, daha sonra da Romalılar tarafından kale olarak kullanılan bir kompleks üzerine inşa edildi. Romalılar böl-geden çekilince Aziz Şleymun bazı azizlerin kemiklerini buraya getirterek kaleyi manastıra çevirdi. Bu nedenle Manastır, önceleri Mor Şleymun Manastırı olarak biliniyordu. Mardin ve Kefertüth Metropoliti Aziz Hananyo’nun 793 yılından başlayarak büyük bir tadilat yapmasından sonra Manastır onun adıyla, Mor Hananyo Manastırı olarak bilindi. 15. yüz-yıldan sonra da Manastır’ın etrafında yetişen zafaran (safran) bitkisinden dolayı Manastır, Deyrulzafaran (Safran Manastırı) adı ile anılmaya başlandı.
        
        
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
