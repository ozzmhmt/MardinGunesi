package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class kiliseler extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kiliseler);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarkilise);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("KiLiSELER");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.kilise1, R.drawable.kilise2, R.drawable.kilise3,R.drawable.kilise4,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("Mor İliyo Kilisesi\n" +
                "        \n" +
                "        Mardin Kalesindedir. 3.yüzyılda yapılmıştır.Kilise, Çiftlik köyündedir. Kilise içerisinde, yan bölümünde iki oda mevcuttur. Bu odalara geçiş çok alçak tavanlı kapıdan yapılmaktadır. Orta kısımda bulunan şifalı denen bölüm yoğun bir şekilde ziyaret edilmektedir.\n" +
                "        \n" +
                "        \n" +
                "        Kırmızı (Surp Kevork) Kilise: 420 yılında yapılmıştır. 10 taş sütun üzerinde inşa edilen sede, mihrabın farklı geometrik taş süslemeleriyle ayrı bir özelliği vardır.\n" +
                "        Derik’teki Surp Kevork Kilisesi’nin gerçek yapım tarihi belli değildir. Bazı kayıtlara göre kilise 1650 yılında yapılmıştır. 1915 yılından sonra Devlet Hazinesi’ne devredilmiş olan bina değişik amaçlarla kullanılmıştır. 1957 yılında bölgenin cemaati tarafından Devlet’ten satın alınarak Garabed Keçeci isminde Derikli bir Ermeni’nin ismine kaydedilir. Onun ölümünden sonra da varislerine devredilir.\n" +
                "        \n" +
                "        Kilise’nin son onarımı 2004 yılında gerçekleşerek Başepiskopos Aram Ateşyan tarafından kutsanıp yeniden ibadete açılır.\n" +
                "        \n" +
                "        \n" +
                "        İzozoel Kilisesi\n" +
                "        \u2028Midyat’ın Altıntaş (Keferze) köyünde bulunan bu kilise, köyün kuzeyindeki en yüksek noktaya yerleşmiştir. Kilisenin görkemli konumunu vurgulayan çan kulesi Midyat’taki taş işçiliği ve işlemeciliğinin en güzel örneklerinden birisidir.\n" +
                "        \n" +
                "        \n" +
                "        Bir inanışa göre, bu kilise Mor Gabriel Manastırının mimarı Şufnayn’ın oğulları mimar Theodosius ve Theodore tarafından 6. yüzyıl başlarında inşa edilmiştir. Ancak bu kilisenin Turabdin’in parlak dönemlerini yaşadığı 8.yüzyılda yapıldığı da iddia edilmektedir.\n" +
                "        \n" +
                "        Mat Behnam (Kırklar)Kilisesi: 5.yüzyılda yapılmıştır. Şar Mahallesindedir. Kilise üç giriş kapılı, ince taş işçiliğiyle işlenmiş Mihrapları , dört yüzyıllık ahşap Mihrap kapıları, 1500 yıllık kök boya ile baskı perdeleri, geniş avlusu içinde çan kulesi evi ve adeta dantel gibi işlenmiş taş oymacılığı örneklerinin yeraldığı divan mevcuttur. 1170 yılında Kırk şehitlere ait kemikler bu kiliseye getirilmiştir. Bu gün Mardin Metropolitlik Kilisesidir\n" +
                "        \n" +
                "        \n" +
                "        Meryemana Kilisesi ve Patrikhanesi\n" +
                "        \u20281860 yılında yaptırılan kilise, akustik bir ses düzenine sahiptir. Kilisede, patriğin oturma yeri ve vaaz yeri ahşap el işçiliği ile süslenmiş olup, zarif bir görünüm sergilemektedir.\n" +
                "        Patrikhane, 1895 yılında inşa ettirilmiştir. 1988 yılında Kültür Bakanlığı’na devredilen Patrikhane, restore edilerek 1995 yılından itibaren müze olarak kullanılmaya başlanmıştır. Eski Patrikhane binasının bir kısmı, 1914-1915 yıllarında yapılan genişletme çalışmalarında yıkılmıştır.\n" +
                "        \n" +
                "        \n" +
                "        MORT ŞMUNİ KİLİSESİ\n" +
                "        \n" +
                "        6. yy da inşa edildiği düşünülen Mort Şmuni Kilisesi önceleri Mardin surlarının dışındaydı. Yani şehrin dışında inşa edilmişti. Sonraları şehrin genişleyip yayılması sonucu, doğal olarak şehrin ortasında kalmıştır. Kilise yer itibariyle yamaç kenarında yeni yolun üst tarafında Teker Mahallesi’ndedir. Mardin Ovası’nın uçsuz bucaksız görüntüsü yapının manzarasıdır.\n" +
                "        Kapıları Mardin’e özgü nakışlı, demirli, motifli ceviz ağacından olan yapının batı bölümünde; geçmişte tüm kiliselerde verilen dini, kültürel ve genel eğitimin yapıldığı medresesi bulunur. Medresenin kapısında Süryanice olarak yazılmış yazıttan anladığımız şehrin 19. yy’a girerken çok kötü günler geçirdiği, büyük bir yokluğun yaşandığı bulunabilen şeylerin hatta yiyeceklerin çok pahalı olduğu şehre giriş ve çıkışların yasaklandığı ve Mardin’e yapılan saldırıların olduğudur.\n" +
                "        \n" +
                "        Kilise’nin birçok metropolite ev sahipliği yapan divanhanesindeki yazıtta ise bu bölümün 19. yy sonlarında Patrik 3. Petrus döneminde kilise cemaatine bağlı kimseler tarafından yaptırıldığı yazılıdır. Çan Kulesi ise 1910 yılında yapılmıştır. Ayrıca yapının üç mezarlığı bulunur. Bunlardan biri avluda bulunan eski mezar diğeri kuzey tarafta giriş kapısının yanında, damla bitişik özel mezar ve nihayet sonuncusu da yapının dışında bulunan mezarlıktır.\n" +
                "        \n" +
                "        \n" +
                "        Mor Petrus ve Pavlus Kilisesi\n" +
                "        \u20281914’te Patrik II. Abdullah döneminde Papaz Abdulmesih’in gayretleriyle Petrus ve Pavlus adına yapılmıştır. Kök boyalarla el işi baskı perdeleri mevcuttur. Bu kilisenin taş işlemeleri sadedir. Gül Mahallesi’ndedir.");
    }
}
