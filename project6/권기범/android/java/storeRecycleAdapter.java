package com.example.fun_funding;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class storeRecycleAdapter extends RecyclerView.Adapter<storeRecycleAdapter.ViewHolder> {

    private ArrayList<store> storelist = null;

    public class ViewHolder extends RecyclerView.ViewHolder{
        ImageView img;
        TextView title;
        TextView cate;
        TextView price ;



        ViewHolder(final View itemView){
            super(itemView);
            img = itemView.findViewById(R.id.storeImage);
            title = itemView.findViewById(R.id.storeTitle);
            cate = itemView.findViewById(R.id.storeCate);
            price = itemView.findViewById(R.id.storePrice);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int pos = getAdapterPosition();
                    if(pos != RecyclerView.NO_POSITION){
                        Intent intent = new Intent(itemView.getContext(), storeDetail.class);
                        itemView.getContext().startActivity(intent);

                    }
                }
            });
        }
    }

    storeRecycleAdapter(ArrayList<store> list){
        storelist = list;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            Context context = parent.getContext();
            LayoutInflater inflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

            View view = inflater.inflate(R.layout.storelist,null);
            storeRecycleAdapter.ViewHolder vh = new storeRecycleAdapter.ViewHolder(view);

            return vh;
    }

    public void onBindViewHolder(storeRecycleAdapter.ViewHolder holder, int position){
        holder.img.setImageResource(storelist.get(position).getSto_image());
        holder.title.setText(storelist.get(position).getSto_title());
        holder.cate.setText(storelist.get(position).getCate_title());
        DecimalFormat df = new DecimalFormat("###,###");
        String priceStr = df.format(storelist.get(position).getSto_price());
        holder.price.setText(priceStr + "원  ");
    }

    public int getItemCount(){
        return storelist.size();
    }
}
