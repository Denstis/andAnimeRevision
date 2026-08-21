package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgb extends zzen {
    private final zzke zza;
    private Boolean zzb;
    private String zzc;

    public zzgb(zzke zzkeVar) {
        this(zzkeVar, null);
    }

    private zzgb(zzke zzkeVar, String str) {
        Preconditions.checkNotNull(zzkeVar);
        this.zza = zzkeVar;
        this.zzc = null;
    }

    @VisibleForTesting
    private final void zza(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.zza.zzq().zzg()) {
            runnable.run();
        } else {
            this.zza.zzq().zza(runnable);
        }
    }

    private final void zza(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzr().zzf().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzb == null) {
                    this.zzb = Boolean.valueOf("com.google.android.gms".equals(this.zzc) || UidVerifier.isGooglePlayServicesUid(this.zza.zzn(), Binder.getCallingUid()) || GoogleSignatureVerifier.getInstance(this.zza.zzn()).isUidGoogleSigned(Binder.getCallingUid()));
                }
                if (this.zzb.booleanValue()) {
                    return;
                }
            } catch (SecurityException e2) {
                this.zza.zzr().zzf().zza("Measurement Service called with invalid calling package. appId", zzew.zza(str));
                throw e2;
            }
        }
        if (this.zzc == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zza.zzn(), Binder.getCallingUid(), str)) {
            this.zzc = str;
        }
        if (str.equals(this.zzc)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    private final void zzb(zzm zzmVar, boolean z) {
        Preconditions.checkNotNull(zzmVar);
        zza(zzmVar.zza, false);
        this.zza.zzj().zza(zzmVar.zzb, zzmVar.zzr, zzmVar.zzv);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(zzm zzmVar, boolean z) {
        zzb(zzmVar, false);
        try {
            List<zzkn> list = (List) this.zza.zzq().zza(new zzgn(this, zzmVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkn zzknVar : list) {
                if (z || !zzkm.zze(zzknVar.zzc)) {
                    arrayList.add(new zzkl(zzknVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.zza.zzr().zzf().zza("Failed to get user attributes. appId", zzew.zza(zzmVar.zza), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, zzm zzmVar) {
        zzb(zzmVar, false);
        try {
            return (List) this.zza.zzq().zza(new zzgi(this, zzmVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.zza.zzr().zzf().zza("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, String str3) {
        zza(str, true);
        try {
            return (List) this.zza.zzq().zza(new zzgh(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.zza.zzr().zzf().zza("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, String str3, boolean z) {
        zza(str, true);
        try {
            List<zzkn> list = (List) this.zza.zzq().zza(new zzgf(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkn zzknVar : list) {
                if (z || !zzkm.zze(zzknVar.zzc)) {
                    arrayList.add(new zzkl(zzknVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.zza.zzr().zzf().zza("Failed to get user attributes. appId", zzew.zza(str), e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, boolean z, zzm zzmVar) {
        zzb(zzmVar, false);
        try {
            List<zzkn> list = (List) this.zza.zzq().zza(new zzgg(this, zzmVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkn zzknVar : list) {
                if (z || !zzkm.zze(zzknVar.zzc)) {
                    arrayList.add(new zzkl(zzknVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.zza.zzr().zzf().zza("Failed to get user attributes. appId", zzew.zza(zzmVar.zza), e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(long j2, String str, String str2, String str3) {
        zza(new zzgp(this, str2, str3, str, j2));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzanVar);
        zzb(zzmVar, false);
        zza(new zzgj(this, zzanVar, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, String str, String str2) {
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotEmpty(str);
        zza(str, true);
        zza(new zzgm(this, zzanVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzkl zzklVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzklVar);
        zzb(zzmVar, false);
        zza(new zzgo(this, zzklVar, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzm zzmVar) {
        zzb(zzmVar, false);
        zza(new zzgq(this, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotNull(zzvVar.zzc);
        zza(zzvVar.zza, true);
        zza(new zzgd(this, new zzv(zzvVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotNull(zzvVar.zzc);
        zzb(zzmVar, false);
        zzv zzvVar2 = new zzv(zzvVar);
        zzvVar2.zza = zzmVar.zza;
        zza(new zzgs(this, zzvVar2, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] zza(zzan zzanVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzanVar);
        zza(str, true);
        this.zza.zzr().zzw().zza("Log and bundle. event", this.zza.zzi().zza(zzanVar.zza));
        long jNanoTime = this.zza.zzm().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zza.zzq().zzb(new zzgl(this, zzanVar, str)).get();
            if (bArr == null) {
                this.zza.zzr().zzf().zza("Log and bundle returned null. appId", zzew.zza(str));
                bArr = new byte[0];
            }
            this.zza.zzr().zzw().zza("Log and bundle processed. event, size, time_ms", this.zza.zzi().zza(zzanVar.zza), Integer.valueOf(bArr.length), Long.valueOf((this.zza.zzm().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e2) {
            this.zza.zzr().zzf().zza("Failed to log and bundle. appId, event, error", zzew.zza(str), this.zza.zzi().zza(zzanVar.zza), e2);
            return null;
        }
    }

    @VisibleForTesting
    final zzan zzb(zzan zzanVar, zzm zzmVar) {
        zzam zzamVar;
        boolean z = false;
        if ("_cmp".equals(zzanVar.zza) && (zzamVar = zzanVar.zzb) != null && zzamVar.zza() != 0) {
            String strZzd = zzanVar.zzb.zzd("_cis");
            if (!TextUtils.isEmpty(strZzd) && (("referrer broadcast".equals(strZzd) || "referrer API".equals(strZzd)) && this.zza.zzb().zze(zzmVar.zza, zzap.zzao))) {
                z = true;
            }
        }
        if (!z) {
            return zzanVar;
        }
        this.zza.zzr().zzv().zza("Event has been filtered ", zzanVar.toString());
        return new zzan("_cmpx", zzanVar.zzb, zzanVar.zzc, zzanVar.zzd);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzb(zzm zzmVar) {
        zzb(zzmVar, false);
        zza(new zzge(this, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String zzc(zzm zzmVar) {
        zzb(zzmVar, false);
        return this.zza.zzd(zzmVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzd(zzm zzmVar) {
        zza(zzmVar.zza, false);
        zza(new zzgk(this, zzmVar));
    }
}
