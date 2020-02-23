package com.example.ezenpetsitter;

import android.content.Intent;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import androidx.appcompat.app.AppCompatActivity;

public class faq extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pro03_faq);

        TextView notice = (TextView)findViewById(R.id.title_notice);
        TextView faq = (TextView)findViewById(R.id.title_faq);
        TextView qna = (TextView)findViewById(R.id.title_qna);

        notice.setOnClickListener(notClick);
        faq.setOnClickListener(faqClick);
        qna.setOnClickListener(qnaClick);
    }
    View.OnClickListener notClick = new View.OnClickListener() {
        Intent int01;

        // 이 클래스를 통해서, 특정한 이벤트 click을 했을 때 처리할 내용을 기술한다.
        @Override
        public void onClick(View v) {
            int01 = new Intent(getApplicationContext(),notice.class);
            // 해당 activity 로딩 시작.
            startActivity(int01);
        }
    };
    View.OnClickListener faqClick = new View.OnClickListener() {
        Intent int02;

        // 이 클래스를 통해서, 특정한 이벤트 click을 했을 때 처리할 내용을 기술한다.
        @Override
        public void onClick(View v) {
            int02 = new Intent(getApplicationContext(),faq.class);
            startActivity(int02);
        }
    };
    View.OnClickListener qnaClick = new View.OnClickListener() {
        Intent int03;

        // 이 클래스를 통해서, 특정한 이벤트 click을 했을 때 처리할 내용을 기술한다.
        @Override
        public void onClick(View v) {
            int03 = new Intent(getApplicationContext(),qna.class);
            // 해당 activity 로딩 시작.
            startActivity(int03);
        }
    };
}


