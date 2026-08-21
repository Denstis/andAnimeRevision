package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface zzm extends IInterface {
    void beginAdUnitExposure(String str, long j2);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void endAdUnitExposure(String str, long j2);

    void generateEventId(zzn zznVar);

    void getAppInstanceId(zzn zznVar);

    void getCachedAppInstanceId(zzn zznVar);

    void getConditionalUserProperties(String str, String str2, zzn zznVar);

    void getCurrentScreenClass(zzn zznVar);

    void getCurrentScreenName(zzn zznVar);

    void getGmpAppId(zzn zznVar);

    void getMaxUserProperties(String str, zzn zznVar);

    void getTestFlag(zzn zznVar, int i2);

    void getUserProperties(String str, String str2, boolean z, zzn zznVar);

    void initForTests(Map map);

    void initialize(IObjectWrapper iObjectWrapper, zzv zzvVar, long j2);

    void isDataCollectionEnabled(zzn zznVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2);

    void logEventAndBundle(String str, String str2, Bundle bundle, zzn zznVar, long j2);

    void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j2);

    void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j2);

    void onActivityPaused(IObjectWrapper iObjectWrapper, long j2);

    void onActivityResumed(IObjectWrapper iObjectWrapper, long j2);

    void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzn zznVar, long j2);

    void onActivityStarted(IObjectWrapper iObjectWrapper, long j2);

    void onActivityStopped(IObjectWrapper iObjectWrapper, long j2);

    void performAction(Bundle bundle, zzn zznVar, long j2);

    void registerOnMeasurementEventListener(zzs zzsVar);

    void resetAnalyticsData(long j2);

    void setConditionalUserProperty(Bundle bundle, long j2);

    void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j2);

    void setDataCollectionEnabled(boolean z);

    void setEventInterceptor(zzs zzsVar);

    void setInstanceIdProvider(zzt zztVar);

    void setMeasurementEnabled(boolean z, long j2);

    void setMinimumSessionDuration(long j2);

    void setSessionTimeoutDuration(long j2);

    void setUserId(String str, long j2);

    void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2);

    void unregisterOnMeasurementEventListener(zzs zzsVar);
}
