package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class kaleler extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kaleler);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarkale);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("KALELER");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.kale1, R.drawable.kale2, R.drawable.kale3,R.drawable.kale4,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("Kız Kalesi\n" +
                "        \n" +
                "        Mardin il merkezinin 5 km. doğusunda bulunan Kız Kalesi gözetleme ve karakol kalesi niteliğinde bir yapıdır. Kalenin ne zaman ve kimler tarafından yaptırıldığı konusunda herhangi bir bilgi bulunmamaktadır.\n" +
                "        \n" +
                "        Kale, yöreye özgü kesme taştan yapılmıştır. Kale içerisinde Kral kızına ait olduğu söylenen bir taht, su sarnıçları, kuyular, çeşitli yapı kalıntılarının temelleri ile mağaralar bulunmaktadır. Günümüze harap bir durumda gelebilmiştir.\n" +
                "        \n" +
                "        \n" +
                "        Mardin Kalesi\n" +
                "        \n" +
                "        Kartal Yuvası olarak da bilenen Mardin Kalesi, birçok medeniyet tarafından kullanılmış çok önemli bir kaledir. Pers, Roma, Sümer, Babil, Asur, Mitaniler, Emeviler, Abbasiler, Selçuklular, Artuklular, Karakoyunlular, Akkoyunlular, Safaviler ve Osmanlılar döneminde önemli kale olma özelliğini sürdüren Mardin Kalesi günümüzde de yerli ve yabancı turistlerin ziyaret ettiği yerler arasında yerini almıştır. \u2028\u2028Ateşe tapan bir kral olan Şad Buhari, hastalandığında bu kalede kalır ve hızla iyileşince kendisi için bir kasır yaptırıp 12 yıl burada yaşamına devam eder. Yıllar geçtikte Pers ve Babil'den askerlerini ve sivil halkını buraya yerleştirir. Ardından ekonomik olarak zenginleşen bölgede bir veba salgını olup kaledeki tüm halkın ölmesine sebep olmuştur. \u2028\u2028Böyle bir yerleşim hikayesi olan Mardin Kalesi, ilk zamanlarındaki gibi sağlam olmasa da yapının büyük bir kısmı hala ayaktadır. Kayalıkların üzerinde olan kale aynı zamanda görkemiyle ve sağlamlığıyla birçok şaire ilham olmuştur. Mardin gezinizde görülmesi gereken yerlerden biri olan Mardin Kalesi'nin ardından; Kasımiye Medresesi'ni, Kırklar Kilisesi'ni, Mor Mihail Kilisesi'ni, Deyrülzeferan Manastırı'nı ve Mardin Müzesi'ni ziyaret edebilirsiniz.\n" +
                "        \n" +
                "        Zerzevan Kalesi\n" +
                "        \n" +
                "        Son yıllardaki arkeolojik kazı çalışmalarıyla sırları açığı çıkarılan Zerzevan Kalesi, Diyarbakır’daki en önemli Doğu Roma dönemi eseri.\n" +
                "        Doğu Roma İmparatorluğu’nun Diyarbakır ile Mardin arasındaki antik ticaret yolu üstünde askeri üs olarak kurduğu ve İS 400 ile 700’lü yıllar arasında hizmet veren Zerzevan Kalesi güzelliğiyle göz kamaştırıyor. İlk kazı çalışmaları 4 Ağustos-14 Ekim 2014 arasında yapılan kalenin 15 Haziran 2015’te başlayacak ikinci etap kazı çalışmalarının Doğu Roma İmparatorluğu’nun Diyarbakır’daki geçmişine de ışık tutması bekleniyor.\n" +
                "        Zerzevan Kalesi’nde arkeolojik çalışmalar Kültür ve Turizm Bakanlığı ve Kültür Varlıkları ve Müzeler Genel Müdürlüğü’nün izinleri ile başladı. Çalışmalar Diyarbakır Müze Müdürlüğü yönetiminde, Dicle Üniversitesi Edebiyat Fakültesi Arkeoloji Bölümü Öğretim Üyesi Yrd. Doç. Dr. Aytaç Coşkun başkanlığında 35 kişilik bir ekiple yürütülüyor.\n" +
                "        \n");
    }
}
