package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.rtb.RtbAdapter;

/* JADX INFO: loaded from: classes.dex */
public class zzamj {
    public static zzamd zzdk(String str) {
        return new zzami((RtbAdapter) Class.forName(str, false, zzamj.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
    }
}
