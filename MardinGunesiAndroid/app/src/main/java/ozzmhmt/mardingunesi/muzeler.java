package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class muzeler extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_muzeler);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarmuze);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("müZELER");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.muze1, R.drawable.muze2,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("MARDİN MÜZESİ\n" +
                "        \n" +
                "        Mardin Merkez 1. Cadde Cumhuriyet Alanı Atatürk heykeli yanındadır. Binanın doğu tarafına bitişik olan Meryem Ana Kilisesi'nin müzeye bakan kapalı portalindeki kitabeye göre bina, 1895 yılında Antakya Patriği İgnatios Behnam Banni tarafından Süryani katolik patrikhanesi olarak yaptırılmıştır.\n" +
                "        Daha sonraları askeri garnizon, M.S.P. İl teşkilatı, kooperatif binası, sağlık ocağı ve polis karakolu olarak kullanılmıştır.\n" +
                "        Binayı Süryani Katolik Vakfı'ndan satın alan Kültür Bakanlığı 1988 yılında bunu restore etmeye karar vermiş ve 1995 yılında da bina müze olarak hizmete açılmıştır. Bu ana kadar eski müze Artuklu sultanlarından Sultan İsa tarafından, 14. yüzyıl başlarında yaptırılan Zinciriye Medresesinde faaliyet gösteriyordu.\n" +
                "        Yeni müze binası tamamen kesme kalker taşından yapılmıştır. İç ve dıştaki tonoz, kemer, korkuluk ve sütun başlıklarında eşsiz süslemeler mevcuttur. \u2028\u2028\u2028Müze üç katlıdır:\n" +
                "        Birinci katta; danışma yeri, konferans, sergi ve dinlenme salonları,\n" +
                "        İkinci katta; etnografya sergi salonu, kütüphane ve eser depoları;\n" +
                "        Üçüncü katta ise Girnevas Höyük kazısında çıkarılan kimi eserlerle, satın alınarak müzeye kazandırılan arkeolojik eserlerin sergilendiği salonlar ve idari bölümler yer almaktadır.\n" +
                "        Müzedeki eserler; M.Ö. 4000'den, M.Ö. 7. yüzyıla kadar olan döneme ait eserlerdir. Arkeolojik salonlarda Eski Tunç, Asur, Urartu, Grek, Pers, Hellenistik, Roma, Bizans, Büyük Selçuklu, Artuklular ve Osmanlı devirlerine ait tabletler, silindir ve damga mühürler, kült kapları, figürinler, metalden bızlar, takılar, keramikler, altın, gümüş ve bakır sikkeler, gözyaşı şişeleri ve kandiller sergilenmektedir.\n" +
                "        \n" +
                "        \n");
    }
}
