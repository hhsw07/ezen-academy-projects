package com.example.hobbyfactory;

import android.os.Bundle;
import android.widget.ListView;

import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;

public class ClassList extends AppCompatActivity {
    private ArrayList<MyClass> myClasses;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.myclasslist);
        myClasses = new ArrayList<MyClass>();
        myClasses.add(new MyClass("수강날짜 2020.03.05", R.drawable.resize, "[원데이클래스] 더베러라이프", "밤바다 고래의 꿈 네온사인 클래스"));
        myClasses.add(new MyClass("수강날짜 2020.03.18", R.drawable.lemon, "[원데이클래스] 바이유어핸즈", "바이유어핸즈의 상콤 레몬 수세미 뜨기"));
        MC_Adapter adapter = new MC_Adapter(myClasses, getLayoutInflater());
        ListView list = findViewById(R.id.mc_list);
        list.setAdapter(adapter);
    }
}
