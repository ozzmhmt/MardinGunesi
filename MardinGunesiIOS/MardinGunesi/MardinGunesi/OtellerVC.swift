//
//  OtellerVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class OtellerVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "otel1"), BundleImageSource(imageString: "otel2"), BundleImageSource(imageString: "otel3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """

        
        OTELLER
        Hotel Adı: HİLTON GARDEN INN MARDİN
        
        Statü: *****
        Oda ve Yatak: 5 Suit Oda, 157 Standart Oda
        Yeme-İçme: 4 Toplantı Salonu, 1 Balo Salonu, SPA Hizmetleri
        
        Tel: 0 482 213 96 00
        
        Faks: 0 482 213 96 00
        
        Adres: MARDİN/MERKEZ
        
        E-mail:    ---------
        
        Web: www.hilton.com.tr/tr
        
        
        
        Hotel Adı: ERDOBA ELEGANCE HOTEL
        
        Statü: *****
        Oda ve Yatak: 1 Royal Suit Oda, 6 Suit Oda, 209 Standart Oda
        Yeme-İçme: 10 Toplantı Odası, Cep Sineması, SPA Hizmetleri
        
        Tel: 0 482 212 15 00
        
        Faks: 0 482 212 15 00
        
        Adres: MARDİN/MERKEZ
        E-mail: info@erdobaelegance.com
        
        Web: www.erdobaelegance.com
        
        
        Hotel Adı: YAY GRAND OTEL
        
        Statü: ****
        Oda ve Yatak: 1 Kral Dairesi, 105 Oda , 230 Yatak, 6 Grand Suit, 4 Suit
        Yeme-İçme: 1800 Kişilik 4 Top. 800 Kişilik Reyhani Balo, 500 Kişilik Rest.
        
        Tel: 0 482 212 57 77
        
        Faks: 0 482 212 57 97
        
        Adres: MARDİN/MERKEZ
        
        E-mail:    mardin@yaygrand.com
        
        Web: www.yaygrand.com
        
        
        Hotel Adı: ERDOBA EVLERİ
        
        Statü: BUTİK OTEL
        Oda ve Yatak: 30 Oda, 60 Yatak, 3 Suit
        Yeme-İçme: 120 kapalı
        
        Tel: 0 482 212 76 77
        
        Faks: 0 482 212 88 21
        
        Adres: MARDİN/MERKEZ
        
        E-mail:    ---------
        
        Web: www.erdoba.com.tr
        
        
        Hotel Adı: ARTUKLU KERVANSARAYI
        
        Statü: BUTİK OTEL S CLASS
        Oda ve Yatak: 43 Oda, 100 Yatak, 3 Suit, 2 kral
        Yeme-İçme: 350 açık 200 kapalı, 200 toplantı
        
        Tel: 0 482 213 73 53
        
        Faks: 0 482 213 73 54
        
        Adres: MARDİN/MERKEZ
        
        E-mail: fomartuklu@artuklu.com
        
        Web: http://www.artuklu.com
        
        
        Hotel Adı: BÜYÜK MARDİN OTELİ
        
        Statü: ****
        Oda ve Yatak: 53 Oda, 130 Yatak, 8 Suit
        Yeme-İçme: 200 açık 300 kapalı , 300 toplantı
        
        Tel: 0 482 213 10 47
        
        Faks: 0 482 213 14 47
        
        Adres: MARDİN/MERKEZ
        
        E-mail:    info@dunyainsanlarininevi.com
        
        Web: http://www.dunyainsanlarininevi.com
        
        
        Hotel Adı: REYHANİ KASRI HOTEL
        
        Statü: BUTİK OTEL
        Oda ve Yatak: 1 Suit Oda, 5 Delüx Oda, 30 Standart Oda, 2 Cadde Odası
        Yeme-İçme: ---------
        
        Tel: 0 482 212 13 13
        
        Faks: 0 482 212 29 90
        
        Adres: MARDİN/MERKEZ
        
        E-mail: info@reyhanikasri.com.tr
        
        Web: www.reyhanikasri.com.tr
        
        
        Hotel Adı: KASRI ABBAS HOTEL
        
        Statü: BUTİK OTEL
        Oda ve Yatak : ---------
        Yeme-İçme: ---------
        
        Tel: 0 482 213 22 22
        
        Faks: 0 482 213 22 22
        
        Adres: MARDİN/MERKEZ
        
        
        E-mail: bilgi@kasriabbas.com
        
        Web: www.kasriabbas.com
        
        Hotel Adı: MATİAT HOTEL
        
        Statü: ****
        Oda ve Yatak: 72 Oda, 150 Yatak, 16 Suit , 1 King
        Yeme-İçme: 300 açık 350 kapalı , 200 toplantı , kongre ve balo :600
        
        Tel: 0 482 462 68 81
        
        Faks: 0 482 462 68 95
        
        Adres: MARDİN/MİDYAT
        
        E-mail:    matiat@matiat.com.tr
        
        Web: http://www.matiat.com.tr
        
        
        Hotel Adı: OTEL  BİLEN
        
        Statü: ***
        Oda ve Yatak: 108 Oda, 216 Yatak, 8 Suit
        Yeme-İçme: 2000 Açık 300 Kapalı 300 Toplantı
        
        Tel: 0 482 212 55 68
        
        Faks: 0 482 212 25 75
        
        Adres: MARDİN/MERKEZ
        
        E-mail:    -----------
        
        Web: -----------
        
        
        Hotel Adı: OTEL ÖZTOPRAKLAR
        
        Statü: ***
        Oda ve Yatak: 45 Oda, 108 Yatak , 2 suit
        Yeme-İçme: 80 Kapalı
        
        Tel: 0 482 312 33 86
        
        Faks: 0 482 312 25 13
        
        Adres: MARDİN/KIZILTEPE
        
        E-mail: ------------
        
        Web: ------------
        
        Hotel Adı: NEZİRHAN OTELİ
        
        Statü: ****
        Oda ve Yatak: 63 Oda, 114 Yatak, 3 suit
        Yeme-İçme: 200 Kapalı
        
        Tel: 0 482 446 34 16
        
        Faks: 0 482 446 34 19
        
        Adres: MARDİN/NUSAYBİN
        
        E-mail:    ------------
        
        Web: ------------
        
        Hotel Adı: DENKTAŞ TURİSTİK TESİSLERİ
        
        Statü: ***
        Oda ve Yatak: 32 Oda 86 Yatak, 2 suit
        Yeme-İçme: 100 Kapalı
        
        Tel: 0 482 258 11 58
        
        Faks: 0 482 258 11 58
        
        Adres: MARDİN/DERİK
        
        E-mail:    ------------
        Web: ------------
        
        Hotel Adı: AYDINLAR TESİSLERİ
        
        Stat: **
        Oda ve Yatak: 31 Oda, 67 Yatak, 2 suit
        Yeme-İçme: 250 Kapalı , 100 açık
        
        Tel: 0 482 415 19 25
        
        Faks: 0 482 415 36 63
        
        Adres: MARDİN/NUSAYBİN
        
        E-mail: info@aydinlartesisleri.com.tr
        
        Web: www.aydinlartesisleri.com.tr
        
        
        Hotel Adı: DOĞU OTELİ
        
        Statü: **
        Oda ve Yatak: 26 Oda  , 46 Yatak   , 1 suit
        Yeme-İçme: 80 Kapalı
        
        Tel: 0 482 415 59 60
        
        Faks: 0 482 415 51 20
        
        Adres: MARDİN/NUSAYBİN
        
        E-mail:    ---------
        
        Web: ---------
        
        
        Hotel Adı: MARİA KONAĞI
        
        Statü: ---------
        Oda ve Yatak: 9 Oda  , 23 Yatak
        Yeme-İçme: 100 kapalı
        
        Tel: 0 482 213 65 52
        
        Faks: 0 482 213 65 53
        
        Adres: MARDİN/MERKEZ
        
        E-mail:    ---------
        
        Web: ---------
        
        
        Hotel Adı: ÖĞRETMENEVİ
        
        Statü: ---------
        Oda ve Yatak: 32 Oda, 67 Yatak, 3 Suit
        Yeme-İçme: 200 kapalı
        
        Tel: 0 482 213 70 80
        
        Faks: 0 482 213 22 03
        Adres: MARDİN/MERKEZ
        
        E-mail: info@mardinogretmenevi.com
        
        Web: www.mardinogretmenevi.com
        
        Hotel Adı: MARDİN POLİSEVİ
        
        Statü: ---------
        Oda ve Yatak: 33 Oda, 120 Yatak, 6 suit
        Yeme-İçme: 120 kapalı
        
        Tel: 0 482 212 98 72
        
        Faks: 0 482 212 96 83
        
        Adres: MARDİN/MERKEZ
        
        E-mail: ---------
        
        Web: ---------
        
        
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
