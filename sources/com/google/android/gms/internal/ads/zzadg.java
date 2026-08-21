package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzadg extends IInterface {
    void cancelUnconfirmedClick();

    void destroy();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    List getMuteThisAdReasons();

    String getPrice();

    double getStarRating();

    String getStore();

    zzwr getVideoController();

    boolean isCustomClickGestureEnabled();

    boolean isCustomMuteThisAdEnabled();

    void performClick(Bundle bundle);

    void recordCustomClickGesture();

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    void zza(zzadf zzadfVar);

    void zza(zzwe zzweVar);

    void zza(zzwi zzwiVar);

    IObjectWrapper zzqm();

    zzabi zzqn();

    zzaba zzqo();

    IObjectWrapper zzqp();

    void zzqw();

    zzabh zzqx();
}
