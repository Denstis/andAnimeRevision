package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzdl;
import com.google.android.gms.internal.measurement.zzdn;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdn<MessageType extends zzdl<MessageType, BuilderType>, BuilderType extends zzdn<MessageType, BuilderType>> implements zzgn {
    private final String zza(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + String.valueOf(str).length());
        sb.append("Reading ");
        sb.append(name);
        sb.append(" from a ");
        sb.append(str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }

    protected abstract BuilderType zza(MessageType messagetype);

    public abstract BuilderType zza(zzeg zzegVar, zzeq zzeqVar);

    public BuilderType zza(byte[] bArr, int i2, int i3) throws zzfo {
        try {
            zzeg zzegVarZza = zzeg.zza(bArr, 0, i3, false);
            zza(zzegVarZza, zzeq.zza());
            zzegVarZza.zza(0);
            return this;
        } catch (zzfo e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException(zza("byte array"), e3);
        }
    }

    public BuilderType zza(byte[] bArr, int i2, int i3, zzeq zzeqVar) throws zzfo {
        try {
            zzeg zzegVarZza = zzeg.zza(bArr, 0, i3, false);
            zza(zzegVarZza, zzeqVar);
            zzegVarZza.zza(0);
            return this;
        } catch (zzfo e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException(zza("byte array"), e3);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgn
    public final /* synthetic */ zzgn zza(zzgo zzgoVar) {
        if (zzbt().getClass().isInstance(zzgoVar)) {
            return zza((zzdl) zzgoVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zzgn
    public final /* synthetic */ zzgn zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzgn
    public final /* synthetic */ zzgn zza(byte[] bArr, zzeq zzeqVar) {
        return zza(bArr, 0, bArr.length, zzeqVar);
    }

    @Override // 
    /* JADX INFO: renamed from: zzp, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();
}
