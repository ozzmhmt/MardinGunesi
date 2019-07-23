//
//  MedreselerVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//

import UIKit
import ImageSlideshow

class MedreselerVC: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    @IBOutlet weak var txtView: UITextView!
    
    let localSource = [BundleImageSource(imageString: "altunboga"), BundleImageSource(imageString: "hatuniye"), BundleImageSource(imageString: "kasımiye"), BundleImageSource(imageString: "melikMansur"), BundleImageSource(imageString: "muzaffariye"), BundleImageSource(imageString: "sahSultan"), BundleImageSource(imageString: "savurKapi"), BundleImageSource(imageString: "Sehidiye"), BundleImageSource(imageString: "Zinciriye")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtView.isScrollEnabled = false
        
        txtView.text = """
            Altun Boğa Medresesi
        
            Melik Mansur Ahmet Küçük'ün veziri Altun Boğa tarafından 1364 yılında yaptırılmıştır.
        
            Dinlerin iç içe yaşandığı ve her medeniyetin izleri bulunan Mardin, tarihi zenginliğini gözler önüne sermektedir. Yıl içerisinde yerli ve yabancı turistlerin yoğun ilgisini gören Mardin, camileriyle, kiliseleriyle, manastırlarıyla sizleri uzun bir tarih yolculuğuna çıkaracak.
             Öncelikle, Mardin gezinize eklemeniz gereken çok yer olacak. Listenize dahil etmenizi önerdiğimiz Altunboğa Medresesi'nden biraz bahsedelim. Mardin'in Tekke Mahallesi'nde yer alan Altunboğa Medresesi'nin yapılış tarihi hakkında kesin bir bilgi bulunmamaktadır. Kâtip Ferdi'nin kayıtlarına göre ise; Melik Mansur'un vezirliğini yapan Altunboğa tarafından inşa ettirilmiştir. Medresenin mimari özellikleri göz önünde bulundurulduğunda, XIII. yüzyılın sonlarında XIV. yüzyılın başında yapıldığı anlaşılmaktadır. Altunboğa Medresesi günümüzde çok harap halde olup, sadece çeşmesi iyi durumdadır.
        
        
            Sıtti Radaviye (Hatuniye) Medresesi
        
            Kitâbesinde adı Hatuniye olarak geçmekle birlikte halk arasında kurucusuna nisbetle Sitti Radviyye (Radaviyye) adıyla da bilinen yapı Mardin’in Gül mahallesindedir. Tarihi boyunca fazla müdahale görmüş ve orijinal durumundan çok şey kaybetmiştir; bir kısmı bugün cami olarak kullanılmaktadır.
            Mardin Artuklu Hükümdarı II. Kutbüddin İlgazi’nin saltanatı sırasında (1176-1184) annesi Sitti Raziyye tarafından yaptırılmış ve vakfiyesi 602 (1206) yılında kıble cephesine kazdırılmıştır. Kutbüddin İlgazi’nin de bu medreseye gömülü olduğu kaynaklarda belirtilmektedir. Nitekim mihraplı ana eyvanın doğusunda tromplu kubbe ile örtülü ve mihraplı türbe mekânında iki sanduka bulunmaktadır. Türbedeki taş işçiliği ana eyvandaki gibi dikkat çekicidir.
        
            Kasımiye Medresesi
        
            Kitabesi bulunmayan Kasımiye Medresesi’nin yapımına Artukoğulları Dönemi’nde başlandığı ve Akkoyunlular Dönemi’nde Sultan Kasım tarafından 1487-1502 yılları arasında devam edildiği bilinmektedir. Mardin yapılarının en büyüğü sayılan, iki katlı, açık avlulu, kesme taş ve tuğlanın bir arada kullanıldığı medrese, uçsuz bucaksız Mezopotamya Ovası’nı kucaklamaya devam etmektedir.
            Günümüze kadar ayakta durmayı başarabilen medrese, çok amaçlı kullanılmış. Medrese duvarlarında, astronomi ve tıp bilimine ait simgeler görülür. Medresenin revaklı avlusunda genişçe bir havuz yer alır. Havuzdan birkaç metre uzaklıkta çeşmeden akan su, oluktan geçerek havuza ulaşır. Bu havuz, insan yaşamını doğumdan ölüme anlatmak için felsefi bir mimari yaklaşımla tasarlanmıştır.
        
            Doğumu simgeleyen su kaynağı, ardından hayata başlama, biriktirme yeri, uzun-ince bir gençliğin ardından ihtiyarlık ile yorgunluğu belirten havuzdan sonra ölümü simgeleyen durgun mekân ve mahşeri simgeleyen büyük biriktirme havuzu…
            Bir zamanlar, geceleri yıldızların bu havuza yansımasıyla astronomi dersleri verildiği bilinir. Dersliklerin kapı yüksekliği bir metreden biraz fazla tutulmuştur. Bu sayede öğrenci hocasının huzuruna girerken başını eğer ve hürmette kusur etmemesi gerektiğini hatırlar.
        
            Melik Mansur Medresesi
            
        
            Mardin'in tarihi medreselerinden biri olan Melik Mansur Medresesi, il merkezine bağlı olan Gül Mahallesi'nde bulunmaktadır.
             Mardin gezisine gelen çoğu turistin yoğun ilgisini gören Melik Mansur Medresesi, Haliliye ve Şeyh Aban Şeyh isimleriyle de anılmaktadır. Melik Mansun Medresesi'nin kitabesini günümüz kadar gelememiştir. Bu sebepten dolayı yapılış tarihi hakkında kesin bir bilgi bulunmamaktadır. Tahminlere göre; Artukoğullarından Melik Mansur döneminde yapılmıştır. Günümüzde harap bir şekilde olsa da görülmeye değer yapılar arasında kendini gösteren yapının sadece mescidi sağlamlığını korumaktadır. Mardin'de yapacağınız tarihi gezinize Melik Mansur Medresesi'ni ekleyebilirsiniz. Bu tarihi yapı, Savur Kapı Medresesi'ne, Altunboğa Medresesi'ne ve Şehidiye Medresesi'ne yakın bir konumdadır. Sadece bir gününüzü şehrin merkezindeki tarihi yapılara ayırabilirsiniz.
        
            Muzafferiye Medresesi
        
        
            Dinlerin birleştiği, büyük bir tarihe sahip olan Mardin, tarihi mekanlarıyla uzun bir yolculuğa çıkarıyor gelen misafirlerini. Mardin'i daha yakından tanımak için dostlarınızla birlikte bir yolculuk yapmayı planlıyorsanız, listenize ekleyeceğiniz çok nokta olacak.
             Muzafferiye Medresesi, Artukoğullarından Melik Muzaffer Karaaslan tarafından inşa edilmiştir. Medresenin kitabesi günümüze kadar gelemediği için yapılış yılı bilinmemektedir. Fakat XIII.- XIV. yüzyılları arasında inşa edildiği tahmin edilmektedir. Muzafferiye Medresesi'nin yapımında siyah beyaz taşlar kullanılmıştır.
             Mardin'in tarihi yapıları arasında yerini alan medrese, günümüze kadar gelmeyi başaramamıştır. Fakat bulunduğu bölgede gezilecek çok yer bulunur.
        
            Savur Kapı Medresesi
        
            Mardin'in merkezinde bulunan medreselerden biridir Savur Kapı Medresesi. Bab es Sur Camii'nin yakınındaki dar bir sokakta bulunur ve ulaşımı oldukça kolaydır.   Savur Kapı Medresesi'nin yapılış tarihi hakkında kesin bir bilgi bulunmamakla birlikte; Artukoğulları döneminde, XIII.-XIV. yüzyıllar arasında yapıldığı tahmin edilmektedir. Savur Kapı Medresesi günümüzde harap bir halde olsa da; görülmeye değer yapılar arasında olmaya devam etmektedir. Mardin'i yakından tanıyacağınız gezinize Savur Kapı Medresesi dahil olabilir.   Savurkapı Medresesi; Altunboğa Medresesi, Marufiye Medresesi ve Şehidiye Medresesi'ne yakın olmasından dolayı bir güne birçok tarihi yapı sığdırabilirsiniz.
        
            Şah Sultan Medresesi
        
            Mardin'in tarihine ışık tutan yapılardan biridir Şah Sultan Medresesi. Yapı, diğer tarihi mekanlara oldukça yakındır ve ulaşımı da bir o kadar kolaydır. Şah Sultan Medresesi, Tekke Mahallesi'ndedir.   Akkoyunlu İbrahim Bey'in eşi Şah Sultan tarafından inşa ettirilmiştir. Medresenin kitabesi bulunmadığından dolayı yapıldığı tarih hakkında kesin bir bilgi yoktur. Mimari yapısından XV.-XVI. yüzyıllar arasında inşa edildiği anlaşılmaktadır. Yapı günümüzde harap bir halde olsa da hala görülmeye değer. Mardin gezinizde Şehidiye Medresesi'ni, Hatuniye Medresesi'ni ve diğer tarihi alanları gezerken Şah Sultan Medresesi'ni de ziyaret edebilirsiniz. Şehrin tarihi kalıntılarına yaptığınız geziler son bulunca unutulmaz bir manzaraya sahip olan Gurs Vadisi'nin güzelliğini keşfedebilirsiniz.
        
            Şehidiye Medresesi
        
            Mardin Şehidiye Mahallesi'nde yer alan Şehidiye Medresesi, Semanin Medresesi olarak da bilinmektedir.   Medresenin yapıldığı yıl kesin olarak bilinmemektedir. Girişindeki vakfiyesine göre; Necmeddin Gazi döneminde 1239-1260 yılları arasında; Katip Ferdi'ye göre ise Artuk Aslan döneminde 1201-1239 yılında yaptırıldığı ileri sürülmektedir. Şehidiye Medresesi'ne zaman içinde yeni eklemeler yapılmış olup, orijinalliğinden biraz olsun uzaklaşmıştır. Medrese, günümüzde avlu içerisinde sıralanmış yapılardan meydana gelmektedir. Mardin il merkezinde bulunan Şehidiye Medresesi'ne ulaşım oldukça kolaydır.   Şehidiye Medresesi yakınındaki otellerin birinde konaklarsanız; Marufiye Medresesi'ni ve Hatuniye Medresesi'ni kolaylıkla ziyaret edebilirsiniz. Şehrin önemli dini yapıları arasındaki Mor Gabriel Manastırı, Mor Mihail Kilisesi ve Kırklar Kilisesilistenize dahil edilebilecek gezi noktaları arasındadır.
        
            Zinciriye (Sultan İsa) Medresesi
        
            İlk defa Mardin'de görülen Timur ve ordusu ile savaşmış olan Melik Necmeddin İsa bir süre bu medresede hapsedilmişti.
            Halk arasında Zinciriye Medresesi diye de anılan Sultan İsa Medresesi, doğu ve batı uçlarındaki dilimli kubbeleri ve doğu tarafına rastlayan yüksek anıtsal portali ile çok uzaklardan bile dikkati çekiyor.
            Dikdörtgen ve geniş bir alanı kaplamakta olan yapı, iki kat üzerinde avlu, cami, türbe ve çeşitli ek mekânlardan meydana geliyor. Portalden girince yıldız tonozla örtülü bir bölüme çıkılıyor. Batısında ise cami ile birlikte avluya açılan bir koridor yer alıyor.
            Koridorun güneyindeki cami mekânının ortasında mukarnaslı tromplu bir kubbe bulunuyor. Medresede; mihrabın etrafı kakma motiflerle işlenmiş, minberi de kesme taştan yapılmış. Avlunun batısındaki eyvandan ise türbe olduğu anlaşılan ve kubbe ile örtülü mekâna geçiliyor.
        
        
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
