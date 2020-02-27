package com.example.hellopetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

import com.example.hellopetsitter.R;
import com.example.hellopetsitter.qna;
import com.example.hellopetsitter.qna2;

public class newqna extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro03_newqna);

        Button btn1 = (Button)findViewById(R.id.button3);
        Button btn2 = (Button)findViewById(R.id.button4);


        btn1.setOnClickListener(cre_q);
        btn2.setOnClickListener(out_q);
    }
    View.OnClickListener cre_q = new View.OnClickListener() {
        Intent int01;

        // 이 클래스를 통해서, 특정한 이벤트 click을 했을 때 처리할 내용을 기술한다.
        @Override
        public void onClick(View v) {
            int01 = new Intent(getApplicationContext(), qna2.class);
            // 해당 activity 로딩 시작.
            startActivity(int01);
        }
    };
    View.OnClickListener out_q = new View.OnClickListener() {
        Intent int01;

        // 이 클래스를 통해서, 특정한 이벤트 click을 했을 때 처리할 내용을 기술한다.
        @Override
        public void onClick(View v) {
            int01 = new Intent(getApplicationContext(), qna.class);
            // 해당 activity 로딩 시작.
            startActivity(int01);
        }
    };

}
