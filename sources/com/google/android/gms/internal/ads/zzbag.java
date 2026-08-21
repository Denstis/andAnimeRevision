package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbag implements zzgf, zzlp, zzns<zzne>, zzow {

    @VisibleForTesting
    private static int zzeci;

    @VisibleForTesting
    private static int zzecj;
    private int bytesTransferred;
    private final zzazk zzebk;
    private final zzgx zzecl;
    private zzgc zzeco;
    private ByteBuffer zzecp;
    private boolean zzecq;
    private zzbao zzecr;
    private final Context zzlk;
    private Set<WeakReference<zzazz>> zzecs = new HashSet();
    private final zzbad zzeck = new zzbad();
    private final zzgx zzecm = new zzib(zzkn.zzaza);
    private final zzms zzecn = new zzmn();

    public zzbag(Context context, zzazk zzazkVar) {
        this.zzlk = context;
        this.zzebk = zzazkVar;
        this.zzecl = new zzoq(this.zzlk, zzkn.zzaza, 0L, zzaul.zzdsu, this, -1);
        if (zzaug.zzuu()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(strValueOf);
            zzaug.zzdy(sb.toString());
        }
        zzeci++;
        this.zzeco = zzgg.zza(new zzgx[]{this.zzecm, this.zzecl}, this.zzecn, this.zzeck);
        this.zzeco.zza(this);
    }

    @VisibleForTesting
    private final zzlu zzb(Uri uri, final String str) {
        zznd zzndVar;
        if (!this.zzecq || this.zzecp.limit() <= 0) {
            final zznd zzndVar2 = this.zzebk.zzeaq > 0 ? new zznd(this, str) { // from class: com.google.android.gms.internal.ads.zzbai
                private final String zzcyz;
                private final zzbag zzect;

                {
                    this.zzect = this;
                    this.zzcyz = str;
                }

                @Override // com.google.android.gms.internal.ads.zznd
                public final zzne zzib() {
                    return this.zzect.zzfc(this.zzcyz);
                }
            } : new zznd(this, str) { // from class: com.google.android.gms.internal.ads.zzbah
                private final String zzcyz;
                private final zzbag zzect;

                {
                    this.zzect = this;
                    this.zzcyz = str;
                }

                @Override // com.google.android.gms.internal.ads.zznd
                public final zzne zzib() {
                    return this.zzect.zzfb(this.zzcyz);
                }
            };
            final zznd zzndVar3 = this.zzebk.zzear ? new zznd(this, zzndVar2) { // from class: com.google.android.gms.internal.ads.zzbak
                private final zzbag zzect;
                private final zznd zzecv;

                {
                    this.zzect = this;
                    this.zzecv = zzndVar2;
                }

                @Override // com.google.android.gms.internal.ads.zznd
                public final zzne zzib() {
                    return this.zzect.zza(this.zzecv);
                }
            } : zzndVar2;
            if (this.zzecp.limit() > 0) {
                final byte[] bArr = new byte[this.zzecp.limit()];
                this.zzecp.get(bArr);
                zzndVar3 = new zznd(zzndVar3, bArr) { // from class: com.google.android.gms.internal.ads.zzbaj
                    private final byte[] zzdlz;
                    private final zznd zzecu;

                    {
                        this.zzecu = zzndVar3;
                        this.zzdlz = bArr;
                    }

                    @Override // com.google.android.gms.internal.ads.zznd
                    public final zzne zzib() {
                        zznd zzndVar4 = this.zzecu;
                        byte[] bArr2 = this.zzdlz;
                        return new zzban(new zznb(bArr2), bArr2.length, zzndVar4.zzib());
                    }
                };
            }
            zzndVar = zzndVar3;
        } else {
            final byte[] bArr2 = new byte[this.zzecp.limit()];
            this.zzecp.get(bArr2);
            zzndVar = new zznd(bArr2) { // from class: com.google.android.gms.internal.ads.zzbaf
                private final byte[] zzdwb;

                {
                    this.zzdwb = bArr2;
                }

                @Override // com.google.android.gms.internal.ads.zznd
                public final zzne zzib() {
                    return new zznb(this.zzdwb);
                }
            };
        }
        zzix zzixVar = zzbam.zzecw;
        zzazk zzazkVar = this.zzebk;
        return new zzlq(uri, zzndVar, zzixVar, zzazkVar.zzeas, zzaul.zzdsu, this, null, zzazkVar.zzeao);
    }

    public static int zzyp() {
        return zzeci;
    }

    public static int zzyq() {
        return zzecj;
    }

    public final void finalize() {
        zzeci--;
        if (zzaug.zzuu()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(strValueOf);
            zzaug.zzdy(sb.toString());
        }
    }

    public final long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public final void release() {
        zzgc zzgcVar = this.zzeco;
        if (zzgcVar != null) {
            zzgcVar.zzb(this);
            this.zzeco.release();
            this.zzeco = null;
            zzecj--;
        }
    }

    final /* synthetic */ zzne zza(zznd zzndVar) {
        return new zzbab(this.zzlk, zzndVar.zzib(), this, new zzbae(this) { // from class: com.google.android.gms.internal.ads.zzbal
            private final zzbag zzect;

            {
                this.zzect = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbae
            public final void zzb(boolean z, long j2) {
                this.zzect.zzd(z, j2);
            }
        });
    }

    final void zza(Surface surface, boolean z) {
        if (this.zzeco == null) {
            return;
        }
        zzgh zzghVar = new zzgh(this.zzecl, 1, surface);
        if (z) {
            this.zzeco.zzb(zzghVar);
        } else {
            this.zzeco.zza(zzghVar);
        }
    }

    public final void zza(zzbao zzbaoVar) {
        this.zzecr = zzbaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(zzgd zzgdVar) {
        zzbao zzbaoVar = this.zzecr;
        if (zzbaoVar != null) {
            zzbaoVar.zza("onPlayerError", zzgdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(zzgu zzguVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(zzgy zzgyVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(zzmk zzmkVar, zzmv zzmvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzns
    public final /* synthetic */ void zza(zzne zzneVar, zznf zznfVar) {
        this.bytesTransferred = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zza(boolean z, int i2) {
        zzbao zzbaoVar = this.zzecr;
        if (zzbaoVar != null) {
            zzbaoVar.zzcx(i2);
        }
    }

    public final void zza(Uri[] uriArr, String str) {
        zza(uriArr, str, ByteBuffer.allocate(0), false);
    }

    public final void zza(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzlu zzlvVar;
        if (this.zzeco == null) {
            return;
        }
        this.zzecp = byteBuffer;
        this.zzecq = z;
        if (uriArr.length == 1) {
            zzlvVar = zzb(uriArr[0], str);
        } else {
            zzlu[] zzluVarArr = new zzlu[uriArr.length];
            for (int i2 = 0; i2 < uriArr.length; i2++) {
                zzluVarArr[i2] = zzb(uriArr[i2], str);
            }
            zzlvVar = new zzlv(zzluVarArr);
        }
        this.zzeco.zza(zzlvVar);
        zzecj++;
    }

    final void zzap(boolean z) {
        if (this.zzeco == null) {
            return;
        }
        for (int i2 = 0; i2 < this.zzeco.zzdv(); i2++) {
            this.zzecn.zzf(i2, !z);
        }
    }

    final void zzb(float f2, boolean z) {
        if (this.zzeco == null) {
            return;
        }
        zzgh zzghVar = new zzgh(this.zzecm, 2, Float.valueOf(f2));
        if (z) {
            this.zzeco.zzb(zzghVar);
        } else {
            this.zzeco.zza(zzghVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzb(int i2, int i3, int i4, float f2) {
        zzbao zzbaoVar = this.zzecr;
        if (zzbaoVar != null) {
            zzbaoVar.zzm(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzb(Surface surface) {
    }

    @Override // com.google.android.gms.internal.ads.zzlp
    public final void zzb(IOException iOException) {
        zzbao zzbaoVar = this.zzecr;
        if (zzbaoVar != null) {
            zzbaoVar.zza("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzns
    public final /* synthetic */ void zzc(zzne zzneVar, int i2) {
        this.bytesTransferred += i2;
    }

    public final void zzcw(int i2) {
        Iterator<WeakReference<zzazz>> it = this.zzecs.iterator();
        while (it.hasNext()) {
            zzazz zzazzVar = it.next().get();
            if (zzazzVar != null) {
                zzazzVar.setReceiveBufferSize(i2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzd(String str, long j2, long j3) {
    }

    final /* synthetic */ void zzd(boolean z, long j2) {
        zzbao zzbaoVar = this.zzecr;
        if (zzbaoVar != null) {
            zzbaoVar.zzb(z, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zzdx() {
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zze(zzil zzilVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzns
    public final /* bridge */ /* synthetic */ void zze(zzne zzneVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzf(int i2, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzf(zzil zzilVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgf
    public final void zzf(boolean z) {
    }

    final /* synthetic */ zzne zzfb(String str) {
        zzbag zzbagVar = this.zzebk.zzear ? null : this;
        zzazk zzazkVar = this.zzebk;
        return new zznh(str, null, zzbagVar, zzazkVar.zzeal, zzazkVar.zzean, true, null);
    }

    final /* synthetic */ zzne zzfc(String str) {
        zzbag zzbagVar = this.zzebk.zzear ? null : this;
        zzazk zzazkVar = this.zzebk;
        zzazz zzazzVar = new zzazz(str, zzbagVar, zzazkVar.zzeal, zzazkVar.zzean, zzazkVar.zzeaq);
        this.zzecs.add(new WeakReference<>(zzazzVar));
        return zzazzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzk(zzgo zzgoVar) {
    }

    public final zzgc zzyo() {
        return this.zzeco;
    }

    public final zzbad zzyr() {
        return this.zzeck;
    }
}
