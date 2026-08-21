package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzakl extends IInterface {
    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    zzwr getVideoController();

    void recordImpression();

    void zzaa(IObjectWrapper iObjectWrapper);

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzaba zzqo();

    IObjectWrapper zzqp();

    zzabi zzqq();

    IObjectWrapper zzry();

    IObjectWrapper zzrz();

    void zzy(IObjectWrapper iObjectWrapper);

    void zzz(IObjectWrapper iObjectWrapper);
}
