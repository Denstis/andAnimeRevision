package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzcwg {
    private boolean zzbkg;
    private zzua zzbll;
    private zzaay zzdeh;
    private zzagd zzdkl;
    private zzvz zzgke;
    private zzyj zzgkf;
    private zztx zzgkg;
    private String zzgkh;
    private ArrayList<String> zzgki;
    private ArrayList<String> zzgkj;
    private zzuf zzgkk;
    private PublisherAdViewOptions zzgkl;
    private zzvt zzgkm;
    private int zzgdf = 1;
    public final Set<String> zzgkn = new HashSet();

    public final zztx zzanc() {
        return this.zzgkg;
    }

    public final String zzand() {
        return this.zzgkh;
    }

    public final zzcwe zzane() {
        Preconditions.checkNotNull(this.zzgkh, "ad unit must not be null");
        Preconditions.checkNotNull(this.zzbll, "ad size must not be null");
        Preconditions.checkNotNull(this.zzgkg, "ad request must not be null");
        return new zzcwe(this);
    }

    public final zzcwg zzb(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzgkl = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zzbkg = publisherAdViewOptions.getManualImpressionsEnabled();
            this.zzgkm = publisherAdViewOptions.zzjg();
        }
        return this;
    }

    public final zzcwg zzb(zzaay zzaayVar) {
        this.zzdeh = zzaayVar;
        return this;
    }

    public final zzcwg zzb(zzagd zzagdVar) {
        this.zzdkl = zzagdVar;
        this.zzgkf = new zzyj(false, true, false);
        return this;
    }

    public final zzcwg zzb(zzuf zzufVar) {
        this.zzgkk = zzufVar;
        return this;
    }

    public final zzcwg zzb(ArrayList<String> arrayList) {
        this.zzgki = arrayList;
        return this;
    }

    public final zzcwg zzbe(boolean z) {
        this.zzbkg = z;
        return this;
    }

    public final zzcwg zzc(zzvz zzvzVar) {
        this.zzgke = zzvzVar;
        return this;
    }

    public final zzcwg zzc(zzyj zzyjVar) {
        this.zzgkf = zzyjVar;
        return this;
    }

    public final zzcwg zzc(ArrayList<String> arrayList) {
        this.zzgkj = arrayList;
        return this;
    }

    public final zzcwg zzd(zzua zzuaVar) {
        this.zzbll = zzuaVar;
        return this;
    }

    public final zzcwg zzdi(int i2) {
        this.zzgdf = i2;
        return this;
    }

    public final zzcwg zzg(zztx zztxVar) {
        this.zzgkg = zztxVar;
        return this;
    }

    public final zzcwg zzgf(String str) {
        this.zzgkh = str;
        return this;
    }

    public final zzua zzjt() {
        return this.zzbll;
    }
}
