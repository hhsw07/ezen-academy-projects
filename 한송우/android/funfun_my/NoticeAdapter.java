package com.example.funfun_my;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class NoticeAdapter extends RecyclerView.Adapter<NoticeAdapter.ViewHolder> {
    ArrayList<Notice> items = new ArrayList<Notice>();

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        // 각각의 화면할 처리할 내용을 inflater(xml을 객체화) 처리 내용..
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_notice, viewGroup, false);
        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int position) {
        // ArrayList에서 단위객체를 불러와서,
        // viewHolder(화면 view)에 할당처리..
        Notice item = items.get(position);
        viewHolder.setItem(item);
    }

    // ArrayList의 데이터 건수를 선언..(전체데이터 건수 선언)
    @Override
    public int getItemCount() { return items.size(); }
    // 추가되는 단위(VO)를 ArrayList에 할당 처리 메서드..
    public void addItem(Notice item) { items.add(item); }
    // 전체 데이터 객체를 저장..
    public void setItems(ArrayList<Notice> items) {
        this.items = items;
    }
    // 각각의 단위객체 index로 return 처리..
    public Notice getItem(int position) {
        return items.get(position);
    }
    // 특정 단위를 객체를 지정한 위치에 저장 처리..
    public void setItem(int position, Notice item) {
        items.set(position, item);
    }


    // RecyclerView.ViewHolder를 상속받은 ViewHolder 내부 객체가
    // 단위 화면의 요소객체와 VO 데이터를 mapping처리한다.
    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView noti_cnt;
        TextView noti_title;
        TextView noti_reg_date;
        TextView noti_detail;
        TextView admin_name;

        public ViewHolder(View itemView) {
            super(itemView);
            // inflate된 화면단위 View를 가져온다.
            noti_cnt = itemView.findViewById(R.id.noti_cnt);
            noti_title = itemView.findViewById(R.id.noti_title);
            noti_reg_date = itemView.findViewById(R.id.noti_reg_date);
            noti_detail = itemView.findViewById(R.id.noti_detail);
            admin_name = itemView.findViewById(R.id.admin_name);

        }

        public void setItem(Notice item) {
            // 화면단위 View에 데이터를 mapping 처리..
            if(item.getCnt() == 0){
                noti_cnt.setText("중요");
            }else{
                noti_cnt.setText(""+item.getCnt());
            }
            noti_title.setText(item.getNoti_title());
            noti_reg_date.setText(item.getNoti_reg_date());
            noti_detail.setText(item.getNoti_detail());
            admin_name.setText(item.getAdmin_name());
        }

    }

}
