package com.example.funfun;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import org.w3c.dom.Text;

import java.util.ArrayList;

public class ProjectAdapter extends RecyclerView.Adapter<ProjectAdapter.ViewHolder> {
    ArrayList<Project> items = new ArrayList<Project>();

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.project_item, viewGroup, false);
        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int position) {
        Project item = items.get(position);
        viewHolder.setItem(item);

    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(Project item){
        items.add(item);
    }
    public void setItems(ArrayList<Project> items){
        this.items = items;
    }
    public Project getItem(int position){
        return items.get(position);
    }
    static class ViewHolder extends RecyclerView.ViewHolder{
        TextView title;
        TextView cate;
        TextView maker;
        public ViewHolder(View itemView){
            super(itemView);
            title = itemView.findViewById(R.id.project_title);
            cate = itemView.findViewById(R.id.cate_txt);
            maker = itemView.findViewById(R.id.mname_txt);
        }
        public void setItem(Project item){
            title.setText(item.getPro_title());
            cate.setText(item.getCate_title());
            maker.setText(item.getMaker_name());
        }
    }
}
