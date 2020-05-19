package com.example.sh_funfun;

import java.util.ArrayList;

public class Meminfo {
    private ArrayList<mypageVo> meminfo;

    public Meminfo(ArrayList<mypageVo> meminfo) {
        this.meminfo = meminfo;
    }

    public ArrayList<mypageVo> getMeminfo() {
        return meminfo;
    }

    public void setMeminfo(ArrayList<mypageVo> meminfo) {
        this.meminfo = meminfo;
    }
}
