package com.google.android.gms.internal.ads;

import b.e.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzbuy {
    public static final zzbuy zzfmf = new zzbva().zzail();
    private final zzacn zzfly;
    private final zzaci zzflz;
    private final zzacz zzfma;
    private final zzacu zzfmb;
    private final zzagj zzfmc;
    private final g<String, zzact> zzfmd;
    private final g<String, zzaco> zzfme;

    private zzbuy(zzbva zzbvaVar) {
        this.zzfly = zzbvaVar.zzfly;
        this.zzflz = zzbvaVar.zzflz;
        this.zzfma = zzbvaVar.zzfma;
        this.zzfmd = new g<>(zzbvaVar.zzfmd);
        this.zzfme = new g<>(zzbvaVar.zzfme);
        this.zzfmb = zzbvaVar.zzfmb;
        this.zzfmc = zzbvaVar.zzfmc;
    }

    public final zzacn zzaie() {
        return this.zzfly;
    }

    public final zzaci zzaif() {
        return this.zzflz;
    }

    public final zzacz zzaig() {
        return this.zzfma;
    }

    public final zzacu zzaih() {
        return this.zzfmb;
    }

    public final zzagj zzaii() {
        return this.zzfmc;
    }

    public final ArrayList<String> zzaij() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.zzfma != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzfly != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzflz != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.zzfmd.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzfmc != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> zzaik() {
        ArrayList<String> arrayList = new ArrayList<>(this.zzfmd.size());
        for (int i2 = 0; i2 < this.zzfmd.size(); i2++) {
            arrayList.add(this.zzfmd.b(i2));
        }
        return arrayList;
    }

    public final zzact zzfu(String str) {
        return this.zzfmd.get(str);
    }

    public final zzaco zzfv(String str) {
        return this.zzfme.get(str);
    }
}
