package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class ElSanatlari extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_el_sanatlari);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarelsanatlari);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("EL SANATLARI");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.sanat1, R.drawable.sanat2, R.drawable.sanat3,R.drawable.sanat4, R.drawable.sanat5,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("BAKIRCILIK VE KALAYCILIK\n" +
                "        \n" +
                "        Bakırcılık ve kalaycılık, Mardin merkezinde önemli diğer sanat dalları gibi ayrı bir ihtimamla şehrin özel dokusunda yer bulan kendi adıyla anılan çarşısında yüzyıllardan beri varlığım sürdürmektedir.\n" +
                "        Bakırcılıkta ürünlerin ortaya çıkması son derece ağır şartlarda gerçekleşmekte ve işin tamamı el gücüne dayanmaktadır.Burada bir çok sofra takımı, çanaklar, kaşık, kepçe, kevgir, sini, leğen, yemek tencereleri, kazanlar, güğümlü ibrik denilen ibrikler, su güğümü vb. mutfak eşyaları üretilmektedir. Bakır eşyalar yılda en az bir ke'z kalaylanır.Günümüzde bu sanatı sürdürenlerin sayışı oldukça azdır.\n" +
                "        \n" +
                "        Taş İşlemeciliği\n" +
                "        \n" +
                "        Mardin de çok miktarda bulunan taş ocaklarından alınan taş, ustaların elinde işlendikten sonra ise evlerinde,kasırlarda ve dini yapılanda özgün motiflerle yerini almaktadır. Kapı, pencere çevreleri, sütunlar, kemerler taş işçiliğinin oya gibi ince örnekleri ile bezelidir.\n" +
                "        \n" +
                "        TELKARİ(GÜMÜŞ VE ALTIN)\n" +
                "        \n" +
                "        Telkari tel halinde gümüş veya altını tahta üzerinde açılmış oyuklara ve gömerek yapılan süslemedir. Tel haline getirilen altın ve gümüş kanaviçe zarafetinde ilmek ilmik işlenerek süs ve ziynet eşyasına dönüştürülür.Bu ince el sanatı Mardin Merkez ve Midyat ilcesine özgüdür. Başka bir yerde bu sanatı görmek mümkün değildir.\n" +
                "        \n" +
                "        TESTİCİLİK-ÇANAK VE ÇÖMLEKÇİLİK\n" +
                "        \n" +
                "        Testicilik, Çanak ve Çömlekçilik(Bardak,çömlek,küp,saksı vb. ürünler) Merkez ve Midyat ilçelerinde çok eski yıllardan beri devam eden bir sanat dalıdır. Yörenin kırmızı toprağı küp yapımcılığına uygun olduğu için bu sanat dalı bu ilçelerde gelişme göstermiştir. Testiler aynı zamanda evlerin kubbeli tavanlarında da kullanılmıştır.\n" +
                "        \n" +
                "        ");
    }
}
