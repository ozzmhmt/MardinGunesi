package ozzmhmt.mardingunesi;

import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

public class MardiniTaniyalim extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mardini_taniyalim);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("mARDini TanIYALIm");
        TextView editText=findViewById(R.id.editText);
        int[] sliderImageId = new int[]{
                R.drawable.mardin5, R.drawable.mardin1, R.drawable.mardin2,R.drawable.mardin3, R.drawable.mardin4,
        };
        ViewPager mViewPager = (ViewPager) findViewById(R.id.viewPage);
        ImageAdapter adapterView = new ImageAdapter(this,sliderImageId);
        mViewPager.setAdapter(adapterView);

        editText.setText("" +
                "" +
                "Mardin, mimari, etnografik, arkeolojik, tarihi ve görsel değerleri ile zamanın durduğu izlenimini veren Güneydoğunun şiirsel kentlerinden biridir. M.Ö.4500’den başlayarak klasik anlamda yerleşim gören Mardin, Subari, Sümer, Akad, Babil, Mitaniler, Asur, Pers, Roma, Bizans, Araplar, Selçuklu, Artuklu , Osmanlı dönemine ilişkin bir çok yapıyı bünyesinde harmanlayabilmiş önemli bir açık hava müzesidir.\n" +
                "        \n" +
                "        Mardin’in kuruluşu ile ilgili çeşitli efsaneler bulunmaktadır. Bunlardan birisine göre; Pers hükümdarı Ardeşir’in (226-241) Marde isimli bir kavmi yöreye yerleştirdiği ve şehrin ismi de bu kavimden kaynaklanmıştır. Bir başka efsaneye göre, Pers hükümdarlarından birisi, hasta oğlunu iyileştirmek için buraya getirmiş ve şehzadenin Mardin olan ismi yöreye verilmiştir. Diğer bir efsaneye göre de şehrin kuruluşu, günümüze ulaşan Mardin Kalesinin olduğu yere yerleşen ve gününü ibadetle geçiren Dîn isimli bir alimin öyküsüne bağlanır. Heraklius’un gönderdiği bir komutan Dîn ile önce dost olmuş, sonra da Onu öldürmüştür. Komutan buraya bir kale yaptırmış ve zamanla Dîn Öldü anlamına gelen “Mâte Dîn’in” Mardin’e dönüştüğü ileri sürülmüştür. Bu efsanelere dayanılarak kente, Süryaniler Süryanice Kale ya da Kaleler anlamına gelen Merdin, Merdi, Merdo, Mirdo, Merde, Marda, Mardin demişlerdir. Bizanslılar Maride, Mardia; Ermeniler Merdin; Araplar Maridin; Osmanlılar da Mardin olarak isimlendirmişlerdir.\n" +
                "        \n" +
                "        Geçmişi tek karede dondurmayan, taş sokaklarında dolaşanlara geniş bir tarih yelpazesi sunan büyüleyici bir şehirdir.\n" +
                "        \n" +
                "        \n" +
                "        \n");
    }
}
