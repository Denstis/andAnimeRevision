package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;

/* JADX INFO: loaded from: classes.dex */
final class zzka implements zzjv {
    private final zzoc zzaut;
    private final int zzavc;
    private final int zzavf;
    private int zzavg;
    private int zzavh;

    public zzka(zzju zzjuVar) {
        this.zzaut = zzjuVar.zzaut;
        this.zzaut.zzbg(12);
        this.zzavf = this.zzaut.zzir() & 255;
        this.zzavc = this.zzaut.zzir();
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final int zzgj() {
        return this.zzavc;
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final int zzgk() {
        int i2 = this.zzavf;
        if (i2 == 8) {
            return this.zzaut.readUnsignedByte();
        }
        if (i2 == 16) {
            return this.zzaut.readUnsignedShort();
        }
        int i3 = this.zzavg;
        this.zzavg = i3 + 1;
        if (i3 % 2 != 0) {
            return this.zzavh & 15;
        }
        this.zzavh = this.zzaut.readUnsignedByte();
        return (this.zzavh & PsExtractor.VIDEO_STREAM_MASK) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final boolean zzgl() {
        return false;
    }
}
