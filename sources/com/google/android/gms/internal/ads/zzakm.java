package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzakm extends IInterface {
    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    float getMediaContentAspectRatio();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    String getPrice();

    double getStarRating();

    String getStore();

    zzwr getVideoController();

    void recordImpression();

    void zzaa(IObjectWrapper iObjectWrapper);

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzabi zzqn();

    zzaba zzqo();

    IObjectWrapper zzqp();

    IObjectWrapper zzry();

    IObjectWrapper zzrz();

    void zzy(IObjectWrapper iObjectWrapper);
}
