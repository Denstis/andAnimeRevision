package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzev implements Runnable {
    private final /* synthetic */ int zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ Object zzc;
    private final /* synthetic */ Object zzd;
    private final /* synthetic */ Object zze;
    private final /* synthetic */ zzew zzf;

    zzev(zzew zzewVar, int i2, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzewVar;
        this.zza = i2;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzew zzewVar;
        char c2;
        zzff zzffVarZzc = this.zzf.zzx.zzc();
        if (!zzffVarZzc.zzz()) {
            this.zzf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzf.zza == 0) {
            if (this.zzf.zzt().zzf()) {
                zzewVar = this.zzf;
                zzewVar.zzu();
                c2 = 'C';
            } else {
                zzewVar = this.zzf;
                zzewVar.zzu();
                c2 = 'c';
            }
            zzewVar.zza = c2;
        }
        if (this.zzf.zzb < 0) {
            zzew zzewVar2 = this.zzf;
            zzewVar2.zzb = zzewVar2.zzt().zze();
        }
        char cCharAt = "01VDIWEA?".charAt(this.zza);
        char c3 = this.zzf.zza;
        long j2 = this.zzf.zzb;
        String strZza = zzew.zza(true, this.zzb, this.zzc, this.zzd, this.zze);
        StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 24);
        sb.append("2");
        sb.append(cCharAt);
        sb.append(c3);
        sb.append(j2);
        sb.append(":");
        sb.append(strZza);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = this.zzb.substring(0, 1024);
        }
        zzffVarZzc.zzb.zza(string, 1L);
    }
}
