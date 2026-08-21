package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcss implements zzcru<zzcsp> {
    private final String packageName;
    private final zzddl zzfoa;
    private final zzaph zzgha;
    private final Context zzlk;

    public zzcss(zzaph zzaphVar, Context context, String str, zzddl zzddlVar) {
        this.zzgha = zzaphVar;
        this.zzlk = context;
        this.packageName = str;
        this.zzfoa = zzddlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcsp> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcsr
            private final zzcss zzggz;

            {
                this.zzggz = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzggz.zzamk();
            }
        });
    }

    final /* synthetic */ zzcsp zzamk() {
        JSONObject jSONObject = new JSONObject();
        zzaph zzaphVar = this.zzgha;
        if (zzaphVar != null) {
            zzaphVar.zza(this.zzlk, this.packageName, jSONObject);
        }
        return new zzcsp(jSONObject);
    }
}
