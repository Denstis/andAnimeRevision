package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdvt {
    public static zzdvt zzn(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzdvq(cls.getSimpleName()) : new zzdvs(cls.getSimpleName());
    }

    public abstract void zzhr(String str);
}
