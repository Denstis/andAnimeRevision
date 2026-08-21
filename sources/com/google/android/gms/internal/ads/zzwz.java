package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzwz {
    private final int zzabj;
    private final int zzabk;
    private final String zzabl;
    private final boolean zzbkg;
    private final int zzcby;
    private final String zzccb;
    private final String zzccd;
    private final Bundle zzccf;
    private final String zzcch;
    private final boolean zzccj;
    private final Bundle zzcec;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzceg;
    private final SearchAdRequest zzceh;
    private final Set<String> zzcei;
    private final Set<String> zzcej;
    private final zzcyw zzcek;
    private final Date zznc;
    private final Set<String> zzne;
    private final Location zzng;

    public zzwz(zzwy zzwyVar) {
        this(zzwyVar, null);
    }

    public zzwz(zzwy zzwyVar, SearchAdRequest searchAdRequest) {
        this.zznc = zzwyVar.zznc;
        this.zzccd = zzwyVar.zzccd;
        this.zzcby = zzwyVar.zzcby;
        this.zzne = Collections.unmodifiableSet(zzwyVar.zzceb);
        this.zzng = zzwyVar.zzng;
        this.zzbkg = zzwyVar.zzbkg;
        this.zzcec = zzwyVar.zzcec;
        this.zzceg = Collections.unmodifiableMap(zzwyVar.zzced);
        this.zzccb = zzwyVar.zzccb;
        this.zzcch = zzwyVar.zzcch;
        this.zzceh = searchAdRequest;
        this.zzabj = zzwyVar.zzabj;
        this.zzcei = Collections.unmodifiableSet(zzwyVar.zzcee);
        this.zzccf = zzwyVar.zzccf;
        this.zzcej = Collections.unmodifiableSet(zzwyVar.zzcef);
        this.zzccj = zzwyVar.zzccj;
        this.zzcek = null;
        this.zzabk = zzwyVar.zzabk;
        this.zzabl = zzwyVar.zzabl;
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zznc;
    }

    public final String getContentUrl() {
        return this.zzccd;
    }

    public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzcec.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle getCustomTargeting() {
        return this.zzccf;
    }

    @Deprecated
    public final int getGender() {
        return this.zzcby;
    }

    public final Set<String> getKeywords() {
        return this.zzne;
    }

    public final Location getLocation() {
        return this.zzng;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbkg;
    }

    public final String getMaxAdContentRating() {
        return this.zzabl;
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzceg.get(cls);
    }

    public final Bundle getNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls) {
        return this.zzcec.getBundle(cls.getName());
    }

    public final String getPublisherProvidedId() {
        return this.zzccb;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzccj;
    }

    public final boolean isTestDevice(Context context) {
        Set<String> set = this.zzcei;
        zzuv.zzoj();
        return set.contains(zzawy.zzbi(context));
    }

    public final String zzpa() {
        return this.zzcch;
    }

    public final SearchAdRequest zzpb() {
        return this.zzceh;
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzpc() {
        return this.zzceg;
    }

    public final Bundle zzpd() {
        return this.zzcec;
    }

    public final int zzpe() {
        return this.zzabj;
    }

    public final Set<String> zzpf() {
        return this.zzcej;
    }

    public final int zzpg() {
        return this.zzabk;
    }
}
