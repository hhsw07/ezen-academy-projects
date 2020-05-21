package com.example.sh_funfun;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class Adapter_mypageInfo extends RecyclerView.Adapter<Adapter_mypageInfo.ViewHolder> {
    ArrayList<mypageVo> items = new ArrayList<mypageVo>();

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.unit_favor, viewGroup, false);

        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int position) {
        mypageVo item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(mypageVo item) {
        items.add(item);
    }

    public void setItems(ArrayList<mypageVo> items) {
        this.items = items;
    }

    public mypageVo getItem(int position) {
        return items.get(position);
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView cateCompany;
        TextView title;
        TextView percent;


        public ViewHolder(View itemView) {
            super(itemView);
            cateCompany = itemView.findViewById(R.id.cateCompany);
            title = itemView.findViewById(R.id.title);
            percent = itemView.findViewById(R.id.percent);
        }
        public void setItem(mypageVo item) {
            cateCompany.setText(item.getCateTitle()+"|"+item.getMakerName());
            title.setText(item.getProTitle());
            percent.setText("모금율 : "+item.getPercent());
        }

    }


}