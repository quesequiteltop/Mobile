package com.produban.otpTest.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import com.produban.otpTest.otp.OTP;

/**
 * Created by produban on 6/22/15.
 */
public class OTPListAdapter extends BaseAdapter {

    private List<OTP> pOTP;
    private Context ctx;

    public  OTPListAdapter(List<OTP>pOTP,Context ctx){

        this.pOTP = pOTP;
        this.ctx = ctx;
    }
    @Override
    public int getCount() {
        return 0;
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        return null;
    }
}
