package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
public final class zzazq extends zzayu implements TextureView.SurfaceTextureListener, zzbao {
    private Surface zzbhs;
    private final zzazm zzdxb;
    private final boolean zzdxc;
    private int zzdxh;
    private int zzdxi;
    private int zzdxk;
    private int zzdxl;
    private zzazh zzdxm;
    private final boolean zzdxn;
    private zzayr zzdxp;
    private final zzazj zzdya;
    private String[] zzdyn;
    private final zzazk zzebk;
    private zzbag zzebl;
    private String zzebm;
    private boolean zzebn;
    private int zzebo;
    private boolean zzebp;
    private boolean zzebq;
    private float zzebr;

    public zzazq(Context context, zzazm zzazmVar, zzazj zzazjVar, boolean z, boolean z2, zzazk zzazkVar) {
        super(context);
        this.zzebo = 1;
        this.zzdxc = z2;
        this.zzdya = zzazjVar;
        this.zzdxb = zzazmVar;
        this.zzdxn = z;
        this.zzebk = zzazkVar;
        setSurfaceTextureListener(this);
        this.zzdxb.zzb(this);
    }

    private final void zza(float f2, boolean z) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzb(f2, z);
        } else {
            zzaxi.zzeu("Trying to set volume before player is initalized.");
        }
    }

    private final void zza(Surface surface, boolean z) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zza(surface, z);
        } else {
            zzaxi.zzeu("Trying to set surface before player is initalized.");
        }
    }

    private final void zzn(int i2, int i3) {
        float f2 = i3 > 0 ? i2 / i3 : 1.0f;
        if (this.zzebr != f2) {
            this.zzebr = f2;
            requestLayout();
        }
    }

    private final zzbag zzxz() {
        return new zzbag(this.zzdya.getContext(), this.zzebk);
    }

    private final String zzya() {
        return com.google.android.gms.ads.internal.zzq.zzkj().zzr(this.zzdya.getContext(), this.zzdya.zzxr().zzblz);
    }

    private final boolean zzyb() {
        return (this.zzebl == null || this.zzebn) ? false : true;
    }

    private final boolean zzyc() {
        return zzyb() && this.zzebo != 1;
    }

    private final void zzyd() {
        String str;
        if (this.zzebl != null || (str = this.zzebm) == null || this.zzbhs == null) {
            return;
        }
        if (str.startsWith("cache:")) {
            zzbax zzbaxVarZzez = this.zzdya.zzez(this.zzebm);
            if (zzbaxVarZzez instanceof zzbbm) {
                this.zzebl = ((zzbbm) zzbaxVarZzez).zzyu();
            } else {
                if (!(zzbaxVarZzez instanceof zzbbj)) {
                    String strValueOf = String.valueOf(this.zzebm);
                    zzaxi.zzeu(strValueOf.length() != 0 ? "Stream cache miss: ".concat(strValueOf) : new String("Stream cache miss: "));
                    return;
                }
                zzbbj zzbbjVar = (zzbbj) zzbaxVarZzez;
                String strZzya = zzya();
                ByteBuffer byteBuffer = zzbbjVar.getByteBuffer();
                boolean zZzys = zzbbjVar.zzys();
                String url = zzbbjVar.getUrl();
                if (url == null) {
                    zzaxi.zzeu("Stream cache URL is null.");
                    return;
                } else {
                    this.zzebl = zzxz();
                    this.zzebl.zza(new Uri[]{Uri.parse(url)}, strZzya, byteBuffer, zZzys);
                }
            }
        } else {
            this.zzebl = zzxz();
            String strZzya2 = zzya();
            Uri[] uriArr = new Uri[this.zzdyn.length];
            int i2 = 0;
            while (true) {
                String[] strArr = this.zzdyn;
                if (i2 >= strArr.length) {
                    break;
                }
                uriArr[i2] = Uri.parse(strArr[i2]);
                i2++;
            }
            this.zzebl.zza(uriArr, strZzya2);
        }
        this.zzebl.zza(this);
        zza(this.zzbhs, false);
        this.zzebo = this.zzebl.zzyo().getPlaybackState();
        if (this.zzebo == 3) {
            zzye();
        }
    }

    private final void zzye() {
        if (this.zzebp) {
            return;
        }
        this.zzebp = true;
        zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzazp
            private final zzazq zzebj;

            {
                this.zzebj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzyn();
            }
        });
        zzwu();
        this.zzdxb.zzel();
        if (this.zzebq) {
            play();
        }
    }

    private final void zzyf() {
        zzn(this.zzdxh, this.zzdxi);
    }

    private final void zzyg() {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzap(true);
        }
    }

    private final void zzyh() {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzap(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getCurrentPosition() {
        if (zzyc()) {
            return (int) this.zzebl.zzyo().zzdw();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getDuration() {
        if (zzyc()) {
            return (int) this.zzebl.zzyo().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getVideoHeight() {
        return this.zzdxi;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getVideoWidth() {
        return this.zzdxh;
    }

    @Override // android.view.View
    protected final void onMeasure(int i2, int i3) {
        int i4;
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f2 = this.zzebr;
        if (f2 != 0.0f && this.zzdxm == null) {
            float f3 = measuredWidth;
            float f4 = f3 / measuredHeight;
            if (f2 > f4) {
                measuredHeight = (int) (f3 / f2);
            }
            float f5 = this.zzebr;
            if (f5 < f4) {
                measuredWidth = (int) (measuredHeight * f5);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzl(measuredWidth, measuredHeight);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i5 = this.zzdxk;
            if (((i5 > 0 && i5 != measuredWidth) || ((i4 = this.zzdxl) > 0 && i4 != measuredHeight)) && this.zzdxc && zzyb()) {
                zzgc zzgcVarZzyo = this.zzebl.zzyo();
                if (zzgcVarZzyo.zzdw() > 0 && !zzgcVarZzyo.zzdu()) {
                    zza(0.0f, true);
                    zzgcVarZzyo.zze(true);
                    long jZzdw = zzgcVarZzyo.zzdw();
                    long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis();
                    while (zzyb() && zzgcVarZzyo.zzdw() == jZzdw && com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis() - jCurrentTimeMillis <= 250) {
                    }
                    zzgcVarZzyo.zze(false);
                    zzwu();
                }
            }
            this.zzdxk = measuredWidth;
            this.zzdxl = measuredHeight;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        if (this.zzdxn) {
            this.zzdxm = new zzazh(getContext());
            this.zzdxm.zza(surfaceTexture, i2, i3);
            this.zzdxm.start();
            SurfaceTexture surfaceTextureZzxi = this.zzdxm.zzxi();
            if (surfaceTextureZzxi != null) {
                surfaceTexture = surfaceTextureZzxi;
            } else {
                this.zzdxm.zzxh();
                this.zzdxm = null;
            }
        }
        this.zzbhs = new Surface(surfaceTexture);
        if (this.zzebl == null) {
            zzyd();
        } else {
            zza(this.zzbhs, true);
            if (!this.zzebk.zzeai) {
                zzyg();
            }
        }
        if (this.zzdxh == 0 || this.zzdxi == 0) {
            zzn(i2, i3);
        } else {
            zzyf();
        }
        zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzazw
            private final zzazq zzebj;

            {
                this.zzebj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzyj();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        pause();
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzxh();
            this.zzdxm = null;
        }
        if (this.zzebl != null) {
            zzyh();
            Surface surface = this.zzbhs;
            if (surface != null) {
                surface.release();
            }
            this.zzbhs = null;
            zza((Surface) null, true);
        }
        zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzazy
            private final zzazq zzebj;

            {
                this.zzebj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzyi();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i2, final int i3) {
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzl(i2, i3);
        }
        zzaul.zzdsu.post(new Runnable(this, i2, i3) { // from class: com.google.android.gms.internal.ads.zzazv
            private final int zzdtk;
            private final int zzdtl;
            private final zzazq zzebj;

            {
                this.zzebj = this;
                this.zzdtk = i2;
                this.zzdtl = i3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzo(this.zzdtk, this.zzdtl);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzdxb.zzc(this);
        this.zzdxx.zza(surfaceTexture, this.zzdxp);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i2);
        zzaug.zzdy(sb.toString());
        zzaul.zzdsu.post(new Runnable(this, i2) { // from class: com.google.android.gms.internal.ads.zzazx
            private final int zzdtk;
            private final zzazq zzebj;

            {
                this.zzebj = this;
                this.zzdtk = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzcy(this.zzdtk);
            }
        });
        super.onWindowVisibilityChanged(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void pause() {
        if (zzyc()) {
            if (this.zzebk.zzeai) {
                zzyh();
            }
            this.zzebl.zzyo().zze(false);
            this.zzdxb.zzxx();
            this.zzdxy.zzxx();
            zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzazt
                private final zzazq zzebj;

                {
                    this.zzebj = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzebj.zzyk();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void play() {
        if (!zzyc()) {
            this.zzebq = true;
            return;
        }
        if (this.zzebk.zzeai) {
            zzyg();
        }
        this.zzebl.zzyo().zze(true);
        this.zzdxb.zzxw();
        this.zzdxy.zzxw();
        this.zzdxx.zzww();
        zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzazu
            private final zzazq zzebj;

            {
                this.zzebj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzyl();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void seekTo(int i2) {
        if (zzyc()) {
            this.zzebl.zzyo().seekTo(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void setVideoPath(String str) {
        if (str != null) {
            this.zzebm = str;
            this.zzdyn = new String[]{str};
            zzyd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void stop() {
        if (zzyb()) {
            this.zzebl.zzyo().stop();
            if (this.zzebl != null) {
                zza((Surface) null, true);
                zzbag zzbagVar = this.zzebl;
                if (zzbagVar != null) {
                    zzbagVar.zza((zzbao) null);
                    this.zzebl.release();
                    this.zzebl = null;
                }
                this.zzebo = 1;
                this.zzebn = false;
                this.zzebp = false;
                this.zzebq = false;
            }
        }
        this.zzdxb.zzxx();
        this.zzdxy.zzxx();
        this.zzdxb.onStop();
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zza(float f2, float f3) {
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzb(f2, f3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zza(zzayr zzayrVar) {
        this.zzdxp = zzayrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zza(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        final String string = sb.toString();
        String strValueOf = String.valueOf(string);
        zzaxi.zzeu(strValueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(strValueOf) : new String("ExoPlayerAdapter error: "));
        this.zzebn = true;
        if (this.zzebk.zzeai) {
            zzyh();
        }
        zzaul.zzdsu.post(new Runnable(this, string) { // from class: com.google.android.gms.internal.ads.zzazr
            private final String zzcyz;
            private final zzazq zzebj;

            {
                this.zzebj = this;
                this.zzcyz = string;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzebj.zzfa(this.zzcyz);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzb(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.zzebm = str;
            this.zzdyn = (String[]) Arrays.copyOf(strArr, strArr.length);
            zzyd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zzb(final boolean z, final long j2) {
        if (this.zzdya != null) {
            zzaxn.zzdwm.execute(new Runnable(this, z, j2) { // from class: com.google.android.gms.internal.ads.zzbaa
                private final boolean zzdyt;
                private final zzazq zzebj;
                private final long zzebv;

                {
                    this.zzebj = this;
                    this.zzdyt = z;
                    this.zzebv = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzebj.zzc(this.zzdyt, this.zzebv);
                }
            });
        }
    }

    final /* synthetic */ void zzc(boolean z, long j2) {
        this.zzdya.zza(z, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzcs(int i2) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzyr().zzcz(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzct(int i2) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzyr().zzda(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzcu(int i2) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzyr().zzcu(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzcv(int i2) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzyr().zzcv(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzcw(int i2) {
        zzbag zzbagVar = this.zzebl;
        if (zzbagVar != null) {
            zzbagVar.zzcw(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zzcx(int i2) {
        if (this.zzebo != i2) {
            this.zzebo = i2;
            if (i2 == 3) {
                zzye();
                return;
            }
            if (i2 != 4) {
                return;
            }
            if (this.zzebk.zzeai) {
                zzyh();
            }
            this.zzdxb.zzxx();
            this.zzdxy.zzxx();
            zzaul.zzdsu.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzazs
                private final zzazq zzebj;

                {
                    this.zzebj = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzebj.zzym();
                }
            });
        }
    }

    final /* synthetic */ void zzcy(int i2) {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.onWindowVisibilityChanged(i2);
        }
    }

    final /* synthetic */ void zzfa(String str) {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzn("ExoPlayerAdapter error", str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbao
    public final void zzm(int i2, int i3) {
        this.zzdxh = i2;
        this.zzdxi = i3;
        zzyf();
    }

    final /* synthetic */ void zzo(int i2, int i3) {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzj(i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final String zzwq() {
        String str = this.zzdxn ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzayu, com.google.android.gms.internal.ads.zzazn
    public final void zzwu() {
        zza(this.zzdxy.getVolume(), false);
    }

    final /* synthetic */ void zzyi() {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzwy();
        }
    }

    final /* synthetic */ void zzyj() {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzwv();
        }
    }

    final /* synthetic */ void zzyk() {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.onPaused();
        }
    }

    final /* synthetic */ void zzyl() {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzww();
        }
    }

    final /* synthetic */ void zzym() {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzwx();
        }
    }

    final /* synthetic */ void zzyn() {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.zzel();
        }
    }
}
