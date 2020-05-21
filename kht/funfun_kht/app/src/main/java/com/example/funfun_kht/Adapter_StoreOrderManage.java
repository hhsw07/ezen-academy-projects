package com.example.funfun_kht;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class Adapter_StoreOrderManage extends RecyclerView.Adapter<Adapter_StoreOrderManage.ViewHolder> {
    ArrayList<StoreOrderManage_VO> items = new ArrayList<StoreOrderManage_VO>();

    @NonNull
    @Override
    public Adapter_StoreOrderManage.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.store_manage_unit, viewGroup, false);

        return new Adapter_StoreOrderManage.ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull Adapter_StoreOrderManage.ViewHolder viewHolder, int position) {
        StoreOrderManage_VO item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(StoreOrderManage_VO item) {
        items.add(item);
    }

    public void setItems(ArrayList<StoreOrderManage_VO> items) {
        this.items = items;
    }

    public StoreOrderManage_VO getItem(int position) {
        return items.get(position);
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        TextView textView6;

        public ViewHolder(View itemView) {
            super(itemView);

            textView = itemView.findViewById(R.id.sto_order_price);
            textView2 = itemView.findViewById(R.id.mem_code);
            textView3 = itemView.findViewById(R.id.sto_order_date);
            textView4 = itemView.findViewById(R.id.sto_order_receiver);
            textView5 = itemView.findViewById(R.id.sto_order_cnt);
            textView6 = itemView.findViewById(R.id.sto_order_curr);
        }

        public void setItem(StoreOrderManage_VO item) {
            textView.setText(item.getSto_order_price()+"원");
            textView2.setText("ID : "+item.getMem_code());
            textView3.setText(item.getSto_order_date());
            textView4.setText(item.getSto_order_receiver());
            textView5.setText(item.getSto_order_cnt());
            textView6.setText(item.getSto_order_curr());
        }

    }

}