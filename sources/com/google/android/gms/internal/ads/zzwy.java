package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class zzwy {
    private String zzabl;
    private String zzccb;
    private String zzccd;
    private String zzcch;
    private boolean zzccj;
    private Date zznc;
    private Location zzng;
    private final HashSet<String> zzceb = new HashSet<>();
    private final Bundle zzcec = new Bundle();
    private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> zzced = new HashMap<>();
    private final HashSet<String> zzcee = new HashSet<>();
    private final Bundle zzccf = new Bundle();
    private final HashSet<String> zzcef = new HashSet<>();
    private int zzcby = -1;
    private boolean zzbkg = false;
    private int zzabj = -1;
    private int zzabk = -1;

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzbkg = z;
    }

    public final void zza(Location location) {
        this.zzng = location;
    }

    @Deprecated
    public final void zza(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            zza(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.zzced.put((Class<? extends NetworkExtras>) networkExtras.getClass(), networkExtras);
        }
    }

    public final void zza(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        this.zzcec.putBundle(cls.getName(), bundle);
    }

    @Deprecated
    public final void zza(Date date) {
        this.zznc = date;
    }

    public final void zzb(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.zzcec.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.zzcec.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.zzcec.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    public final void zzca(String str) {
        this.zzceb.add(str);
    }

    public final void zzcb(String str) {
        this.zzcee.add(str);
    }

    public final void zzcc(String str) {
        this.zzcee.remove(str);
    }

    public final void zzcd(String str) {
        this.zzccd = str;
    }

    public final void zzce(String str) {
        this.zzccb = str;
    }

    public final void zzcf(String str) {
        this.zzcch = str;
    }

    @Deprecated
    public final void zzcg(int i2) {
        this.zzcby = i2;
    }

    public final void zzcg(String str) {
        this.zzcef.add(str);
    }

    @Deprecated
    public final void zzch(int i2) {
        if (i2 == -1 || i2 == 0 || i2 == 1) {
            this.zzabk = i2;
        }
    }

    @Deprecated
    public final void zzch(String str) {
        if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
            this.zzabl = str;
        }
    }

    public final void zzg(String str, String str2) {
        this.zzccf.putString(str, str2);
    }

    @Deprecated
    public final void zzs(boolean z) {
        this.zzabj = z ? 1 : 0;
    }

    @Deprecated
    public final void zzt(boolean z) {
        this.zzccj = z;
    }
}
