package com.example.funfun_kht;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


/**
 * A simple {@link Fragment} subclass.
 * Activities that contain this fragment must implement the
 * {@link ht_user_m_ms_store_manage.OnFragmentInteractionListener} interface
 * to handle interaction events.
 * Use the {@link ht_user_m_ms_store_manage#newInstance} factory method to
 * create an instance of this fragment.
 */
public class ht_user_m_ms_store_manage extends Fragment {


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_ht_user_m_ms_store_manage, container, false);
    }

}
