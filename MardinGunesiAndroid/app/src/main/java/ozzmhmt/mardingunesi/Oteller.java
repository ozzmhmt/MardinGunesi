package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class Oteller extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_oteller);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbaroteller);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("OTELLER");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.otel1, R.drawable.otel2, R.drawable.otel3,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText(" OTELLER\n" +
                "        Hotel Adı: HİLTON GARDEN INN MARDİN\n" +
                "        \n" +
                "        Statü: *****\n" +
                "        Oda ve Yatak: 5 Suit Oda, 157 Standart Oda\n" +
                "        Yeme-İçme: 4 Toplantı Salonu, 1 Balo Salonu, SPA Hizmetleri\n" +
                "        \n" +
                "        Tel: 0 482 213 96 00\n" +
                "        \n" +
                "        Faks: 0 482 213 96 00\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail:    ---------\n" +
                "        \n" +
                "        Web: www.hilton.com.tr/tr\n" +
                "        \n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: ERDOBA ELEGANCE HOTEL\n" +
                "        \n" +
                "        Statü: *****\n" +
                "        Oda ve Yatak: 1 Royal Suit Oda, 6 Suit Oda, 209 Standart Oda\n" +
                "        Yeme-İçme: 10 Toplantı Odası, Cep Sineması, SPA Hizmetleri\n" +
                "        \n" +
                "        Tel: 0 482 212 15 00\n" +
                "        \n" +
                "        Faks: 0 482 212 15 00\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        E-mail: info@erdobaelegance.com\n" +
                "        \n" +
                "        Web: www.erdobaelegance.com\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: YAY GRAND OTEL\n" +
                "        \n" +
                "        Statü: ****\n" +
                "        Oda ve Yatak: 1 Kral Dairesi, 105 Oda , 230 Yatak, 6 Grand Suit, 4 Suit\n" +
                "        Yeme-İçme: 1800 Kişilik 4 Top. 800 Kişilik Reyhani Balo, 500 Kişilik Rest.\n" +
                "        \n" +
                "        Tel: 0 482 212 57 77\n" +
                "        \n" +
                "        Faks: 0 482 212 57 97\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail:    mardin@yaygrand.com\n" +
                "        \n" +
                "        Web: www.yaygrand.com\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: ERDOBA EVLERİ\n" +
                "        \n" +
                "        Statü: BUTİK OTEL\n" +
                "        Oda ve Yatak: 30 Oda, 60 Yatak, 3 Suit\n" +
                "        Yeme-İçme: 120 kapalı\n" +
                "        \n" +
                "        Tel: 0 482 212 76 77\n" +
                "        \n" +
                "        Faks: 0 482 212 88 21\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail:    ---------\n" +
                "        \n" +
                "        Web: www.erdoba.com.tr\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: ARTUKLU KERVANSARAYI\n" +
                "        \n" +
                "        Statü: BUTİK OTEL S CLASS\n" +
                "        Oda ve Yatak: 43 Oda, 100 Yatak, 3 Suit, 2 kral\n" +
                "        Yeme-İçme: 350 açık 200 kapalı, 200 toplantı\n" +
                "        \n" +
                "        Tel: 0 482 213 73 53\n" +
                "        \n" +
                "        Faks: 0 482 213 73 54\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail: fomartuklu@artuklu.com\n" +
                "        \n" +
                "        Web: http://www.artuklu.com\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: BÜYÜK MARDİN OTELİ\n" +
                "        \n" +
                "        Statü: ****\n" +
                "        Oda ve Yatak: 53 Oda, 130 Yatak, 8 Suit\n" +
                "        Yeme-İçme: 200 açık 300 kapalı , 300 toplantı\n" +
                "        \n" +
                "        Tel: 0 482 213 10 47\n" +
                "        \n" +
                "        Faks: 0 482 213 14 47\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail:    info@dunyainsanlarininevi.com\n" +
                "        \n" +
                "        Web: http://www.dunyainsanlarininevi.com\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: REYHANİ KASRI HOTEL\n" +
                "        \n" +
                "        Statü: BUTİK OTEL\n" +
                "        Oda ve Yatak: 1 Suit Oda, 5 Delüx Oda, 30 Standart Oda, 2 Cadde Odası\n" +
                "        Yeme-İçme: ---------\n" +
                "        \n" +
                "        Tel: 0 482 212 13 13\n" +
                "        \n" +
                "        Faks: 0 482 212 29 90\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail: info@reyhanikasri.com.tr\n" +
                "        \n" +
                "        Web: www.reyhanikasri.com.tr\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: KASRI ABBAS HOTEL\n" +
                "        \n" +
                "        Statü: BUTİK OTEL\n" +
                "        Oda ve Yatak : ---------\n" +
                "        Yeme-İçme: ---------\n" +
                "        \n" +
                "        Tel: 0 482 213 22 22\n" +
                "        \n" +
                "        Faks: 0 482 213 22 22\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        \n" +
                "        E-mail: bilgi@kasriabbas.com\n" +
                "        \n" +
                "        Web: www.kasriabbas.com\n" +
                "        \n" +
                "        Hotel Adı: MATİAT HOTEL\n" +
                "        \n" +
                "        Statü: ****\n" +
                "        Oda ve Yatak: 72 Oda, 150 Yatak, 16 Suit , 1 King\n" +
                "        Yeme-İçme: 300 açık 350 kapalı , 200 toplantı , kongre ve balo :600\n" +
                "        \n" +
                "        Tel: 0 482 462 68 81\n" +
                "        \n" +
                "        Faks: 0 482 462 68 95\n" +
                "        \n" +
                "        Adres: MARDİN/MİDYAT\n" +
                "        \n" +
                "        E-mail:    matiat@matiat.com.tr\n" +
                "        \n" +
                "        Web: http://www.matiat.com.tr\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: OTEL  BİLEN\n" +
                "        \n" +
                "        Statü: ***\n" +
                "        Oda ve Yatak: 108 Oda, 216 Yatak, 8 Suit\n" +
                "        Yeme-İçme: 2000 Açık 300 Kapalı 300 Toplantı\n" +
                "        \n" +
                "        Tel: 0 482 212 55 68\n" +
                "        \n" +
                "        Faks: 0 482 212 25 75\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail:    -----------\n" +
                "        \n" +
                "        Web: -----------\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: OTEL ÖZTOPRAKLAR\n" +
                "        \n" +
                "        Statü: ***\n" +
                "        Oda ve Yatak: 45 Oda, 108 Yatak , 2 suit\n" +
                "        Yeme-İçme: 80 Kapalı\n" +
                "        \n" +
                "        Tel: 0 482 312 33 86\n" +
                "        \n" +
                "        Faks: 0 482 312 25 13\n" +
                "        \n" +
                "        Adres: MARDİN/KIZILTEPE\n" +
                "        \n" +
                "        E-mail: ------------\n" +
                "        \n" +
                "        Web: ------------\n" +
                "        \n" +
                "        Hotel Adı: NEZİRHAN OTELİ\n" +
                "        \n" +
                "        Statü: ****\n" +
                "        Oda ve Yatak: 63 Oda, 114 Yatak, 3 suit\n" +
                "        Yeme-İçme: 200 Kapalı\n" +
                "        \n" +
                "        Tel: 0 482 446 34 16\n" +
                "        \n" +
                "        Faks: 0 482 446 34 19\n" +
                "        \n" +
                "        Adres: MARDİN/NUSAYBİN\n" +
                "        \n" +
                "        E-mail:    ------------\n" +
                "        \n" +
                "        Web: ------------\n" +
                "        \n" +
                "        Hotel Adı: DENKTAŞ TURİSTİK TESİSLERİ\n" +
                "        \n" +
                "        Statü: ***\n" +
                "        Oda ve Yatak: 32 Oda 86 Yatak, 2 suit\n" +
                "        Yeme-İçme: 100 Kapalı\n" +
                "        \n" +
                "        Tel: 0 482 258 11 58\n" +
                "        \n" +
                "        Faks: 0 482 258 11 58\n" +
                "        \n" +
                "        Adres: MARDİN/DERİK\n" +
                "        \n" +
                "        E-mail:    ------------\n" +
                "        Web: ------------\n" +
                "        \n" +
                "        Hotel Adı: AYDINLAR TESİSLERİ\n" +
                "        \n" +
                "        Stat: **\n" +
                "        Oda ve Yatak: 31 Oda, 67 Yatak, 2 suit\n" +
                "        Yeme-İçme: 250 Kapalı , 100 açık\n" +
                "        \n" +
                "        Tel: 0 482 415 19 25\n" +
                "        \n" +
                "        Faks: 0 482 415 36 63\n" +
                "        \n" +
                "        Adres: MARDİN/NUSAYBİN\n" +
                "        \n" +
                "        E-mail: info@aydinlartesisleri.com.tr\n" +
                "        \n" +
                "        Web: www.aydinlartesisleri.com.tr\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: DOĞU OTELİ\n" +
                "        \n" +
                "        Statü: **\n" +
                "        Oda ve Yatak: 26 Oda  , 46 Yatak   , 1 suit\n" +
                "        Yeme-İçme: 80 Kapalı\n" +
                "        \n" +
                "        Tel: 0 482 415 59 60\n" +
                "        \n" +
                "        Faks: 0 482 415 51 20\n" +
                "        \n" +
                "        Adres: MARDİN/NUSAYBİN\n" +
                "        \n" +
                "        E-mail:    ---------\n" +
                "        \n" +
                "        Web: ---------\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: MARİA KONAĞI\n" +
                "        \n" +
                "        Statü: ---------\n" +
                "        Oda ve Yatak: 9 Oda  , 23 Yatak\n" +
                "        Yeme-İçme: 100 kapalı\n" +
                "        \n" +
                "        Tel: 0 482 213 65 52\n" +
                "        \n" +
                "        Faks: 0 482 213 65 53\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail:    ---------\n" +
                "        \n" +
                "        Web: ---------\n" +
                "        \n" +
                "        \n" +
                "        Hotel Adı: ÖĞRETMENEVİ\n" +
                "        \n" +
                "        Statü: ---------\n" +
                "        Oda ve Yatak: 32 Oda, 67 Yatak, 3 Suit\n" +
                "        Yeme-İçme: 200 kapalı\n" +
                "        \n" +
                "        Tel: 0 482 213 70 80\n" +
                "        \n" +
                "        Faks: 0 482 213 22 03\n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail: info@mardinogretmenevi.com\n" +
                "        \n" +
                "        Web: www.mardinogretmenevi.com\n" +
                "        \n" +
                "        Hotel Adı: MARDİN POLİSEVİ\n" +
                "        \n" +
                "        Statü: ---------\n" +
                "        Oda ve Yatak: 33 Oda, 120 Yatak, 6 suit\n" +
                "        Yeme-İçme: 120 kapalı\n" +
                "        \n" +
                "        Tel: 0 482 212 98 72\n" +
                "        \n" +
                "        Faks: 0 482 212 96 83\n" +
                "        \n" +
                "        Adres: MARDİN/MERKEZ\n" +
                "        \n" +
                "        E-mail: ---------\n" +
                "        \n" +
                "        Web: ---------\n" +
                "        \n");
    }
}
