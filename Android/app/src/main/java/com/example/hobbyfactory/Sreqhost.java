package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.appcompat.app.AppCompatActivity;

public class Sreqhost extends AppCompatActivity {
    @Override
    protected void onCreate( Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro04_reqhost);


        Button mp = (Button)findViewById(R.id.go_cls4);
        Button gh = (Button)findViewById(R.id.go_hbc4);
        Button gm = (Button)findViewById(R.id.go_mycls4);
        Button gs = (Button)findViewById(R.id.go_sv4);
        ImageButton gt = (ImageButton)findViewById(R.id.go_title4);
        Button tn = (Button)findViewById(R.id.title_notice4);
        Button tf = (Button)findViewById(R.id.title_faq4);
        Button tq = (Button)findViewById(R.id.title_qna4);
        Button tr = (Button)findViewById(R.id.title_req4);

        mp.setOnClickListener(mpListen);
        gh.setOnClickListener(ghListen);
        gm.setOnClickListener(gmListen);
        gs.setOnClickListener(gsListen);
        gt.setOnClickListener(gtListen);
        tn.setOnClickListener(tnListen);
        tf.setOnClickListener(tfListen);
        tq.setOnClickListener(tqListen);
        tr.setOnClickListener(trListen);
    }

    View.OnClickListener mpListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent mp = new Intent(Sreqhost.this, mypOrder.class);
            startActivity(mp);
        }
    };
    View.OnClickListener ghListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gh = new Intent(Sreqhost.this, hb_faclass.class);
            startActivity(gh);
        }
    };
    View.OnClickListener gmListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gm = new Intent(Sreqhost.this, hb_myclass.class);
            startActivity(gm);
        }
    };
    View.OnClickListener gsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gs = new Intent(Sreqhost.this, Sreqhost.class);
            startActivity(gs);
        }
    };
    View.OnClickListener gtListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gt = new Intent(Sreqhost.this, MainActivity.class);
            startActivity(gt);
        }
    };
    View.OnClickListener tnListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tn = new Intent(Sreqhost.this, Sreqhost.class);
            startActivity(tn);
        }
    };
    View.OnClickListener tfListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tf = new Intent(Sreqhost.this, SFAQ.class);
            startActivity(tf);
        }
    };
    View.OnClickListener tqListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tq = new Intent(Sreqhost.this, Snewqna.class);
            startActivity(tq);
        }
    };
    View.OnClickListener trListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent tr = new Intent(Sreqhost.this, Sreqhost.class);
            startActivity(tr);
        }
    };
}

