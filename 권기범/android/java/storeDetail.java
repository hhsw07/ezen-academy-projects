package com.example.fun_funding;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import java.text.DecimalFormat;

public class storeDetail extends AppCompatActivity {
    static int count = 1;
    static int price = 0;
    static int totprice = 0;
    DecimalFormat df = new DecimalFormat("###,###");

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.storedetail);

        Button cntPlus = (Button)findViewById(R.id.cntPlus);
        Button cntMinus = (Button)findViewById(R.id.cntMinus);
        final EditText cnt = (EditText) findViewById(R.id.cnt);
        Spinner optionSpinner = (Spinner)findViewById(R.id.optionSpinner);
        final TextView priceText = (TextView)findViewById(R.id.priceText);

        cntPlus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                count++;

                String countStr = Integer.toString(count);
                cnt.setText(countStr);

                totprice = price * count;
                String str = df.format(totprice) + "원";
                priceText.setText(str);
            }
        });

        cntMinus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                count--;
                String countStr = Integer.toString(count);
                cnt.setText(countStr);

                totprice = price * count;
                String str = df.format(totprice) + "원";
                priceText.setText(str);
            }
        });

        optionSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String options = parent.getSelectedItem().toString();

                String str = "";
                switch (options){
                    case "초당옥수수 1KG":
                        price = 25000;
                        str = df.format(price) + "원";
                        priceText.setText(str);
                        break;
                    case "초당옥수수 2KG":
                        price = 35000;
                        str = df.format(price) + "원";
                        priceText.setText(str);
                        break;
                    case "초당옥수수 3KG":
                        price = 35000;
                        str = df.format(price) + "원";
                        priceText.setText(str);
                        break;
                    default:
                        Toast.makeText(getApplicationContext(), "옵션을 선택하세요", Toast.LENGTH_LONG).show();

                }
            }
            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });



    }
}
