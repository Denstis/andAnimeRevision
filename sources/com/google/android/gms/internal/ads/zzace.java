package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzace extends IInterface {
    void destroy();

    List<String> getAvailableAssetNames();

    String getCustomTemplateId();

    zzwr getVideoController();

    void performClick(String str);

    void recordImpression();

    String zzco(String str);

    zzabi zzcp(String str);

    IObjectWrapper zzqm();

    IObjectWrapper zzqr();

    boolean zzqs();

    boolean zzqt();

    void zzqu();

    boolean zzu(IObjectWrapper iObjectWrapper);

    void zzv(IObjectWrapper iObjectWrapper);
}
