package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzaky implements NativeMediationAdRequest {
    private final String zzabl;
    private final int zzcby;
    private final boolean zzccj;
    private final int zzddp;
    private final int zzddq;
    private final zzaay zzdeh;
    private final List<String> zzdei = new ArrayList();
    private final Map<String, Boolean> zzdej = new HashMap();
    private final Date zznc;
    private final Set<String> zzne;
    private final boolean zznf;
    private final Location zzng;

    public zzaky(Date date, int i2, Set<String> set, Location location, boolean z, int i3, zzaay zzaayVar, List<String> list, boolean z2, int i4, String str) {
        Map<String, Boolean> map;
        String str2;
        boolean z3;
        this.zznc = date;
        this.zzcby = i2;
        this.zzne = set;
        this.zzng = location;
        this.zznf = z;
        this.zzddp = i3;
        this.zzdeh = zzaayVar;
        this.zzccj = z2;
        this.zzddq = i4;
        this.zzabl = str;
        if (list != null) {
            for (String str3 : list) {
                if (str3.startsWith("custom:")) {
                    String[] strArrSplit = str3.split(":", 3);
                    if (strArrSplit.length == 3) {
                        if ("true".equals(strArrSplit[2])) {
                            map = this.zzdej;
                            str2 = strArrSplit[1];
                            z3 = true;
                        } else if ("false".equals(strArrSplit[2])) {
                            map = this.zzdej;
                            str2 = strArrSplit[1];
                            z3 = false;
                        }
                        map.put(str2, z3);
                    }
                } else {
                    this.zzdei.add(str3);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return zzxc.zzph().zzos();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.zznc;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.zzcby;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzne;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zzng;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        zzyj zzyjVar;
        if (this.zzdeh == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.zzdeh.zzcvz).setImageOrientation(this.zzdeh.zzbjv).setRequestMultipleImages(this.zzdeh.zzbjx);
        zzaay zzaayVar = this.zzdeh;
        if (zzaayVar.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(zzaayVar.zzbjy);
        }
        zzaay zzaayVar2 = this.zzdeh;
        if (zzaayVar2.versionCode >= 3 && (zzyjVar = zzaayVar2.zzcwa) != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(zzyjVar));
        }
        return requestMultipleImages.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return zzxc.zzph().zzot();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.zzdei;
        if (list != null) {
            return list.contains("2") || this.zzdei.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.zzdei;
        if (list != null) {
            return list.contains("1") || this.zzdei.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzccj;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zznf;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.zzdei;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzddp;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzsd() {
        List<String> list = this.zzdei;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzse() {
        return this.zzdej;
    }
}
