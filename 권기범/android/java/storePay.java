package com.example.fun_funding;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import java.text.DecimalFormat;

public class storePay extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.storepay);

        Intent intent = getIntent();

        DecimalFormat df = new DecimalFormat("###,###");

        TextView textCnt = (TextView)findViewById(R.id.store_cnt);
        TextView textOption = (TextView)findViewById(R.id.store_option);
        TextView textPrice = (TextView)findViewById(R.id.store_price);

        int cnt = intent.getExtras().getInt("cnt");
        int price = intent.getExtras().getInt("price");
        String options = intent.getExtras().getString("option");

        String priceStr = df.format(price)+"원";

        textCnt.setText(cnt + "개");
        textOption.setText(options);
        textPrice.setText(priceStr);


    }
}
