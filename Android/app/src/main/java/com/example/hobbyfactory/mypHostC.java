package com.example.hobbyfactory;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class mypHostC extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mp_hostclass);
        Button btn_home = (Button)findViewById(R.id.btn_home);
        Button btn_host02 = (Button)findViewById(R.id.btn_host02);

        btn_home.setOnClickListener(home);
        btn_host02.setOnClickListener(toHStore);
    }

    View.OnClickListener home =new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent main = new Intent(mypHostC.this, MainActivity.class);
            startActivity(main);
        }
    };
    View.OnClickListener toHStore = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            Intent hstore = new Intent(mypHostC.this, mypHostS.class);
            startActivity(hstore);
        }
    };
}
