package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdjn;
import com.google.android.gms.internal.ads.zzdsg;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdem<P, KeyProto extends zzdsg, KeyFormatProto extends zzdsg> implements zzden<P> {
    private final Class<P> zzgsl;
    private final Class<KeyProto> zzgsm;
    private final Class<KeyFormatProto> zzgsn;
    private final String zzgso;

    protected zzdem(Class<P> cls, Class<KeyProto> cls2, Class<KeyFormatProto> cls3, String str) {
        this.zzgsl = cls;
        this.zzgsm = cls2;
        this.zzgsn = cls3;
        this.zzgso = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <Casted> Casted zza(Object obj, String str, Class<Casted> cls) throws GeneralSecurityException {
        if (cls.isInstance(obj)) {
            return obj;
        }
        throw new GeneralSecurityException(str);
    }

    private final P zzf(KeyProto keyproto) {
        zzc(keyproto);
        return zze(keyproto);
    }

    private final KeyProto zzh(KeyFormatProto keyformatproto) {
        zzd(keyformatproto);
        KeyProto keyproto = (KeyProto) zzg(keyformatproto);
        zzc(keyproto);
        return keyproto;
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final String getKeyType() {
        return this.zzgso;
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final P zza(zzdsg zzdsgVar) {
        String strValueOf = String.valueOf(this.zzgsm.getName());
        return zzf((zzdsg) zza(zzdsgVar, strValueOf.length() != 0 ? "Expected proto of type ".concat(strValueOf) : new String("Expected proto of type "), this.zzgsm));
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final Class<P> zzapo() {
        return this.zzgsl;
    }

    protected abstract zzdjn.zzb zzapp();

    @Override // com.google.android.gms.internal.ads.zzden
    public final zzdsg zzb(zzdsg zzdsgVar) {
        String strValueOf = String.valueOf(this.zzgsn.getName());
        return zzh((zzdsg) zza(zzdsgVar, strValueOf.length() != 0 ? "Expected proto of type ".concat(strValueOf) : new String("Expected proto of type "), this.zzgsn));
    }

    protected abstract void zzc(KeyProto keyproto);

    protected abstract void zzd(KeyFormatProto keyformatproto);

    protected abstract P zze(KeyProto keyproto);

    protected abstract KeyProto zzg(KeyFormatProto keyformatproto);

    @Override // com.google.android.gms.internal.ads.zzden
    public final P zzp(zzdpm zzdpmVar) throws GeneralSecurityException {
        try {
            return zzf(zzs(zzdpmVar));
        } catch (zzdrg e2) {
            String strValueOf = String.valueOf(this.zzgsm.getName());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "Failures parsing proto of type ".concat(strValueOf) : new String("Failures parsing proto of type "), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final zzdsg zzq(zzdpm zzdpmVar) throws GeneralSecurityException {
        try {
            return zzh(zzt(zzdpmVar));
        } catch (zzdrg e2) {
            String strValueOf = String.valueOf(this.zzgsn.getName());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "Failures parsing proto of type ".concat(strValueOf) : new String("Failures parsing proto of type "), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final zzdjn zzr(zzdpm zzdpmVar) throws GeneralSecurityException {
        try {
            return (zzdjn) zzdjn.zzatx().zzgw(this.zzgso).zzbo(zzh(zzt(zzdpmVar)).zzaxg()).zzb(zzapp()).zzazr();
        } catch (zzdrg e2) {
            throw new GeneralSecurityException("Unexpected proto", e2);
        }
    }

    protected abstract KeyProto zzs(zzdpm zzdpmVar);

    protected abstract KeyFormatProto zzt(zzdpm zzdpmVar);
}
