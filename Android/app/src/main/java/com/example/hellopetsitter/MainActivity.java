package com.example.hellopetsitter;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button login = (Button)findViewById(R.id.go_login);
        Button cs = (Button)findViewById(R.id.go_cs);
        Button fs = (Button)findViewById(R.id.find_sitter);
        Button mp = (Button)findViewById(R.id.mypage);
        Button pl = (Button)findViewById(R.id.programList);
        Button lr = (Button)findViewById(R.id.longRange);


        login.setOnClickListener(glListen);
        cs.setOnClickListener(csListen);
        fs.setOnClickListener(fsListen);
        mp.setOnClickListener(mpListen);
        pl.setOnClickListener(plListen);
        lr.setOnClickListener(lrListen);

    }
    View.OnClickListener glListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent gl = new Intent(MainActivity.this, loginActivity.class);
            startActivity(gl);
        }
    };
    View.OnClickListener csListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent csl = new Intent(MainActivity.this, notice.class);
            startActivity(csl);
        }
    };
    View.OnClickListener fsListen = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent fsl = new Intent(MainActivity.this, findsitter.class);
            startActivity(fsl);

        }
    };
    View.OnClickListener mpListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent mpl = new Intent(MainActivity.this, mypageActivity.class);
            startActivity(mpl);
        }
    };
    View.OnClickListener plListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent pll = new Intent(MainActivity.this, programlistActivity.class);
            startActivity(pll);
        }
    };
    View.OnClickListener lrListen = new View.OnClickListener(){
        @Override
        public void onClick(View v) {
            Intent lrl = new Intent(MainActivity.this, longrangeActivity.class);
            startActivity(lrl);
        }
    };
}
