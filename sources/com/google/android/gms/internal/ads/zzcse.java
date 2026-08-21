package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcse implements zzcru<zzcsb> {
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcse(zzddl zzddlVar, Context context) {
        this.zzfoa = zzddlVar;
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcsb> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcsd
            private final zzcse zzggq;

            {
                this.zzggq = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzggq.zzamj();
            }
        });
    }

    final /* synthetic */ zzcsb zzamj() {
        int i2;
        boolean zIsActiveNetworkMetered;
        int i3;
        int i4;
        TelephonyManager telephonyManager = (TelephonyManager) this.zzlk.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int networkType = telephonyManager.getNetworkType();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.zzq.zzkj();
        int i5 = -1;
        if (zzaul.zzq(this.zzlk, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.zzlk.getSystemService("connectivity");
            connectivityManager.getActiveNetworkInfo();
            NetworkInfo networkInfo = null;
            if (0 != 0) {
                int type = networkInfo.getType();
                int iOrdinal = networkInfo.getDetailedState().ordinal();
                i4 = type;
                i5 = iOrdinal;
            } else {
                i4 = -1;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                i3 = i5;
                i2 = i4;
                zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
            } else {
                i3 = i5;
                i2 = i4;
                zIsActiveNetworkMetered = false;
            }
        } else {
            i2 = -2;
            zIsActiveNetworkMetered = false;
            i3 = -1;
        }
        return new zzcsb(networkOperator, i2, networkType, phoneType, zIsActiveNetworkMetered, i3);
    }
}
