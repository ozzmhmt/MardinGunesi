package ozzmhmt.mardingunesi;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    Button mardiniTaniyalimBtn,gezilecekYerlerBtn,elSanatlariBtn,otellerBtn,yemeklerBtn,iletisimBtn,birFikrimVarBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mardiniTaniyalimBtn=findViewById(R.id.mardiniTaniyalim);
        mardiniTaniyalimBtn.setOnClickListener(this);
        gezilecekYerlerBtn=findViewById(R.id.gezilecekYerler);
        gezilecekYerlerBtn.setOnClickListener(this);
        elSanatlariBtn=findViewById(R.id.elSanatlari);
        elSanatlariBtn.setOnClickListener(this);
        otellerBtn=findViewById(R.id.oteller);
        otellerBtn.setOnClickListener(this);
        yemeklerBtn=findViewById(R.id.yemekler);
        yemeklerBtn.setOnClickListener(this);
        iletisimBtn=findViewById(R.id.iletisim);
        iletisimBtn.setOnClickListener(this);
        birFikrimVarBtn=findViewById(R.id.birFikrimVar);
        birFikrimVarBtn.setOnClickListener(this);

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.mardiniTaniyalim:
                startActivity(new Intent(getApplicationContext(),MardiniTaniyalim.class));
                break;
            case R.id.gezilecekYerler:
                startActivity(new Intent(getApplicationContext(),GezilecekYerler.class));
                break;
            case R.id.elSanatlari:
                startActivity(new Intent(getApplicationContext(),ElSanatlari.class));
                break;
            case R.id.oteller:
                startActivity(new Intent(getApplicationContext(),Oteller.class));
                break;
            case R.id.yemekler:
                startActivity(new Intent(getApplicationContext(),Yemekler.class));
                break;
            case R.id.birFikrimVar:
                startActivity(new Intent(getApplicationContext(),BirFikrimVar.class));
                break;
            case R.id.iletisim:
                startActivity(new Intent(getApplicationContext(),İletisim.class));
                break;

        }
    }
}
