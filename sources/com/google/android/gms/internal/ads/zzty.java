package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzty {
    public static final zzty zzccl = new zzty();

    @VisibleForTesting
    protected zzty() {
    }

    public static zzaqo zza(Context context, zzwz zzwzVar, String str) {
        return new zzaqo(zza(context, zzwzVar), str);
    }

    public static zztx zza(Context context, zzwz zzwzVar) {
        Context context2;
        List listUnmodifiableList;
        String strZza;
        Date birthday = zzwzVar.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1L;
        String contentUrl = zzwzVar.getContentUrl();
        int gender = zzwzVar.getGender();
        Set<String> keywords = zzwzVar.getKeywords();
        if (keywords.isEmpty()) {
            context2 = context;
            listUnmodifiableList = null;
        } else {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(keywords));
            context2 = context;
        }
        boolean zIsTestDevice = zzwzVar.isTestDevice(context2);
        Location location = zzwzVar.getLocation();
        Bundle networkExtrasBundle = zzwzVar.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = zzwzVar.getManualImpressionsEnabled();
        String publisherProvidedId = zzwzVar.getPublisherProvidedId();
        SearchAdRequest searchAdRequestZzpb = zzwzVar.zzpb();
        zzyf zzyfVar = searchAdRequestZzpb != null ? new zzyf(searchAdRequestZzpb) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzuv.zzoj();
            strZza = zzawy.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            strZza = null;
        }
        boolean zIsDesignedForFamilies = zzwzVar.isDesignedForFamilies();
        RequestConfiguration requestConfiguration = zzxc.zzph().getRequestConfiguration();
        return new zztx(8, time, networkExtrasBundle, gender, listUnmodifiableList, zIsTestDevice, Math.max(zzwzVar.zzpe(), requestConfiguration.getTagForChildDirectedTreatment()), manualImpressionsEnabled, publisherProvidedId, zzyfVar, location, contentUrl, zzwzVar.zzpd(), zzwzVar.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzwzVar.zzpf())), zzwzVar.zzpa(), strZza, zIsDesignedForFamilies, null, Math.max(zzwzVar.zzpg(), requestConfiguration.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(zzwzVar.getMaxAdContentRating(), requestConfiguration.getMaxAdContentRating()), zzub.zzcct));
    }

    static final /* synthetic */ int zzf(String str, String str2) {
        return RequestConfiguration.zzabm.indexOf(str) - RequestConfiguration.zzabm.indexOf(str2);
    }
}
