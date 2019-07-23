package ozzmhmt.mardingunesi;

import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class splashScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        Thread timeTimes= new Thread() {
            @Override
            public void run() {
                try{
                    sleep(3000);

                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                finally {
                    Intent intent= new Intent(splashScreen.this,MainActivity.class);
                    startActivity(intent);
                }
            }

        };
        timeTimes.start();
    }
}
