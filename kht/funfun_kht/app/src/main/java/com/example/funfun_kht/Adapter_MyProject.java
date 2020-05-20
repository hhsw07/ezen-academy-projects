package com.example.funfun_kht;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class Adapter_MyProject extends RecyclerView.Adapter<Adapter_MyProject.ViewHolder> {
    ArrayList<MyProject_VO> items = new ArrayList<MyProject_VO>();

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.myproject_unit, viewGroup, false);

        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull Adapter_MyProject.ViewHolder viewHolder, int position) {
        MyProject_VO item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(MyProject_VO item) {
        items.add(item);
    }

    public void setItems(ArrayList<MyProject_VO> items) {
        this.items = items;
    }

    public MyProject_VO getItem(int position) {
        return items.get(position);
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView textView;
        TextView textView2;

        public ViewHolder(View itemView) {
            super(itemView);

            textView = itemView.findViewById(R.id.pro_title);
            textView2 = itemView.findViewById(R.id.pro_keyword);
        }

        public void setItem(MyProject_VO item) {
            textView.setText(item.getPro_title());
            textView2.setText(item.getPro_keyword());
        }

    }

}