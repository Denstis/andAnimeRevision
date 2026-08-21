package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class zzib extends zzkl implements zznv {
    private int zzafm;
    private int zzafo;
    private final zzhj zzako;
    private final zzho zzakp;
    private boolean zzakq;
    private boolean zzakr;
    private MediaFormat zzaks;
    private long zzakt;
    private boolean zzaku;

    public zzib(zzkn zzknVar) {
        this(zzknVar, null, true);
    }

    private zzib(zzkn zzknVar, zzis<Object> zzisVar, boolean z) {
        this(zzknVar, null, true, null, null);
    }

    private zzib(zzkn zzknVar, zzis<Object> zzisVar, boolean z, Handler handler, zzhg zzhgVar) {
        this(zzknVar, null, true, null, null, null, new zzhe[0]);
    }

    private zzib(zzkn zzknVar, zzis<Object> zzisVar, boolean z, Handler handler, zzhg zzhgVar, zzhf zzhfVar, zzhe... zzheVarArr) {
        super(1, zzknVar, zzisVar, z);
        this.zzakp = new zzho(null, zzheVarArr, new zzid(this));
        this.zzako = new zzhj(null, null);
    }

    protected static void zza(int i2, long j2, long j3) {
    }

    static /* synthetic */ boolean zza(zzib zzibVar, boolean z) {
        zzibVar.zzaku = true;
        return true;
    }

    private final boolean zzax(String str) {
        return this.zzakp.zzav(str);
    }

    protected static void zzfn() {
    }

    protected static void zzq(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgx
    public final boolean isReady() {
        return this.zzakp.zzfb() || super.isReady();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzgd {
        int[] iArr;
        int i2;
        boolean z = this.zzaks != null;
        String string = z ? this.zzaks.getString("mime") : MimeTypes.AUDIO_RAW;
        if (z) {
            mediaFormat = this.zzaks;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.zzakr && integer == 6 && (i2 = this.zzafm) < 6) {
            iArr = new int[i2];
            for (int i3 = 0; i3 < this.zzafm; i3++) {
                iArr[i3] = i3;
            }
        } else {
            iArr = null;
        }
        try {
            this.zzakp.zza(string, integer, integer2, this.zzafo, 0, iArr);
        } catch (zzhs e2) {
            throw zzgd.zza(e2, getIndex());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void onStarted() {
        super.onStarted();
        this.zzakp.play();
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void onStopped() {
        this.zzakp.pause();
        super.onStopped();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final int zza(zzkn zzknVar, zzgo zzgoVar) {
        int i2;
        int i3;
        String str = zzgoVar.zzafc;
        if (!zzny.zzbc(str)) {
            return 0;
        }
        int i4 = zzof.SDK_INT >= 21 ? 16 : 0;
        if (zzax(str) && zzknVar.zzgv() != null) {
            return i4 | 4 | 3;
        }
        zzkm zzkmVarZzc = zzknVar.zzc(str, false);
        boolean z = true;
        if (zzkmVarZzc == null) {
            return 1;
        }
        if (zzof.SDK_INT >= 21 && (((i2 = zzgoVar.zzafn) != -1 && !zzkmVarZzc.zzap(i2)) || ((i3 = zzgoVar.zzafm) != -1 && !zzkmVarZzc.zzaq(i3)))) {
            z = false;
        }
        return i4 | 4 | (z ? 3 : 2);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final zzkm zza(zzkn zzknVar, zzgo zzgoVar, boolean z) {
        zzkm zzkmVarZzgv;
        if (!zzax(zzgoVar.zzafc) || (zzkmVarZzgv = zzknVar.zzgv()) == null) {
            this.zzakq = false;
            return super.zza(zzknVar, zzgoVar, z);
        }
        this.zzakq = true;
        return zzkmVarZzgv;
    }

    @Override // com.google.android.gms.internal.ads.zzgb, com.google.android.gms.internal.ads.zzge
    public final void zza(int i2, Object obj) {
        if (i2 == 2) {
            this.zzakp.setVolume(((Float) obj).floatValue());
        } else if (i2 != 3) {
            super.zza(i2, obj);
        } else {
            this.zzakp.setStreamType(((Integer) obj).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void zza(long j2, boolean z) {
        super.zza(j2, z);
        this.zzakp.reset();
        this.zzakt = j2;
        this.zzaku = true;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zza(zzkm zzkmVar, MediaCodec mediaCodec, zzgo zzgoVar, MediaCrypto mediaCrypto) {
        this.zzakr = zzof.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(zzkmVar.name) && "samsung".equals(zzof.MANUFACTURER) && (zzof.DEVICE.startsWith("zeroflte") || zzof.DEVICE.startsWith("herolte") || zzof.DEVICE.startsWith("heroqlte"));
        if (!this.zzakq) {
            mediaCodec.configure(zzgoVar.zzek(), (Surface) null, (MediaCrypto) null, 0);
            this.zzaks = null;
        } else {
            this.zzaks = zzgoVar.zzek();
            this.zzaks.setString("mime", MimeTypes.AUDIO_RAW);
            mediaCodec.configure(this.zzaks, (Surface) null, (MediaCrypto) null, 0);
            this.zzaks.setString("mime", zzgoVar.zzafc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final boolean zza(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z) throws zzgd {
        if (this.zzakq && (i3 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i2, false);
            return true;
        }
        if (z) {
            mediaCodec.releaseOutputBuffer(i2, false);
            this.zzayw.zzamh++;
            this.zzakp.zzey();
            return true;
        }
        try {
            if (!this.zzakp.zza(byteBuffer, j4)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i2, false);
            this.zzayw.zzamg++;
            return true;
        } catch (zzhv | zzhw e2) {
            throw zzgd.zza(e2, getIndex());
        }
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final zzgu zzb(zzgu zzguVar) {
        return this.zzakp.zzb(zzguVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zzc(String str, long j2, long j3) {
        this.zzako.zzb(str, j2, j3);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zzd(zzgo zzgoVar) {
        super.zzd(zzgoVar);
        this.zzako.zzc(zzgoVar);
        this.zzafo = MimeTypes.AUDIO_RAW.equals(zzgoVar.zzafc) ? zzgoVar.zzafo : 2;
        this.zzafm = zzgoVar.zzafm;
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void zzd(boolean z) {
        super.zzd(z);
        this.zzako.zzc(this.zzayw);
        int i2 = zzds().zzagf;
        if (i2 != 0) {
            this.zzakp.zzs(i2);
        } else {
            this.zzakp.zzfd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgb, com.google.android.gms.internal.ads.zzgx
    public final zznv zzdk() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgb
    protected final void zzdr() {
        try {
            this.zzakp.release();
            try {
                super.zzdr();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzdr();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl, com.google.android.gms.internal.ads.zzgx
    public final boolean zzeo() {
        return super.zzeo() && this.zzakp.zzeo();
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final zzgu zzfc() {
        return this.zzakp.zzfc();
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final long zzfj() {
        long jZzi = this.zzakp.zzi(zzeo());
        if (jZzi != Long.MIN_VALUE) {
            if (!this.zzaku) {
                jZzi = Math.max(this.zzakt, jZzi);
            }
            this.zzakt = jZzi;
            this.zzaku = false;
        }
        return this.zzakt;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    protected final void zzfo() throws zzgd {
        try {
            this.zzakp.zzez();
        } catch (zzhw e2) {
            throw zzgd.zza(e2, getIndex());
        }
    }
}
