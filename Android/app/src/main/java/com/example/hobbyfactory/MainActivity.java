package com.example.hobbyfactory;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.myclasslist);

        Button gc = (Button)findViewById(R.id.go_cl);
        Button gp = (Button)findViewById(R.id.go_pl);

        gc.OnClickListener(gclListen);
        gp.OnClickListener(gplListen);
    }
    View.OnClickListener gclListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gcl = new Intent(MainActivity.this, CLA.class);
            startActivity(gcl);
        }
    };
    View.OnClickListener gplListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent gpl = new Intent(MainActivity.this, PLA.class);
            startActivity(gpl);
        }
    };


}
