package com.example.fun_funding;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;

import java.util.ArrayList;

public class storeMain extends AppCompatActivity {
    ArrayList<store> storelist;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.store_main);


        inputstore();
        storeRecycleAdapter adapter = new storeRecycleAdapter(storelist);
        RecyclerView storeView = (RecyclerView)findViewById(R.id.storeListView);
        storeView.setLayoutManager(new LinearLayoutManager(this));
        storeView.setAdapter(adapter);

    }

    public void inputstore(){
        storelist = new ArrayList<store>();
        storelist.add(new store(1,"초~달아서 초당! 옥수수가 이렇게 달았다고?",
                "푸드", 25000,R.drawable.oksusu));
        storelist.add(new store(2, "숨쉬기 편한 마스크! 자외선 차단 마스크",
                "패션", 15000, R.drawable.mask));
        storelist.add(new store(3, "Cool하게 돌아온 [편애 시원팬츠]",
                "패션",15000, R.drawable.coolpants));
        storelist.add(new store(4, "다 붙여드립니다! 핸드실러 다부치",
                "테크.가전",18700, R.drawable.dabuchi ));
        storelist.add(new store(5, "클린 커버 장착! 가장 완벽한 흡착형 무선 고속 보조배터리",
                "테크", 22000, R.drawable.subbattery));
    }
}
