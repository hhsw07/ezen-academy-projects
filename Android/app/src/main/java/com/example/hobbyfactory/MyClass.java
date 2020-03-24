package com.example.hobbyfactory;

public class MyClass {
    private String mc_date;
    private int mc_thum;
    private String mc_kind;
    private String mc_name;

    public MyClass(String mc_date, int mc_thum, String mc_kind, String mc_name) {
        this.mc_date = mc_date;
        this.mc_thum = mc_thum;
        this.mc_kind = mc_kind;
        this.mc_name = mc_name;
    }

    public String getMc_date() {
        return mc_date;
    }

    public void setMc_date(String mc_date) {
        this.mc_date = mc_date;
    }

    public int getMc_thum() {
        return mc_thum;
    }

    public void setMc_thum(int mc_thum) {
        this.mc_thum = mc_thum;
    }

    public String getMc_kind() {
        return mc_kind;
    }

    public void setMc_kind(String mc_kind) {
        this.mc_kind = mc_kind;
    }

    public String getMc_name() {
        return mc_name;
    }

    public void setMc_name(String mc_name) {
        this.mc_name = mc_name;
    }
}
