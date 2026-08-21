package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzbxc {
    public final int type;
    public final String zzce;
    public final String zzfpa;
    public final zzaau zzfpb;

    @VisibleForTesting
    public zzbxc(String str, zzaau zzaauVar) {
        this.type = 2;
        this.zzce = str;
        this.zzfpa = null;
        this.zzfpb = zzaauVar;
    }

    @VisibleForTesting
    public zzbxc(String str, String str2) {
        this.type = 1;
        this.zzce = str;
        this.zzfpa = str2;
        this.zzfpb = null;
    }
}
