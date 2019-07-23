package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class manastirlar extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_manastirlar);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarmanastir);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("mANASTiRLAR");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.manastir1, R.drawable.manastir2, R.drawable.manastir3,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("Deyrul-zafaran Manastırı\n" +
                "        \n" +
                "        İsa’dan sonra 5. yüzyılda inşa edilen Deyrul-zafaran Manastırı, muhteşem mimarisi yanın-da Süryani Kilisesi’nin önemli merkezlerinden biridir. 1932’ye kadar 640 yıl boyunca Süryani Ortodoks patriklerinin ikametgah yeriydi.\n" +
                "        \n" +
                "        Antakya şehrinde kurulmuş olan Yakubi Süryani Patrikhanesi oradan ayrılmıştır. Patrikhane, daha sonra sırasıyla Adana (Sis), Rumkale, Homs, Maraş, Adıyaman ve Diyarbakır gibi şehirlerde uzun süreli kalamayınca, en son Mardin’e taşınır. Tarihte adı, Der-Zafaran Manastırı olarak geçen ve son yıllarda ise Deyrül-Zafaran Manastırı adıyla anılan bu manastır, Yakubi Süryaniler tarafından satın alınarak, Patrikhane’nin merkezi olarak kullanılmıştır.\n" +
                "        \n" +
                "        Manastır, Milattan önce Güneş Tapınağı, daha sonra da Romalılar tarafından kale olarak kullanılan bir kompleks üzerine inşa edildi. Romalılar böl-geden çekilince Aziz Şleymun bazı azizlerin kemiklerini buraya getirterek kaleyi manastıra çevirdi. Bu nedenle Manastır, önceleri Mor Şleymun Manastırı olarak biliniyordu. Mardin ve Kefertüth Metropoliti Aziz Hananyo’nun 793 yılından başlayarak büyük bir tadilat yapmasından sonra Manastır onun adıyla, Mor Hananyo Manastırı olarak bilindi. 15. yüz-yıldan sonra da Manastır’ın etrafında yetişen zafaran (safran) bitkisinden dolayı Manastır, Deyrulzafaran (Safran Manastırı) adı ile anılmaya başlandı.\n" +
                "        \n");
    }
}
