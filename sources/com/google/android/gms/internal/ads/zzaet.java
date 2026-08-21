package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaet implements zzaer<Object> {
    private final Context zzlk;

    public zzaet(Context context) {
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        if (com.google.android.gms.ads.internal.zzq.zzlh().zzab(this.zzlk)) {
            String str = map.get("eventName");
            String str2 = map.get("eventId");
            byte b2 = -1;
            int iHashCode = str.hashCode();
            if (iHashCode != 94399) {
                if (iHashCode != 94401) {
                    if (iHashCode == 94407 && str.equals("_ai")) {
                        b2 = 1;
                    }
                } else if (str.equals("_ac")) {
                    b2 = 0;
                }
            } else if (str.equals("_aa")) {
                b2 = 2;
            }
            if (b2 == 0) {
                com.google.android.gms.ads.internal.zzq.zzlh().zzh(this.zzlk, str2);
                return;
            }
            if (b2 == 1) {
                com.google.android.gms.ads.internal.zzq.zzlh().zzi(this.zzlk, str2);
            } else if (b2 != 2) {
                zzaxi.zzes("logScionEvent gmsg contained unsupported eventName");
            } else {
                com.google.android.gms.ads.internal.zzq.zzlh().zzk(this.zzlk, str2);
            }
        }
    }
}
