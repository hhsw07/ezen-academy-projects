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
        setContentView(R.layout.main);

        Button gc = (Button)findViewById(R.id.go_cl);
        Button gp = (Button)findViewById(R.id.go_pl);
        Button tl = (Button)findViewById(R.id.toLogin);
        Button mp = (Button)findViewById(R.id.go_cls);
        Button gh = (Button)findViewById(R.id.go_hbc);
        Button gm = (Button)findViewById(R.id.go_mycls);
        Button gs = (Button)findViewById(R.id.go_sv);

        gc.setOnClickListener(gclListen);
        gp.setOnClickListener(gplListen);
        tl.setOnClickListener(tlListen);
        mp.setOnClickListener(mpListen);
        gh.setOnClickListener(ghListen);
        gm.setOnClickListener(gmListen);
        gs.setOnClickListener(gsListen);

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

    View.OnClickListener tlListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tl = new Intent(MainActivity.this, login.class);
            startActivity(tl);
        }
    };
    View.OnClickListener mpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mp = new Intent(MainActivity.this, mypOrder.class);
            startActivity(mp);
        }
    };
    View.OnClickListener ghListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gh = new Intent(MainActivity.this, hb_faclass.class);
            startActivity(gh);
        }
    };
    View.OnClickListener gmListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gm = new Intent(MainActivity.this, hb_myclass.class);
            startActivity(gm);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gs = new Intent(MainActivity.this, Snotice.class);
            startActivity(gs);
        }
    };

}
