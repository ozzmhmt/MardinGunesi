package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class cami extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cami);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarcami);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("CAmİLER");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.cami1, R.drawable.cami2, R.drawable.cami3,R.drawable.cami4, R.drawable.cami5,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("Abdullatif ( Latifiye) Camii:\n" +
                "        \n" +
                "        M.S.1314'de Artukoğullarından Melik Salih ve Melik Muzaffer'in adamlarından Abdullatif Bin Abdullah tarafından yaptırılmıştır. Minaresi Mısır Valisi Muhammed Ziya Tayyar Paşa tarafından inşa ettirilmiştir. Sultan Avis ve Melik Mansur burada gömülüdür.\n" +
                "        \n" +
                "        Camii (Cami-i Kebir):\n" +
                "        \n" +
                "        Mardin'deki camilerin en eskisidir. Ulu cami mahallesindedir. Kıble duvarına paralel uzanan üç nef, mihrap önünde 2 nef boyunca tromplu ve dıştan ' bir kubbe ile örtülmüştür. 6 paye üzerine oturan kubbe, bütün mekana hakimdir. Çapraz tonozlu revaklarda yalnız kuzeyde beş bölüm kalmış diğerleri kay muştur. Burada revaklar arasında küçük sel sebilli bir eyvan dikkati çeker. Minaresi Artuklu hükümdarı Kudbettin İlgazi zamanında inşa olunmuştur (1176). Bu camiye, Artuklu hükümdarlarından Melik Salih (1312-1362) bir kısım malını vakıf yaptırmıştır. Bunlar 38 dükkan, bir hamam, Bab-ı Cedid civarında bir bahçe ve Mardin köylerinde bir çok bağ dan oluşuyordu. Mardin'in en önemli İslami merkezlerinden biri olan Ulu Cami, devasa yapısıyla tarihin ihtişamını gökyüzüne mağrur minaresiyle göz kırparak taşımaktadır.\n" +
                "        \n" +
                "        Melik Mahmut Camii (Bab Es Sur):\n" +
                "        \n" +
                "        Camii, yatık bir dikdörtgen alan kaplayan ve bir yanında ve diğer yanlardan dar sokakların ayrıldığı evlerle ve çeşitli portal şeklinde taş işlemeli ana girişi küçük bir meydanda açık durumdadır. Melik Mahmud (1367-1368)'un burada defnedilmiş olmasından da bu camiye Melik Mahmud Camisi denmektedir.\n" +
                "        \n" +
                "        Reyhaniye Camii:\n" +
                "        \n" +
                "        1756 tarihinde Ahmet Paşa'nın kızı Adile Hanım tarafından yaptırılan bu camii Hasan ayyar çarşısında bulunmaktadır. Minaresi sekiz köşelidir.\n" +
                "        \n" +
                "        Şehidiye Medresesi:\n" +
                "        \n" +
                "        Şehidiye Camii 1214 tarihinde Melik Mansur Nasreddin Artuk Aslan tarafından yaptırılmıştır. Bu günkü minaresi, Şerefeye çıkılan çift merdivenleri ile helezonik yapıdadır. 1916 yılında inşa edilmiştir");
    }
}
