//
//  KalelerVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class KalelerVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "kale1"), BundleImageSource(imageString: "kale2"), BundleImageSource(imageString: "kale3"), BundleImageSource(imageString: "kale4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        Kız Kalesi
        
        Mardin il merkezinin 5 km. doğusunda bulunan Kız Kalesi gözetleme ve karakol kalesi niteliğinde bir yapıdır. Kalenin ne zaman ve kimler tarafından yaptırıldığı konusunda herhangi bir bilgi bulunmamaktadır.
        
        Kale, yöreye özgü kesme taştan yapılmıştır. Kale içerisinde Kral kızına ait olduğu söylenen bir taht, su sarnıçları, kuyular, çeşitli yapı kalıntılarının temelleri ile mağaralar bulunmaktadır. Günümüze harap bir durumda gelebilmiştir.
        
        
        Mardin Kalesi
        
        Kartal Yuvası olarak da bilenen Mardin Kalesi, birçok medeniyet tarafından kullanılmış çok önemli bir kaledir. Pers, Roma, Sümer, Babil, Asur, Mitaniler, Emeviler, Abbasiler, Selçuklular, Artuklular, Karakoyunlular, Akkoyunlular, Safaviler ve Osmanlılar döneminde önemli kale olma özelliğini sürdüren Mardin Kalesi günümüzde de yerli ve yabancı turistlerin ziyaret ettiği yerler arasında yerini almıştır.   Ateşe tapan bir kral olan Şad Buhari, hastalandığında bu kalede kalır ve hızla iyileşince kendisi için bir kasır yaptırıp 12 yıl burada yaşamına devam eder. Yıllar geçtikte Pers ve Babil'den askerlerini ve sivil halkını buraya yerleştirir. Ardından ekonomik olarak zenginleşen bölgede bir veba salgını olup kaledeki tüm halkın ölmesine sebep olmuştur.   Böyle bir yerleşim hikayesi olan Mardin Kalesi, ilk zamanlarındaki gibi sağlam olmasa da yapının büyük bir kısmı hala ayaktadır. Kayalıkların üzerinde olan kale aynı zamanda görkemiyle ve sağlamlığıyla birçok şaire ilham olmuştur. Mardin gezinizde görülmesi gereken yerlerden biri olan Mardin Kalesi'nin ardından; Kasımiye Medresesi'ni, Kırklar Kilisesi'ni, Mor Mihail Kilisesi'ni, Deyrülzeferan Manastırı'nı ve Mardin Müzesi'ni ziyaret edebilirsiniz.
        
        Zerzevan Kalesi
        
        Son yıllardaki arkeolojik kazı çalışmalarıyla sırları açığı çıkarılan Zerzevan Kalesi, Diyarbakır’daki en önemli Doğu Roma dönemi eseri.
        Doğu Roma İmparatorluğu’nun Diyarbakır ile Mardin arasındaki antik ticaret yolu üstünde askeri üs olarak kurduğu ve İS 400 ile 700’lü yıllar arasında hizmet veren Zerzevan Kalesi güzelliğiyle göz kamaştırıyor. İlk kazı çalışmaları 4 Ağustos-14 Ekim 2014 arasında yapılan kalenin 15 Haziran 2015’te başlayacak ikinci etap kazı çalışmalarının Doğu Roma İmparatorluğu’nun Diyarbakır’daki geçmişine de ışık tutması bekleniyor.
        Zerzevan Kalesi’nde arkeolojik çalışmalar Kültür ve Turizm Bakanlığı ve Kültür Varlıkları ve Müzeler Genel Müdürlüğü’nün izinleri ile başladı. Çalışmalar Diyarbakır Müze Müdürlüğü yönetiminde, Dicle Üniversitesi Edebiyat Fakültesi Arkeoloji Bölümü Öğretim Üyesi Yrd. Doç. Dr. Aytaç Coşkun başkanlığında 35 kişilik bir ekiple yürütülüyor.
        
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
