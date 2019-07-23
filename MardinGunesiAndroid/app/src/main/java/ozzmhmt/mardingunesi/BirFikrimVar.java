package ozzmhmt.mardingunesi;

import android.content.Intent;
import android.graphics.Typeface;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;


public class BirFikrimVar extends AppCompatActivity {
    EditText konuEt,fikirEt;
    TextView konuTv,fikirTv;
    Button sendBtn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bir_fikrim_var);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbarfikir);
        setSupportActionBar(toolbar);

        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        konuEt=findViewById(R.id.konuEditText);
        fikirEt=findViewById(R.id.fikirEditText);
        konuTv=findViewById(R.id.konuTextView);
        fikirTv=findViewById(R.id.fikirTextView);
        sendBtn=findViewById(R.id.fikirButton);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        konuTv.setTypeface(typeface);
        fikirTv.setTypeface(typeface);
        sendBtn.setTypeface(typeface);
        mTitle.setText("BiR FiKRim VAR");
        sendBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(!konuEt.toString().isEmpty()){
                Intent emailIntent = new Intent(android.content.Intent.ACTION_SEND);
                emailIntent.setType("plain/text");
                emailIntent.putExtra(Intent.EXTRA_SUBJECT, "Bir Fikrem Var");//Email konusu
                emailIntent.putExtra(Intent.EXTRA_TEXT, " "+konuEt.getText().toString()+"/n"+fikirEt.getText().toString());//Email içeriği
                startActivity(Intent.createChooser(emailIntent, "E-mail Göndermek için Seçiniz:")); //birden fazla email uygulaması varsa seçmek için
                String aEmailList[] = { "satoyazilim@gmail.com" };  //Mail gönderielecek kişi.Birden fazla ise virgülle ayırarak yazılır
                emailIntent.putExtra(android.content.Intent.EXTRA_EMAIL, aEmailList);
                startActivity(emailIntent);}
                else
                    Toast.makeText(getApplicationContext(),"Konu Boş olamaz",Toast.LENGTH_SHORT);
            }
        });
    }
}
