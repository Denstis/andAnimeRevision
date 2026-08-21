package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdpe;
import com.google.android.gms.internal.ads.zzdpf;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdpe<MessageType extends zzdpf<MessageType, BuilderType>, BuilderType extends zzdpe<MessageType, BuilderType>> implements zzdsf {
    protected abstract BuilderType zza(MessageType messagetype);

    public abstract BuilderType zza(zzdpy zzdpyVar, zzdqj zzdqjVar);

    public BuilderType zza(byte[] bArr, int i2, int i3, zzdqj zzdqjVar) throws zzdrg {
        try {
            zzdpy zzdpyVarZzc = zzdpy.zzc(bArr, 0, i3, false);
            zza(zzdpyVarZzc, zzdqjVar);
            zzdpyVarZzc.zzfp(0);
            return this;
        } catch (zzdrg e2) {
            throw e2;
        } catch (IOException e3) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + "byte array".length());
            sb.append("Reading ");
            sb.append(name);
            sb.append(" from a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e3);
        }
    }

    @Override // 
    /* JADX INFO: renamed from: zzaxf, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    @Override // com.google.android.gms.internal.ads.zzdsf
    public final /* synthetic */ zzdsf zzi(zzdsg zzdsgVar) {
        if (zzazs().getClass().isInstance(zzdsgVar)) {
            return zza((zzdpf) zzdsgVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
