package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypHostS extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_hoststore);
        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_host02 = (Button)findViewById(R.id.btn_host02);

        btn_home.setOnClickListener(home);
        btn_host02.setOnClickListener(toHClass);
    }

    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypHostS.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toHClass = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent hclass = new Intent(mypHostS.this, mypHostC.class);
            startActivity(hclass);
        }
    };
}
