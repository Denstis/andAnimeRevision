package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import b.e.a;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzhb extends zze {

    @VisibleForTesting
    protected zzhy zza;

    @VisibleForTesting
    protected boolean zzb;
    private zzha zzc;
    private final Set<zzgz> zzd;
    private boolean zze;
    private final AtomicReference<String> zzf;

    protected zzhb(zzga zzgaVar) {
        super(zzgaVar);
        this.zzd = new CopyOnWriteArraySet();
        this.zzb = true;
        this.zzf = new AtomicReference<>();
    }

    private final void zza(String str, String str2, long j2, Object obj) {
        zzq().zza(new zzhf(this, str, str2, obj, j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzam() {
        Long lValueOf;
        if (zzt().zza(zzap.zzbb)) {
            zzd();
            String strZza = zzs().zzn.zza();
            if (strZza != null) {
                if ("unset".equals(strZza)) {
                    lValueOf = null;
                } else {
                    lValueOf = Long.valueOf("true".equals(strZza) ? 1L : 0L);
                }
                zza("app", "_npa", lValueOf, zzm().currentTimeMillis());
            }
        }
        if (!this.zzx.zzab() || !this.zzb) {
            zzr().zzw().zza("Updating Scion state (FE)");
            zzh().zzac();
            return;
        }
        zzr().zzw().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzai();
        if (zzkt.zzb() && zzt().zza(zzap.zzcm)) {
            zzk().zza.zza();
        }
    }

    @VisibleForTesting
    private final ArrayList<Bundle> zzb(String str, String str2, String str3) {
        if (zzq().zzg()) {
            zzr().zzf().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        if (zzw.zza()) {
            zzr().zzf().zza("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzx.zzq().zza(atomicReference, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, "get conditional user properties", new zzho(this, atomicReference, str, str2, str3));
        List list = (List) atomicReference.get();
        if (list != null) {
            return zzkm.zzb((List<zzv>) list);
        }
        zzr().zzi().zza("Timed out waiting for get conditional user properties", str);
        return new ArrayList<>();
    }

    @VisibleForTesting
    private final Map<String, Object> zzb(String str, String str2, String str3, boolean z) {
        zzey zzeyVarZzi;
        String str4;
        if (zzq().zzg()) {
            zzeyVarZzi = zzr().zzf();
            str4 = "Cannot get user properties from analytics worker thread";
        } else if (zzw.zza()) {
            zzeyVarZzi = zzr().zzf();
            str4 = "Cannot get user properties from main thread";
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.zzx.zzq().zza(atomicReference, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, "get user properties", new zzhq(this, atomicReference, str, str2, str3, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list != null) {
                a aVar = new a(list.size());
                for (zzkl zzklVar : list) {
                    aVar.put(zzklVar.zza, zzklVar.zza());
                }
                return aVar;
            }
            zzeyVarZzi = zzr().zzi();
            str4 = "Timed out waiting for handle get user properties";
        }
        zzeyVarZzi.zza(str4);
        return Collections.emptyMap();
    }

    private final void zzb(Bundle bundle, long j2) {
        Preconditions.checkNotNull(bundle);
        zzgw.zza(bundle, "app_id", String.class, null);
        zzgw.zza(bundle, "origin", String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
        zzgw.zza(bundle, "value", Object.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString("origin"));
        Preconditions.checkNotNull(bundle.get("value"));
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j2);
        String string = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        Object obj = bundle.get("value");
        if (zzp().zzc(string) != 0) {
            zzr().zzf().zza("Invalid conditional user property name", zzo().zzc(string));
            return;
        }
        if (zzp().zzb(string, obj) != 0) {
            zzr().zzf().zza("Invalid conditional user property value", zzo().zzc(string), obj);
            return;
        }
        Object objZzc = zzp().zzc(string, obj);
        if (objZzc == null) {
            zzr().zzf().zza("Unable to normalize conditional user property value", zzo().zzc(string), obj);
            return;
        }
        zzgw.zza(bundle, objZzc);
        long j3 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
        if (!TextUtils.isEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME)) && (j3 > 15552000000L || j3 < 1)) {
            zzr().zzf().zza("Invalid conditional user property timeout", zzo().zzc(string), Long.valueOf(j3));
            return;
        }
        long j4 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
        if (j4 > 15552000000L || j4 < 1) {
            zzr().zzf().zza("Invalid conditional user property time to live", zzo().zzc(string), Long.valueOf(j4));
        } else {
            zzq().zza(new zzhm(this, bundle));
        }
    }

    private final void zzb(String str, String str2, long j2, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zzq().zza(new zzhg(this, str, str2, j2, zzkm.zzb(bundle), z, z2, z3, str3));
    }

    private final void zzb(String str, String str2, String str3, Bundle bundle) {
        long jCurrentTimeMillis = zzm().currentTimeMillis();
        Preconditions.checkNotEmpty(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, jCurrentTimeMillis);
        if (str3 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str3);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzq().zza(new zzhl(this, bundle2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(Bundle bundle) {
        zzd();
        zzw();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString("origin"));
        Preconditions.checkNotNull(bundle.get("value"));
        if (!this.zzx.zzab()) {
            zzr().zzw().zza("Conditional property not sent since collection is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get("value"), bundle.getString("origin"));
        try {
            zzan zzanVarZza = zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false);
            zzh().zza(new zzv(bundle.getString("app_id"), bundle.getString("origin"), zzklVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zzanVarZza, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(Bundle bundle) {
        zzd();
        zzw();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        if (!this.zzx.zzab()) {
            zzr().zzw().zza("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            zzh().zza(new zzv(bundle.getString("app_id"), bundle.getString("origin"), new zzkl(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, null), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(boolean z) {
        zzd();
        zzb();
        zzw();
        zzr().zzw().zza("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzs().zzb(z);
        zzam();
    }

    private final String zze(long j2) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            zzq().zza(new zzhh(this, atomicReference));
            try {
                atomicReference.wait(j2);
            } catch (InterruptedException unused) {
                zzr().zzi().zza("Interrupted waiting for app instance id");
                return null;
            }
        }
        return (String) atomicReference.get();
    }

    public final ArrayList<Bundle> zza(String str, String str2) {
        zzb();
        return zzb((String) null, str, str2);
    }

    public final ArrayList<Bundle> zza(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zza();
        return zzb(str, str2, str3);
    }

    public final Map<String, Object> zza(String str, String str2, String str3, boolean z) {
        Preconditions.checkNotEmpty(str);
        zza();
        return zzb(str, str2, str3, z);
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        zzb();
        return zzb((String) null, str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j2) {
        zzb();
        zzq().zza(new zzhw(this, j2));
    }

    public final void zza(Bundle bundle) {
        zza(bundle, zzm().currentTimeMillis());
    }

    public final void zza(Bundle bundle, long j2) {
        Preconditions.checkNotNull(bundle);
        zzb();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzr().zzi().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        zzb(bundle2, j2);
    }

    public final void zza(zzgz zzgzVar) {
        zzb();
        zzw();
        Preconditions.checkNotNull(zzgzVar);
        if (this.zzd.add(zzgzVar)) {
            return;
        }
        zzr().zzi().zza("OnEventListener already registered");
    }

    public final void zza(zzha zzhaVar) {
        zzha zzhaVar2;
        zzd();
        zzb();
        zzw();
        if (zzhaVar != null && zzhaVar != (zzhaVar2 = this.zzc)) {
            Preconditions.checkState(zzhaVar2 == null, "EventInterceptor already set.");
        }
        this.zzc = zzhaVar;
    }

    final void zza(String str) {
        this.zzf.set(str);
    }

    final void zza(String str, String str2, long j2, Bundle bundle) {
        zzb();
        zzd();
        zza(str, str2, j2, bundle, true, this.zzc == null || zzkm.zze(str2), false, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04eb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void zza(java.lang.String r28, java.lang.String r29, long r30, android.os.Bundle r32, boolean r33, boolean r34, boolean r35, java.lang.String r36) {
        /*
            Method dump skipped, instruction units count: 1430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhb.zza(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void zza(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        zza(str, str2, bundle, false, true, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) {
        zzb();
        zzb(str == null ? "app" : str, str2, j2, bundle == null ? new Bundle() : bundle, z2, !z2 || this.zzc == null || zzkm.zze(str2), !z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zza(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r10)
            r8.zzd()
            r8.zzb()
            r8.zzw()
            com.google.android.gms.measurement.internal.zzx r0 = r8.zzt()
            com.google.android.gms.measurement.internal.zzel<java.lang.Boolean> r1 = com.google.android.gms.measurement.internal.zzap.zzbb
            boolean r0 = r0.zza(r1)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L6f
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L6f
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L5f
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L5f
            java.util.Locale r10 = java.util.Locale.ENGLISH
            java.lang.String r10 = r0.toLowerCase(r10)
            java.lang.String r11 = "false"
            boolean r10 = r11.equals(r10)
            r2 = 1
            if (r10 == 0) goto L44
            r4 = r2
            goto L46
        L44:
            r4 = 0
        L46:
            java.lang.Long r10 = java.lang.Long.valueOf(r4)
            com.google.android.gms.measurement.internal.zzff r0 = r8.zzs()
            com.google.android.gms.measurement.internal.zzfm r0 = r0.zzn
            long r4 = r10.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L5a
            java.lang.String r11 = "true"
        L5a:
            r0.zza(r11)
            r6 = r10
            goto L6d
        L5f:
            if (r11 != 0) goto L6f
            com.google.android.gms.measurement.internal.zzff r10 = r8.zzs()
            com.google.android.gms.measurement.internal.zzfm r10 = r10.zzn
            java.lang.String r0 = "unset"
            r10.zza(r0)
            r6 = r11
        L6d:
            r3 = r1
            goto L71
        L6f:
            r3 = r10
            r6 = r11
        L71:
            com.google.android.gms.measurement.internal.zzga r10 = r8.zzx
            boolean r10 = r10.zzab()
            if (r10 != 0) goto L87
            com.google.android.gms.measurement.internal.zzew r9 = r8.zzr()
            com.google.android.gms.measurement.internal.zzey r9 = r9.zzw()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.zza(r10)
            return
        L87:
            com.google.android.gms.measurement.internal.zzga r10 = r8.zzx
            boolean r10 = r10.zzag()
            if (r10 != 0) goto L90
            return
        L90:
            com.google.android.gms.measurement.internal.zzew r10 = r8.zzr()
            com.google.android.gms.measurement.internal.zzey r10 = r10.zzw()
            com.google.android.gms.measurement.internal.zzeu r11 = r8.zzo()
            java.lang.String r11 = r11.zza(r3)
            java.lang.String r0 = "Setting user property (FE)"
            r10.zza(r0, r11, r6)
            com.google.android.gms.measurement.internal.zzkl r10 = new com.google.android.gms.measurement.internal.zzkl
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.zzij r9 = r8.zzh()
            r9.zza(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhb.zza(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void zza(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z, long j2) {
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        int iZzc = 6;
        if (z) {
            iZzc = zzp().zzc(str2);
        } else {
            zzkm zzkmVarZzp = zzp();
            if (zzkmVarZzp.zza("user property", str2)) {
                if (!zzkmVarZzp.zza("user property", zzgx.zza, str2)) {
                    iZzc = 15;
                } else if (zzkmVarZzp.zza("user property", 24, str2)) {
                    iZzc = 0;
                }
            }
        }
        if (iZzc != 0) {
            zzp();
            this.zzx.zzi().zza(iZzc, "_ev", zzkm.zza(str2, 24, true), str2 != null ? str2.length() : 0);
            return;
        }
        if (obj == null) {
            zza(str3, str2, j2, (Object) null);
            return;
        }
        int iZzb = zzp().zzb(str2, obj);
        if (iZzb != 0) {
            zzp();
            this.zzx.zzi().zza(iZzb, "_ev", zzkm.zza(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
        } else {
            Object objZzc = zzp().zzc(str2, obj);
            if (objZzc != null) {
                zza(str3, str2, j2, objZzc);
            }
        }
    }

    public final void zza(String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotEmpty(str);
        zza();
        zzb(str, str2, str3, bundle);
    }

    public final void zza(boolean z) {
        zzw();
        zzb();
        zzq().zza(new zzhu(this, z));
    }

    public final void zzab() {
        if (zzn().getApplicationContext() instanceof Application) {
            ((Application) zzn().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
        }
    }

    public final Boolean zzac() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzq().zza(atomicReference, 15000L, "boolean test flag value", new zzhd(this, atomicReference));
    }

    public final String zzad() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzq().zza(atomicReference, 15000L, "String test flag value", new zzhn(this, atomicReference));
    }

    public final Long zzae() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzq().zza(atomicReference, 15000L, "long test flag value", new zzhp(this, atomicReference));
    }

    public final Integer zzaf() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzq().zza(atomicReference, 15000L, "int test flag value", new zzhs(this, atomicReference));
    }

    public final Double zzag() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzq().zza(atomicReference, 15000L, "double test flag value", new zzhr(this, atomicReference));
    }

    public final String zzah() {
        zzb();
        return this.zzf.get();
    }

    public final void zzai() {
        zzd();
        zzb();
        zzw();
        if (this.zzx.zzag()) {
            if (zzt().zza(zzap.zzbu)) {
                zzx zzxVarZzt = zzt();
                zzxVarZzt.zzu();
                Boolean boolZzb = zzxVarZzt.zzb("google_analytics_deferred_deep_link_enabled");
                if (boolZzb != null && boolZzb.booleanValue()) {
                    zzr().zzw().zza("Deferred Deep Link feature enabled.");
                    zzq().zza(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzhe
                        private final zzhb zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzhb zzhbVar = this.zza;
                            zzhbVar.zzd();
                            if (zzhbVar.zzs().zzu.zza()) {
                                zzhbVar.zzr().zzw().zza("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long jZza = zzhbVar.zzs().zzv.zza();
                            zzhbVar.zzs().zzv.zza(1 + jZza);
                            if (jZza < 5) {
                                zzhbVar.zzx.zzah();
                            } else {
                                zzhbVar.zzr().zzi().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                zzhbVar.zzs().zzu.zza(true);
                            }
                        }
                    });
                }
            }
            zzh().zzae();
            this.zzb = false;
            String strZzw = zzs().zzw();
            if (TextUtils.isEmpty(strZzw)) {
                return;
            }
            zzl().zzaa();
            if (strZzw.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", strZzw);
            zza("auto", "_ou", bundle);
        }
    }

    public final String zzaj() {
        zzif zzifVarZzac = this.zzx.zzv().zzac();
        if (zzifVarZzac != null) {
            return zzifVarZzac.zza;
        }
        return null;
    }

    public final String zzak() {
        zzif zzifVarZzac = this.zzx.zzv().zzac();
        if (zzifVarZzac != null) {
            return zzifVarZzac.zzb;
        }
        return null;
    }

    public final String zzal() {
        if (this.zzx.zzo() != null) {
            return this.zzx.zzo();
        }
        try {
            return GoogleServices.getGoogleAppId();
        } catch (IllegalStateException e2) {
            this.zzx.zzr().zzf().zza("getGoogleAppId failed with exception", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(long j2) {
        zzb();
        zzq().zza(new zzhv(this, j2));
    }

    public final void zzb(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString("app_id"));
        zza();
        zzb(new Bundle(bundle), zzm().currentTimeMillis());
    }

    public final void zzb(zzgz zzgzVar) {
        zzb();
        zzw();
        Preconditions.checkNotNull(zzgzVar);
        if (this.zzd.remove(zzgzVar)) {
            return;
        }
        zzr().zzi().zza("OnEventListener had not been registered");
    }

    final void zzb(String str, String str2, Bundle bundle) {
        zzb();
        zzd();
        zza(str, str2, zzm().currentTimeMillis(), bundle);
    }

    public final void zzb(boolean z) {
        zzw();
        zzb();
        zzq().zza(new zzht(this, z));
    }

    public final String zzc(long j2) {
        zzey zzeyVarZzf;
        String str;
        if (zzq().zzg()) {
            zzeyVarZzf = zzr().zzf();
            str = "Cannot retrieve app instance id from analytics worker thread";
        } else {
            if (!zzw.zza()) {
                long jElapsedRealtime = zzm().elapsedRealtime();
                String strZze = zze(120000L);
                long jElapsedRealtime2 = zzm().elapsedRealtime() - jElapsedRealtime;
                return (strZze != null || jElapsedRealtime2 >= 120000) ? strZze : zze(120000 - jElapsedRealtime2);
            }
            zzeyVarZzf = zzr().zzf();
            str = "Cannot retrieve app instance id from main thread";
        }
        zzeyVarZzf.zza(str);
        return null;
    }

    public final List<zzkl> zzc(boolean z) {
        zzey zzeyVarZzi;
        String str;
        zzb();
        zzw();
        zzr().zzw().zza("Fetching user attributes (FE)");
        if (zzq().zzg()) {
            zzeyVarZzi = zzr().zzf();
            str = "Cannot get all user properties from analytics worker thread";
        } else if (zzw.zza()) {
            zzeyVarZzi = zzr().zzf();
            str = "Cannot get all user properties from main thread";
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.zzx.zzq().zza(atomicReference, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, "get user properties", new zzhi(this, atomicReference, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list != null) {
                return list;
            }
            zzeyVarZzi = zzr().zzi();
            str = "Timed out waiting for get user properties";
        }
        zzeyVarZzi.zza(str);
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    public final void zzc(String str, String str2, Bundle bundle) {
        zzb();
        zzb((String) null, str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final void zzd(long j2) {
        zza((String) null);
        zzq().zza(new zzhk(this, j2));
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }
}
