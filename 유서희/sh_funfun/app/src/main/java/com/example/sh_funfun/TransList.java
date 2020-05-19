package com.example.sh_funfun;

import java.util.ArrayList;

public class TransList {
    private ArrayList<mypageVo> tlist;

    public TransList(ArrayList<mypageVo> tlist) {
        this.tlist = tlist;
    }

    public ArrayList<mypageVo> getTlist() {
        return tlist;
    }

    public void setTlist(ArrayList<mypageVo> tlist) {
        this.tlist = tlist;
    }
}
