package ozzmhmt.mardingunesi;

import android.content.Intent;
import android.graphics.Typeface;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class GezilecekYerler extends AppCompatActivity implements View.OnClickListener {

    Button medreselerButton,camilerbutton,kiliselerButton,manastirlarButton,kalelerButton,muzelerbutton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gezilecek_yerler);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        TextView mTitle = (TextView) toolbar.findViewById(R.id.toolbar_title);
        Typeface typeface=Typeface.createFromAsset(getAssets(),"fonts/street_cred.ttf");
        mTitle.setTypeface(typeface);
        mTitle.setText("GEZiLECEK YERLER");
        medreselerButton=findViewById(R.id.medreselerBtn);
        medreselerButton.setOnClickListener(this);
        camilerbutton=findViewById(R.id.camiBtn);
        camilerbutton.setOnClickListener(this);
        kiliselerButton=findViewById(R.id.kiliseBtn);
        kiliselerButton.setOnClickListener(this);
        manastirlarButton=findViewById(R.id.manastirbtn);
        manastirlarButton.setOnClickListener(this);
        kalelerButton=findViewById(R.id.kaleBtn);
        kalelerButton.setOnClickListener(this);
        muzelerbutton=findViewById(R.id.muzebtn);
        muzelerbutton.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.medreselerBtn:
                startActivity(new Intent(getApplicationContext(),medreseler.class));
                break;
            case R.id.camiBtn:
                startActivity(new Intent(getApplicationContext(),cami.class));
                break;
            case R.id.kiliseBtn:
                startActivity(new Intent(getApplicationContext(),kiliseler.class));
                break;
            case R.id.manastirbtn:
                startActivity(new Intent(getApplicationContext(),manastirlar.class));
                break;
            case R.id.kaleBtn:
                startActivity(new Intent(getApplicationContext(),kaleler.class));
                break;
            case R.id.muzebtn:
                startActivity(new Intent(getApplicationContext(),muzeler.class));
                break;
        }

    }
}
