package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcig implements zzcih<zzbuj> {
    private final zzddl zzfoa;
    private final zzbtl zzfyt;
    private final zzbwm zzfyu;

    public zzcig(zzbtl zzbtlVar, zzddl zzddlVar, zzbwm zzbwmVar) {
        this.zzfyt = zzbtlVar;
        this.zzfoa = zzddlVar;
        this.zzfyu = zzbwmVar;
    }

    private final zzddi<zzbuj> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar, final JSONObject jSONObject) {
        final zzddi<zzbyh> zzddiVarZzanf = this.zzfyt.zzacc().zzanf();
        final zzddi<zzbur> zzddiVarZza = this.zzfyu.zza(zzcvzVar, zzcvrVar, jSONObject);
        return zzdcy.zza(zzddiVarZzanf, zzddiVarZza).zza(new Callable(this, zzddiVarZza, zzddiVarZzanf, zzcvzVar, zzcvrVar, jSONObject) { // from class: com.google.android.gms.internal.ads.zzcin
            private final zzddi zzffr;
            private final zzddi zzfoe;
            private final zzcvz zzfyo;
            private final zzcig zzfyv;
            private final zzcvr zzfyw;
            private final JSONObject zzfyx;

            {
                this.zzfyv = this;
                this.zzfoe = zzddiVarZza;
                this.zzffr = zzddiVarZzanf;
                this.zzfyo = zzcvzVar;
                this.zzfyw = zzcvrVar;
                this.zzfyx = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzfyv.zza(this.zzfoe, this.zzffr, this.zzfyo, this.zzfyw, this.zzfyx);
            }
        }, this.zzfoa);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzbuj zza(zzddi zzddiVar, zzddi zzddiVar2, zzcvz zzcvzVar, zzcvr zzcvrVar, JSONObject jSONObject) {
        zzbur zzburVar = (zzbur) zzddiVar.get();
        zzbyh zzbyhVar = (zzbyh) zzddiVar2.get();
        zzbut zzbutVarZza = this.zzfyt.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzbvd(zzburVar), new zzbtx(jSONObject, zzbyhVar));
        zzbutVarZza.zzacm().zzajf();
        zzbutVarZza.zzacn().zzb(zzbyhVar);
        zzbutVarZza.zzaco().zzl(zzburVar.zzahu());
        return zzbutVarZza.zzacl();
    }

    final /* synthetic */ zzddi zza(zzcvr zzcvrVar, zzbyh zzbyhVar) throws JSONException {
        JSONObject jSONObjectZza = zzawg.zza("isNonagon", (Object) true);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("response", zzcvrVar.zzgje.zzfjj);
        jSONObject.put("sdk_params", jSONObjectZza);
        return zzdcy.zzb(zzbyhVar.zzc("google.afma.nativeAds.preProcessJson", jSONObject), zzcil.zzbkv, this.zzfoa);
    }

    final /* synthetic */ zzddi zza(zzcvz zzcvzVar, zzcvr zzcvrVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzdcy.zzi(new zzccu(3));
        }
        int i2 = 0;
        if (zzcvzVar.zzgka.zzfga.zzgdf <= 1) {
            return zzdcy.zzb(zzb(zzcvzVar, zzcvrVar, jSONArray.getJSONObject(0)), zzcik.zzdos, this.zzfoa);
        }
        int length = jSONArray.length();
        this.zzfyt.zzacc().zzdj(Math.min(length, zzcvzVar.zzgka.zzfga.zzgdf));
        ArrayList arrayList = new ArrayList(zzcvzVar.zzgka.zzfga.zzgdf);
        while (i2 < zzcvzVar.zzgka.zzfga.zzgdf) {
            arrayList.add(i2 < length ? zzb(zzcvzVar, zzcvrVar, jSONArray.getJSONObject(i2)) : zzdcy.zzi(new zzccu(3)));
            i2++;
        }
        return zzdcy.zzah(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        zzcvv zzcvvVar = zzcvrVar.zzgje;
        return (zzcvvVar == null || zzcvvVar.zzfjj == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<List<zzddi<zzbuj>>> zzb(final zzcvz zzcvzVar, final zzcvr zzcvrVar) {
        zzddi<zzbyh> zzddiVarZzanf = this.zzfyt.zzacc().zzanf();
        this.zzfyt.zzacc().zza(zzddiVarZzanf);
        return zzdcy.zzb(zzdcy.zzb(zzddiVarZzanf, new zzdcj(this, zzcvrVar) { // from class: com.google.android.gms.internal.ads.zzcij
            private final zzcvr zzfym;
            private final zzcig zzfyv;

            {
                this.zzfyv = this;
                this.zzfym = zzcvrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfyv.zza(this.zzfym, (zzbyh) obj);
            }
        }, this.zzfoa), new zzdcj(this, zzcvzVar, zzcvrVar) { // from class: com.google.android.gms.internal.ads.zzcii
            private final zzcvr zzfea;
            private final zzcvz zzfom;
            private final zzcig zzfyv;

            {
                this.zzfyv = this;
                this.zzfom = zzcvzVar;
                this.zzfea = zzcvrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfyv.zza(this.zzfom, this.zzfea, (JSONArray) obj);
            }
        }, this.zzfoa);
    }
}
