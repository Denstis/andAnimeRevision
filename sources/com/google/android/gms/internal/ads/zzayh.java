package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public final class zzayh extends zzayu implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    private static final Map<Integer, String> zzdxa = new HashMap();
    private final zzazm zzdxb;
    private final boolean zzdxc;
    private int zzdxd;
    private int zzdxe;
    private MediaPlayer zzdxf;
    private Uri zzdxg;
    private int zzdxh;
    private int zzdxi;
    private int zzdxj;
    private int zzdxk;
    private int zzdxl;
    private zzazh zzdxm;
    private boolean zzdxn;
    private int zzdxo;
    private zzayr zzdxp;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            zzdxa.put(-1004, "MEDIA_ERROR_IO");
            zzdxa.put(-1007, "MEDIA_ERROR_MALFORMED");
            zzdxa.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            zzdxa.put(-110, "MEDIA_ERROR_TIMED_OUT");
            zzdxa.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        zzdxa.put(100, "MEDIA_ERROR_SERVER_DIED");
        zzdxa.put(1, "MEDIA_ERROR_UNKNOWN");
        zzdxa.put(1, "MEDIA_INFO_UNKNOWN");
        zzdxa.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzdxa.put(701, "MEDIA_INFO_BUFFERING_START");
        zzdxa.put(702, "MEDIA_INFO_BUFFERING_END");
        zzdxa.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        zzdxa.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        zzdxa.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            zzdxa.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            zzdxa.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzayh(Context context, boolean z, boolean z2, zzazk zzazkVar, zzazm zzazmVar) {
        super(context);
        this.zzdxd = 0;
        this.zzdxe = 0;
        setSurfaceTextureListener(this);
        this.zzdxb = zzazmVar;
        this.zzdxn = z;
        this.zzdxc = z2;
        this.zzdxb.zzb(this);
    }

    private final void zzam(boolean z) {
        zzaug.zzdy("AdMediaPlayerView release");
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzxh();
            this.zzdxm = null;
        }
        MediaPlayer mediaPlayer = this.zzdxf;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzdxf.release();
            this.zzdxf = null;
            zzcq(0);
            if (z) {
                this.zzdxe = 0;
                this.zzdxe = 0;
            }
        }
    }

    private final void zzcq(int i2) {
        if (i2 == 3) {
            this.zzdxb.zzxw();
            this.zzdxy.zzxw();
        } else if (this.zzdxd == 3) {
            this.zzdxb.zzxx();
            this.zzdxy.zzxx();
        }
        this.zzdxd = i2;
    }

    private final void zzd(float f2) {
        MediaPlayer mediaPlayer = this.zzdxf;
        if (mediaPlayer == null) {
            zzaxi.zzeu("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                mediaPlayer.setVolume(f2, f2);
            } catch (IllegalStateException unused) {
            }
        }
    }

    private final void zzwr() {
        zzaug.zzdy("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzdxg == null || surfaceTexture == null) {
            return;
        }
        zzam(false);
        try {
            com.google.android.gms.ads.internal.zzq.zzkz();
            this.zzdxf = new MediaPlayer();
            this.zzdxf.setOnBufferingUpdateListener(this);
            this.zzdxf.setOnCompletionListener(this);
            this.zzdxf.setOnErrorListener(this);
            this.zzdxf.setOnInfoListener(this);
            this.zzdxf.setOnPreparedListener(this);
            this.zzdxf.setOnVideoSizeChangedListener(this);
            this.zzdxj = 0;
            if (this.zzdxn) {
                this.zzdxm = new zzazh(getContext());
                this.zzdxm.zza(surfaceTexture, getWidth(), getHeight());
                this.zzdxm.start();
                SurfaceTexture surfaceTextureZzxi = this.zzdxm.zzxi();
                if (surfaceTextureZzxi != null) {
                    surfaceTexture = surfaceTextureZzxi;
                } else {
                    this.zzdxm.zzxh();
                    this.zzdxm = null;
                }
            }
            this.zzdxf.setDataSource(getContext(), this.zzdxg);
            com.google.android.gms.ads.internal.zzq.zzla();
            this.zzdxf.setSurface(new Surface(surfaceTexture));
            this.zzdxf.setAudioStreamType(3);
            this.zzdxf.setScreenOnWhilePlaying(true);
            this.zzdxf.prepareAsync();
            zzcq(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e2) {
            String strValueOf = String.valueOf(this.zzdxg);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 36);
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(strValueOf);
            zzaxi.zzd(sb.toString(), e2);
            onError(this.zzdxf, 1, 0);
        }
    }

    private final void zzws() {
        if (this.zzdxc && zzwt() && this.zzdxf.getCurrentPosition() > 0 && this.zzdxe != 3) {
            zzaug.zzdy("AdMediaPlayerView nudging MediaPlayer");
            zzd(0.0f);
            this.zzdxf.start();
            int currentPosition = this.zzdxf.getCurrentPosition();
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis();
            while (zzwt() && this.zzdxf.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis() - jCurrentTimeMillis <= 250) {
            }
            this.zzdxf.pause();
            zzwu();
        }
    }

    private final boolean zzwt() {
        int i2;
        return (this.zzdxf == null || (i2 = this.zzdxd) == -1 || i2 == 0 || i2 == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getCurrentPosition() {
        if (zzwt()) {
            return this.zzdxf.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getDuration() {
        if (zzwt()) {
            return this.zzdxf.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.zzdxf;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.zzdxf;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i2) {
        this.zzdxj = i2;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzaug.zzdy("AdMediaPlayerView completion");
        zzcq(5);
        this.zzdxe = 5;
        zzaul.zzdsu.post(new zzaym(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        String str = zzdxa.get(Integer.valueOf(i2));
        String str2 = zzdxa.get(Integer.valueOf(i3));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzaxi.zzeu(sb.toString());
        zzcq(-1);
        this.zzdxe = -1;
        zzaul.zzdsu.post(new zzayl(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i2, int i3) {
        String str = zzdxa.get(Integer.valueOf(i2));
        String str2 = zzdxa.get(Integer.valueOf(i3));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzaug.zzdy(sb.toString());
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069 A[PHI: r6
      0x0069: PHI (r6v6 int) = (r6v5 int), (r6v3 int), (r6v3 int), (r6v3 int) binds: [B:29:0x0068, B:27:0x0065, B:21:0x0055, B:15:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.zzdxh
            int r0 = android.view.TextureView.getDefaultSize(r0, r6)
            int r1 = r5.zzdxi
            int r1 = android.view.TextureView.getDefaultSize(r1, r7)
            int r2 = r5.zzdxh
            if (r2 <= 0) goto L88
            int r2 = r5.zzdxi
            if (r2 <= 0) goto L88
            com.google.android.gms.internal.ads.zzazh r2 = r5.zzdxm
            if (r2 != 0) goto L88
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L48
            if (r1 != r2) goto L48
            int r0 = r5.zzdxh
            int r1 = r0 * r7
            int r2 = r5.zzdxi
            int r3 = r6 * r2
            if (r1 >= r3) goto L3d
            int r0 = r0 * r7
            int r0 = r0 / r2
            r1 = r7
            goto L88
        L3d:
            int r1 = r0 * r7
            int r3 = r6 * r2
            if (r1 <= r3) goto L69
            int r2 = r2 * r6
            int r1 = r2 / r0
            goto L89
        L48:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L5a
            int r0 = r5.zzdxi
            int r0 = r0 * r6
            int r2 = r5.zzdxh
            int r0 = r0 / r2
            if (r1 != r3) goto L58
            if (r0 <= r7) goto L58
            goto L67
        L58:
            r1 = r0
            goto L89
        L5a:
            if (r1 != r2) goto L6b
            int r1 = r5.zzdxh
            int r1 = r1 * r7
            int r2 = r5.zzdxi
            int r1 = r1 / r2
            if (r0 != r3) goto L68
            if (r1 <= r6) goto L68
        L67:
            goto L69
        L68:
            r6 = r1
        L69:
            r1 = r7
            goto L89
        L6b:
            int r2 = r5.zzdxh
            int r4 = r5.zzdxi
            if (r1 != r3) goto L78
            if (r4 <= r7) goto L78
            int r2 = r2 * r7
            int r2 = r2 / r4
            r1 = r7
            goto L79
        L78:
            r1 = r4
        L79:
            if (r0 != r3) goto L86
            if (r2 <= r6) goto L86
            int r7 = r5.zzdxi
            int r7 = r7 * r6
            int r0 = r5.zzdxh
            int r1 = r7 / r0
            goto L89
        L86:
            r6 = r2
            goto L89
        L88:
            r6 = r0
        L89:
            r5.setMeasuredDimension(r6, r1)
            com.google.android.gms.internal.ads.zzazh r7 = r5.zzdxm
            if (r7 == 0) goto L93
            r7.zzl(r6, r1)
        L93:
            int r7 = android.os.Build.VERSION.SDK_INT
            r0 = 16
            if (r7 != r0) goto Lac
            int r7 = r5.zzdxk
            if (r7 <= 0) goto L9f
            if (r7 != r6) goto La5
        L9f:
            int r7 = r5.zzdxl
            if (r7 <= 0) goto La8
            if (r7 == r1) goto La8
        La5:
            r5.zzws()
        La8:
            r5.zzdxk = r6
            r5.zzdxl = r1
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayh.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzaug.zzdy("AdMediaPlayerView prepared");
        zzcq(2);
        this.zzdxb.zzel();
        zzaul.zzdsu.post(new zzayj(this));
        this.zzdxh = mediaPlayer.getVideoWidth();
        this.zzdxi = mediaPlayer.getVideoHeight();
        int i2 = this.zzdxo;
        if (i2 != 0) {
            seekTo(i2);
        }
        zzws();
        int i3 = this.zzdxh;
        int i4 = this.zzdxi;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i3);
        sb.append(" x ");
        sb.append(i4);
        zzaxi.zzet(sb.toString());
        if (this.zzdxe == 3) {
            play();
        }
        zzwu();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        zzaug.zzdy("AdMediaPlayerView surface created");
        zzwr();
        zzaul.zzdsu.post(new zzayo(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzaug.zzdy("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.zzdxf;
        if (mediaPlayer != null && this.zzdxo == 0) {
            this.zzdxo = mediaPlayer.getCurrentPosition();
        }
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzxh();
        }
        zzaul.zzdsu.post(new zzayq(this));
        zzam(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        zzaug.zzdy("AdMediaPlayerView surface changed");
        boolean z = this.zzdxe == 3;
        boolean z2 = this.zzdxh == i2 && this.zzdxi == i3;
        if (this.zzdxf != null && z && z2) {
            int i4 = this.zzdxo;
            if (i4 != 0) {
                seekTo(i4);
            }
            play();
        }
        zzazh zzazhVar = this.zzdxm;
        if (zzazhVar != null) {
            zzazhVar.zzl(i2, i3);
        }
        zzaul.zzdsu.post(new zzayn(this, i2, i3));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzdxb.zzc(this);
        this.zzdxx.zza(surfaceTexture, this.zzdxp);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzaug.zzdy(sb.toString());
        this.zzdxh = mediaPlayer.getVideoWidth();
        this.zzdxi = mediaPlayer.getVideoHeight();
        if (this.zzdxh == 0 || this.zzdxi == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i2) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i2);
        zzaug.zzdy(sb.toString());
        zzaul.zzdsu.post(new Runnable(this, i2) { // from class: com.google.android.gms.internal.ads.zzayk
            private final int zzdtk;
            private final zzayh zzdxs;

            {
                this.zzdxs = this;
                this.zzdtk = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdxs.zzcr(this.zzdtk);
            }
        });
        super.onWindowVisibilityChanged(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void pause() {
        zzaug.zzdy("AdMediaPlayerView pause");
        if (zzwt() && this.zzdxf.isPlaying()) {
            this.zzdxf.pause();
            zzcq(4);
            zzaul.zzdsu.post(new zzays(this));
        }
        this.zzdxe = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void play() {
        zzaug.zzdy("AdMediaPlayerView play");
        if (zzwt()) {
            this.zzdxf.start();
            zzcq(3);
            this.zzdxx.zzww();
            zzaul.zzdsu.post(new zzayp(this));
        }
        this.zzdxe = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void seekTo(int i2) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i2);
        zzaug.zzdy(sb.toString());
        if (!zzwt()) {
            this.zzdxo = i2;
        } else {
            this.zzdxf.seekTo(i2);
            this.zzdxo = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void setVideoPath(String str) {
        Uri uri = Uri.parse(str);
        zzrp zzrpVarZze = zzrp.zze(uri);
        if (zzrpVarZze == null || zzrpVarZze.url != null) {
            if (zzrpVarZze != null) {
                uri = Uri.parse(zzrpVarZze.url);
            }
            this.zzdxg = uri;
            this.zzdxo = 0;
            zzwr();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void stop() {
        zzaug.zzdy("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.zzdxf;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzdxf.release();
            this.zzdxf = null;
            zzcq(0);
            this.zzdxe = 0;
        }
        this.zzdxb.onStop();
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzayh.class.getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
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

    final /* synthetic */ void zzcr(int i2) {
        zzayr zzayrVar = this.zzdxp;
        if (zzayrVar != null) {
            zzayrVar.onWindowVisibilityChanged(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final String zzwq() {
        String str = this.zzdxn ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzayu, com.google.android.gms.internal.ads.zzazn
    public final void zzwu() {
        zzd(this.zzdxy.getVolume());
    }
}
