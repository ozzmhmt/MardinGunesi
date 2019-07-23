package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class Yemekler extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_yemekler);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbaryemekler);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("YEmEKLER");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.yemek1, R.drawable.yemek2, R.drawable.yemek3,R.drawable.yemek4,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("1.Çorbalar: Lebeniye,Un Corbası,Mercimek Corbası,Kelle Paca,Nohut Corbası,Corten,Ginedir Çorbası,Domates Çorbası\n" +
                "        \n" +
                "        2.Kebablar: Soğan Kebabı, Patates Kebab\n" +
                "        \n" +
                "        3.Et Yemekleri: Malzum,Kibbe,Mardin Çiğköftesi,Kelle Paca,Dobo,Firkiye,Güvec,Havuc Türlüs\n" +
                "        \n" +
                "        4.Tavalar-Kızartmalar-Kavurmalar: Semizotu Tavası,Patates,Patlıcan,Biber,Kabak,Havuc Kızartmas\n" +
                "        \n" +
                "        5.Köfteler: İçli Köfte (İkbebet), Aya Köfte (Irok), Çiğköfte, Mercimekli Köfte (Bello) ,Cevizli İçli Köfte ,Kitel Rah\n" +
                "        \n" +
                "        6.Dolmalar-Sarmalar: Patlıcan Dolması,Biber Dolması,İşkembe Dolması,Kaburga Dolması,Kabak Dolması,Hindi Dolması,\n" +
                "        \n" +
                "        Kuzu Dolması,Güvercin Dolması,Domates Dolması,Tavuk Dolması\n" +
                "        \n" +
                "        7.Pilavlar: Sehriyeli Bulgur Pilavı,Kınepleli Pilav,Mercimekli Pilav,Gasore,Ihşene,Coban Pilav\n" +
                "        \n" +
                "        8.Hamur İşleri: Sembusek,Cevizli Börek,Susamlı Patates Böreği,Lor Böreği\n" +
                "        \n" +
                "        9.Zeytinyağlı Yemekler: Zeytinyağlı Yaprak Sarması,Kıneble,Melemen,Nohut Meftunes\n" +
                "        \n" +
                "        10.Piyazlar-Salatalar: Patates Salatası,Çoban Salatası,Beyin Salatası,Acur Salatas\n" +
                "        \n" +
                "        11.Tatlılar-Pastalar: Sütlaç,Davk Bi Dips,Peynir Helvası,Harire,Asure,Zerde,Un Helvası,Zingil,Kahıyye,Davk İl May,Tahinli Helva\n" +
                "        \n" +
                "        12.Tuzlular: Icce,Kişnişli ve Kırmızı Pul Biberli Tandır Cöreg\n" +
                "        \n" +
                "        13.Cerezler: Leblebi,Sekerli Leblebi,Badem,Badem Sekeri,Ibzor,Kavun Cekirdeği,Karpuz Cekirdeği,Kabak Cekirdeği,Bıtım,Mahlep,Pestil,Cevizli ve Bademli Sucuk (Ikude)\n" +
                "        \n" +
                "        14.İçecekler: Mırra,Likör,Üzüm Suyu,Nar Suyu,Suma\n" +
                "        \n" +
                "        15.Turşular: Rami,Hıyar,İşfelleh,Yeşil Zeytin,Dag Hıyarı,Yeşil Nohut Turşusu\n" +
                "        \n");
    }
}
