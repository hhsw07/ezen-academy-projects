package com.example.hobbyfactory;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

public class MC_Adapter extends BaseAdapter {
    private ArrayList<MyClass> myClasses;
    private LayoutInflater inflater;

    public MC_Adapter(ArrayList<MyClass> myClasses, LayoutInflater inflater) {
        this.myClasses = myClasses;
        this.inflater = inflater;
    }

    @Override
    public int getCount() {
        return myClasses.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        if(convertView==null){
            convertView = inflater.inflate(R.layout.myclass, parent, false);
            TextView mc_date = convertView.findViewById(R.id.mc_date);
            ImageView mc_thum = convertView.findViewById(R.id.mc_thum);
            TextView mc_kind = convertView.findViewById(R.id.mc_kind);
            TextView mc_name = convertView.findViewById(R.id.mc_name);
            mc_date.setText(myClasses.get(position).getMc_date());
            mc_thum.setImageResource(myClasses.get(position).getMc_thum());
            mc_kind.setText(myClasses.get(position).getMc_kind());
            mc_name.setText(myClasses.get(position).getMc_name());
        }
        return convertView;
    }
}
