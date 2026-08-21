package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbco extends zzwq {
    private boolean zzabq;
    private boolean zzabr;
    private int zzacz;
    private zzws zzddr;
    private final zzazj zzdya;
    private final boolean zzehl;
    private final boolean zzehm;
    private boolean zzehn;
    private float zzehp;
    private float zzehq;
    private float zzehr;
    private final Object lock = new Object();
    private boolean zzeho = true;

    public zzbco(zzazj zzazjVar, float f2, boolean z, boolean z2) {
        this.zzdya = zzazjVar;
        this.zzehp = f2;
        this.zzehl = z;
        this.zzehm = z2;
    }

    private final void zza(final int i2, final int i3, final boolean z, final boolean z2) {
        zzaxn.zzdwm.execute(new Runnable(this, i2, i3, z, z2) { // from class: com.google.android.gms.internal.ads.zzbcq
            private final int zzdtk;
            private final int zzdtl;
            private final boolean zzefh;
            private final boolean zzefi;
            private final zzbco zzehk;

            {
                this.zzehk = this;
                this.zzdtk = i2;
                this.zzdtl = i3;
                this.zzefh = z;
                this.zzefi = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzehk.zzb(this.zzdtk, this.zzdtl, this.zzefh, this.zzefi);
            }
        });
    }

    private final void zzf(String str, Map<String, String> map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        zzaxn.zzdwm.execute(new Runnable(this, map2) { // from class: com.google.android.gms.internal.ads.zzbcn
            private final Map zzdwd;
            private final zzbco zzehk;

            {
                this.zzehk = this;
                this.zzdwd = map2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzehk.zzj(this.zzdwd);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final float getAspectRatio() {
        float f2;
        synchronized (this.lock) {
            f2 = this.zzehr;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final int getPlaybackState() {
        int i2;
        synchronized (this.lock) {
            i2 = this.zzacz;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    @Override // com.google.android.gms.internal.ads.zzwr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isClickToExpandEnabled() {
        /*
            r2 = this;
            boolean r0 = r2.isCustomControlsEnabled()
            java.lang.Object r1 = r2.lock
            monitor-enter(r1)
            if (r0 != 0) goto L15
            boolean r0 = r2.zzabr     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            boolean r0 = r2.zzehm     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            r0 = 1
            goto L16
        L13:
            r0 = move-exception
            goto L18
        L15:
            r0 = 0
        L16:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            return r0
        L18:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbco.isClickToExpandEnabled():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzehl && this.zzabq;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final boolean isMuted() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzeho;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void mute(boolean z) {
        zzf(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void pause() {
        zzf("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void play() {
        zzf("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void stop() {
        zzf("stop", null);
    }

    public final void zza(float f2, float f3, int i2, boolean z, float f4) {
        boolean z2;
        int i3;
        synchronized (this.lock) {
            this.zzehp = f3;
            this.zzehq = f2;
            z2 = this.zzeho;
            this.zzeho = z;
            i3 = this.zzacz;
            this.zzacz = i2;
            float f5 = this.zzehr;
            this.zzehr = f4;
            if (Math.abs(this.zzehr - f5) > 1.0E-4f) {
                this.zzdya.getView().invalidate();
            }
        }
        zza(i3, i2, z2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void zza(zzws zzwsVar) {
        synchronized (this.lock) {
            this.zzddr = zzwsVar;
        }
    }

    public final void zzaap() {
        boolean z;
        int i2;
        synchronized (this.lock) {
            z = this.zzeho;
            i2 = this.zzacz;
            this.zzacz = 3;
        }
        zza(i2, 3, z, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x005e A[Catch: RemoteException -> 0x0044, all -> 0x007f, TryCatch #0 {RemoteException -> 0x0044, blocks: (B:36:0x003a, B:38:0x003e, B:42:0x0048, B:44:0x004c, B:46:0x0053, B:48:0x0057, B:50:0x005e, B:52:0x0062, B:53:0x0067, B:55:0x006e, B:57:0x0072), top: B:65:0x003a, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x007d A[Catch: all -> 0x007f, DONT_GENERATE, TryCatch #1 {, blocks: (B:8:0x000a, B:30:0x002f, B:34:0x0036, B:36:0x003a, B:38:0x003e, B:42:0x0048, B:44:0x004c, B:46:0x0053, B:48:0x0057, B:50:0x005e, B:52:0x0062, B:53:0x0067, B:55:0x006e, B:57:0x0072, B:60:0x007d, B:59:0x0078), top: B:67:0x000a, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void zzb(int r7, int r8, boolean r9, boolean r10) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.lock
            monitor-enter(r0)
            r1 = 0
            r2 = 1
            if (r7 == r8) goto L9
            r7 = 1
            goto La
        L9:
            r7 = 0
        La:
            boolean r3 = r6.zzehn     // Catch: java.lang.Throwable -> L7f
            if (r3 != 0) goto L12
            if (r8 != r2) goto L12
            r3 = 1
            goto L13
        L12:
            r3 = 0
        L13:
            if (r7 == 0) goto L19
            if (r8 != r2) goto L19
            r4 = 1
            goto L1a
        L19:
            r4 = 0
        L1a:
            if (r7 == 0) goto L21
            r5 = 2
            if (r8 != r5) goto L21
            r5 = 1
            goto L22
        L21:
            r5 = 0
        L22:
            if (r7 == 0) goto L29
            r7 = 3
            if (r8 != r7) goto L29
            r7 = 1
            goto L2a
        L29:
            r7 = 0
        L2a:
            if (r9 == r10) goto L2e
            r8 = 1
            goto L2f
        L2e:
            r8 = 0
        L2f:
            boolean r9 = r6.zzehn     // Catch: java.lang.Throwable -> L7f
            if (r9 != 0) goto L35
            if (r3 == 0) goto L36
        L35:
            r1 = 1
        L36:
            r6.zzehn = r1     // Catch: java.lang.Throwable -> L7f
            if (r3 == 0) goto L46
            com.google.android.gms.internal.ads.zzws r9 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r9 == 0) goto L46
            com.google.android.gms.internal.ads.zzws r9 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r9.onVideoStart()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            goto L46
        L44:
            r7 = move-exception
            goto L78
        L46:
            if (r4 == 0) goto L51
            com.google.android.gms.internal.ads.zzws r9 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r9 == 0) goto L51
            com.google.android.gms.internal.ads.zzws r9 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r9.onVideoPlay()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L51:
            if (r5 == 0) goto L5c
            com.google.android.gms.internal.ads.zzws r9 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r9 == 0) goto L5c
            com.google.android.gms.internal.ads.zzws r9 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r9.onVideoPause()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L5c:
            if (r7 == 0) goto L6c
            com.google.android.gms.internal.ads.zzws r7 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r7 == 0) goto L67
            com.google.android.gms.internal.ads.zzws r7 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r7.onVideoEnd()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L67:
            com.google.android.gms.internal.ads.zzazj r7 = r6.zzdya     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r7.zzxu()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L6c:
            if (r8 == 0) goto L7d
            com.google.android.gms.internal.ads.zzws r7 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r7 == 0) goto L7d
            com.google.android.gms.internal.ads.zzws r7 = r6.zzddr     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r7.onVideoMute(r10)     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            goto L7d
        L78:
            java.lang.String r8 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzaxi.zze(r8, r7)     // Catch: java.lang.Throwable -> L7f
        L7d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            return
        L7f:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbco.zzb(int, int, boolean, boolean):void");
    }

    public final void zzb(zzyj zzyjVar) {
        boolean z = zzyjVar.zzabp;
        boolean z2 = zzyjVar.zzabq;
        boolean z3 = zzyjVar.zzabr;
        synchronized (this.lock) {
            this.zzabq = z2;
            this.zzabr = z3;
        }
        zzf("initialState", CollectionUtils.mapOf("muteStart", z ? "1" : "0", "customControlsRequested", z2 ? "1" : "0", "clickToExpandRequested", z3 ? "1" : "0"));
    }

    public final void zze(float f2) {
        synchronized (this.lock) {
            this.zzehq = f2;
        }
    }

    final /* synthetic */ void zzj(Map map) {
        this.zzdya.zza("pubVideoCmd", (Map<String, ?>) map);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final float zzox() {
        float f2;
        synchronized (this.lock) {
            f2 = this.zzehp;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final float zzoy() {
        float f2;
        synchronized (this.lock) {
            f2 = this.zzehq;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final zzws zzoz() {
        zzws zzwsVar;
        synchronized (this.lock) {
            zzwsVar = this.zzddr;
        }
        return zzwsVar;
    }
}
