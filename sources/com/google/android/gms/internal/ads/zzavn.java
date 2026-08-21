package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzavn extends zzak {
    private final Context zzlk;

    private zzavn(Context context, zzah zzahVar) {
        super(zzahVar);
        this.zzlk = context;
    }

    public static zzu zzbg(Context context) {
        zzu zzuVar = new zzu(new zzal(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzavn(context, new zzar()));
        zzuVar.start();
        return zzuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzak, com.google.android.gms.internal.ads.zzn
    public final zzo zzc(zzq<?> zzqVar) throws zzae {
        if (zzqVar.zzg() && zzqVar.getMethod() == 0) {
            if (Pattern.matches((String) zzuv.zzon().zzd(zzza.zzcpw), zzqVar.getUrl())) {
                zzuv.zzoj();
                if (zzawy.zzc(this.zzlk, 13400000)) {
                    zzo zzoVarZzc = new zzafl(this.zzlk).zzc(zzqVar);
                    if (zzoVarZzc != null) {
                        String strValueOf = String.valueOf(zzqVar.getUrl());
                        zzaug.zzdy(strValueOf.length() != 0 ? "Got gmscore asset response: ".concat(strValueOf) : new String("Got gmscore asset response: "));
                        return zzoVarZzc;
                    }
                    String strValueOf2 = String.valueOf(zzqVar.getUrl());
                    zzaug.zzdy(strValueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(strValueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zzc(zzqVar);
    }
}
