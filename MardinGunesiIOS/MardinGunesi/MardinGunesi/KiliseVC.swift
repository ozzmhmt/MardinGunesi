//
//  KiliseVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import ImageSlideshow

class KiliseVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "muze1"), BundleImageSource(imageString: "muze2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
        
        Mor İliyo Kilisesi
        
        Mardin Kalesindedir. 3.yüzyılda yapılmıştır.Kilise, Çiftlik köyündedir. Kilise içerisinde, yan bölümünde iki oda mevcuttur. Bu odalara geçiş çok alçak tavanlı kapıdan yapılmaktadır. Orta kısımda bulunan şifalı denen bölüm yoğun bir şekilde ziyaret edilmektedir.
        
        
        Kırmızı (Surp Kevork) Kilise: 420 yılında yapılmıştır. 10 taş sütun üzerinde inşa edilen sede, mihrabın farklı geometrik taş süslemeleriyle ayrı bir özelliği vardır.
        Derik’teki Surp Kevork Kilisesi’nin gerçek yapım tarihi belli değildir. Bazı kayıtlara göre kilise 1650 yılında yapılmıştır. 1915 yılından sonra Devlet Hazinesi’ne devredilmiş olan bina değişik amaçlarla kullanılmıştır. 1957 yılında bölgenin cemaati tarafından Devlet’ten satın alınarak Garabed Keçeci isminde Derikli bir Ermeni’nin ismine kaydedilir. Onun ölümünden sonra da varislerine devredilir.
        
        Kilise’nin son onarımı 2004 yılında gerçekleşerek Başepiskopos Aram Ateşyan tarafından kutsanıp yeniden ibadete açılır.
        
        
        İzozoel Kilisesi
         Midyat’ın Altıntaş (Keferze) köyünde bulunan bu kilise, köyün kuzeyindeki en yüksek noktaya yerleşmiştir. Kilisenin görkemli konumunu vurgulayan çan kulesi Midyat’taki taş işçiliği ve işlemeciliğinin en güzel örneklerinden birisidir.
        
        
        Bir inanışa göre, bu kilise Mor Gabriel Manastırının mimarı Şufnayn’ın oğulları mimar Theodosius ve Theodore tarafından 6. yüzyıl başlarında inşa edilmiştir. Ancak bu kilisenin Turabdin’in parlak dönemlerini yaşadığı 8.yüzyılda yapıldığı da iddia edilmektedir.
        
        Mat Behnam (Kırklar)Kilisesi: 5.yüzyılda yapılmıştır. Şar Mahallesindedir. Kilise üç giriş kapılı, ince taş işçiliğiyle işlenmiş Mihrapları , dört yüzyıllık ahşap Mihrap kapıları, 1500 yıllık kök boya ile baskı perdeleri, geniş avlusu içinde çan kulesi evi ve adeta dantel gibi işlenmiş taş oymacılığı örneklerinin yeraldığı divan mevcuttur. 1170 yılında Kırk şehitlere ait kemikler bu kiliseye getirilmiştir. Bu gün Mardin Metropolitlik Kilisesidir
        
        
        Meryemana Kilisesi ve Patrikhanesi
         1860 yılında yaptırılan kilise, akustik bir ses düzenine sahiptir. Kilisede, patriğin oturma yeri ve vaaz yeri ahşap el işçiliği ile süslenmiş olup, zarif bir görünüm sergilemektedir.
        Patrikhane, 1895 yılında inşa ettirilmiştir. 1988 yılında Kültür Bakanlığı’na devredilen Patrikhane, restore edilerek 1995 yılından itibaren müze olarak kullanılmaya başlanmıştır. Eski Patrikhane binasının bir kısmı, 1914-1915 yıllarında yapılan genişletme çalışmalarında yıkılmıştır.
        
        
        MORT ŞMUNİ KİLİSESİ
        
        6. yy da inşa edildiği düşünülen Mort Şmuni Kilisesi önceleri Mardin surlarının dışındaydı. Yani şehrin dışında inşa edilmişti. Sonraları şehrin genişleyip yayılması sonucu, doğal olarak şehrin ortasında kalmıştır. Kilise yer itibariyle yamaç kenarında yeni yolun üst tarafında Teker Mahallesi’ndedir. Mardin Ovası’nın uçsuz bucaksız görüntüsü yapının manzarasıdır.
        Kapıları Mardin’e özgü nakışlı, demirli, motifli ceviz ağacından olan yapının batı bölümünde; geçmişte tüm kiliselerde verilen dini, kültürel ve genel eğitimin yapıldığı medresesi bulunur. Medresenin kapısında Süryanice olarak yazılmış yazıttan anladığımız şehrin 19. yy’a girerken çok kötü günler geçirdiği, büyük bir yokluğun yaşandığı bulunabilen şeylerin hatta yiyeceklerin çok pahalı olduğu şehre giriş ve çıkışların yasaklandığı ve Mardin’e yapılan saldırıların olduğudur.
        
        Kilise’nin birçok metropolite ev sahipliği yapan divanhanesindeki yazıtta ise bu bölümün 19. yy sonlarında Patrik 3. Petrus döneminde kilise cemaatine bağlı kimseler tarafından yaptırıldığı yazılıdır. Çan Kulesi ise 1910 yılında yapılmıştır. Ayrıca yapının üç mezarlığı bulunur. Bunlardan biri avluda bulunan eski mezar diğeri kuzey tarafta giriş kapısının yanında, damla bitişik özel mezar ve nihayet sonuncusu da yapının dışında bulunan mezarlıktır.
        
        
        Mor Petrus ve Pavlus Kilisesi
         1914’te Patrik II. Abdullah döneminde Papaz Abdulmesih’in gayretleriyle Petrus ve Pavlus adına yapılmıştır. Kök boyalarla el işi baskı perdeleri mevcuttur. Bu kilisenin taş işlemeleri sadedir. Gül Mahallesi’ndedir.

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
