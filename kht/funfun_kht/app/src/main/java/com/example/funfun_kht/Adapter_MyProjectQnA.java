package com.example.funfun_kht;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class Adapter_MyProjectQnA extends RecyclerView.Adapter<Adapter_MyProjectQnA.ViewHolder> {
    ArrayList<MyProjectQnA_VO> items = new ArrayList<MyProjectQnA_VO>();

    @NonNull
    @Override
    public Adapter_MyProjectQnA.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.myprojectqna_unit, viewGroup, false);

        return new Adapter_MyProjectQnA.ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull Adapter_MyProjectQnA.ViewHolder viewHolder, int position) {
        MyProjectQnA_VO item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(MyProjectQnA_VO item) {
        items.add(item);
    }

    public void setItems(ArrayList<MyProjectQnA_VO> items) {
        this.items = items;
    }

    public MyProjectQnA_VO getItem(int position) {
        return items.get(position);
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView textView;
        TextView textView2;
        TextView textView3;

        public ViewHolder(View itemView) {
            super(itemView);

            textView = itemView.findViewById(R.id.mem_code);
            textView2 = itemView.findViewById(R.id.qna_reg_date);
            textView3 = itemView.findViewById(R.id.qna_detail);
        }

        public void setItem(MyProjectQnA_VO item) {
            textView.setText(item.getMem_code());
            textView2.setText(item.getQna_reg_date());
            textView3.setText(item.getQna_detail());
        }

    }

}