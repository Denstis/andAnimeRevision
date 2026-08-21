package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzayw extends FrameLayout implements zzayr {
    private final zzazj zzdya;
    private final FrameLayout zzdyb;
    private final zzaab zzdyc;
    private final zzazl zzdyd;
    private final long zzdye;
    private zzayu zzdyf;
    private boolean zzdyg;
    private boolean zzdyh;
    private boolean zzdyi;
    private boolean zzdyj;
    private long zzdyk;
    private long zzdyl;
    private String zzdym;
    private String[] zzdyn;
    private Bitmap zzdyo;
    private ImageView zzdyp;
    private boolean zzdyq;

    public zzayw(Context context, zzazj zzazjVar, int i2, boolean z, zzaab zzaabVar, zzazk zzazkVar) {
        super(context);
        this.zzdya = zzazjVar;
        this.zzdyc = zzaabVar;
        this.zzdyb = new FrameLayout(context);
        addView(this.zzdyb, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzazjVar.zzxo());
        this.zzdyf = zzazjVar.zzxo().zzbko.zza(context, zzazjVar, i2, z, zzaabVar, zzazkVar);
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar != null) {
            this.zzdyb.addView(zzayuVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzuv.zzon().zzd(zzza.zzchp)).booleanValue()) {
                zzxc();
            }
        }
        this.zzdyp = new ImageView(context);
        this.zzdye = ((Long) zzuv.zzon().zzd(zzza.zzcht)).longValue();
        this.zzdyj = ((Boolean) zzuv.zzon().zzd(zzza.zzchr)).booleanValue();
        zzaab zzaabVar2 = this.zzdyc;
        if (zzaabVar2 != null) {
            zzaabVar2.zzj("spinner_used", this.zzdyj ? "1" : "0");
        }
        this.zzdyd = new zzazl(this);
        zzayu zzayuVar2 = this.zzdyf;
        if (zzayuVar2 != null) {
            zzayuVar2.zza(this);
        }
        if (this.zzdyf == null) {
            zzn("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void zza(zzazj zzazjVar, String str) {
        HashMap map = new HashMap();
        map.put("event", "decoderProps");
        map.put("error", str);
        zzazjVar.zza("onVideoEvent", map);
    }

    public static void zza(zzazj zzazjVar, Map<String, List<Map<String, Object>>> map) {
        HashMap map2 = new HashMap();
        map2.put("event", "decoderProps");
        map2.put("mimeTypes", map);
        zzazjVar.zza("onVideoEvent", map2);
    }

    public static void zzb(zzazj zzazjVar) {
        HashMap map = new HashMap();
        map.put("event", "no_video_view");
        zzazjVar.zza("onVideoEvent", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(String str, String... strArr) {
        HashMap map = new HashMap();
        map.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.zzdya.zza("onVideoEvent", map);
    }

    private final boolean zzxe() {
        return this.zzdyp.getParent() != null;
    }

    private final void zzxf() {
        if (this.zzdya.zzxn() == null || !this.zzdyh || this.zzdyi) {
            return;
        }
        this.zzdya.zzxn().getWindow().clearFlags(128);
        this.zzdyh = false;
    }

    public final void destroy() {
        this.zzdyd.pause();
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar != null) {
            zzayuVar.stop();
        }
        zzxf();
    }

    public final void finalize() throws Throwable {
        try {
            this.zzdyd.pause();
            if (this.zzdyf != null) {
                zzayu zzayuVar = this.zzdyf;
                zzddl zzddlVar = zzaxn.zzdwm;
                zzayuVar.getClass();
                zzddlVar.execute(zzayv.zza(zzayuVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void onPaused() {
        zzd("pause", new String[0]);
        zzxf();
        this.zzdyg = false;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        zzazl zzazlVar = this.zzdyd;
        if (z) {
            zzazlVar.resume();
        } else {
            zzazlVar.pause();
            this.zzdyl = this.zzdyk;
        }
        zzaul.zzdsu.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zzayy
            private final zzayw zzdys;
            private final boolean zzdyt;

            {
                this.zzdys = this;
                this.zzdyt = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdys.zzan(this.zzdyt);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzayr
    public final void onWindowVisibilityChanged(int i2) {
        boolean z;
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            this.zzdyd.resume();
            z = true;
        } else {
            this.zzdyd.pause();
            this.zzdyl = this.zzdyk;
            z = false;
        }
        zzaul.zzdsu.post(new zzayz(this, z));
    }

    public final void pause() {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.pause();
    }

    public final void play() {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.play();
    }

    public final void seekTo(int i2) {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.seekTo(i2);
    }

    public final void setVolume(float f2) {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.zzdxy.setVolume(f2);
        zzayuVar.zzwu();
    }

    public final void zza(float f2, float f3) {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar != null) {
            zzayuVar.zza(f2, f3);
        }
    }

    final /* synthetic */ void zzan(boolean z) {
        zzd("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void zzc(String str, String[] strArr) {
        this.zzdym = str;
        this.zzdyn = strArr;
    }

    public final void zzcs(int i2) {
        this.zzdyf.zzcs(i2);
    }

    public final void zzct(int i2) {
        this.zzdyf.zzct(i2);
    }

    public final void zzcu(int i2) {
        this.zzdyf.zzcu(i2);
    }

    public final void zzcv(int i2) {
        this.zzdyf.zzcv(i2);
    }

    public final void zzcw(int i2) {
        this.zzdyf.zzcw(i2);
    }

    public final void zzd(int i2, int i3, int i4, int i5) {
        if (i4 == 0 || i5 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i5);
        layoutParams.setMargins(i2, i3, 0, 0);
        this.zzdyb.setLayoutParams(layoutParams);
        requestLayout();
    }

    @TargetApi(14)
    public final void zze(MotionEvent motionEvent) {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzel() {
        if (this.zzdyf != null && this.zzdyl == 0) {
            zzd("canplaythrough", "duration", String.valueOf(r0.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.zzdyf.getVideoWidth()), "videoHeight", String.valueOf(this.zzdyf.getVideoHeight()));
        }
    }

    public final void zzhk() {
        if (this.zzdyf == null) {
            return;
        }
        if (TextUtils.isEmpty(this.zzdym)) {
            zzd("no_src", new String[0]);
        } else {
            this.zzdyf.zzb(this.zzdym, this.zzdyn);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzj(int i2, int i3) {
        if (this.zzdyj) {
            int iMax = Math.max(i2 / ((Integer) zzuv.zzon().zzd(zzza.zzchs)).intValue(), 1);
            int iMax2 = Math.max(i3 / ((Integer) zzuv.zzon().zzd(zzza.zzchs)).intValue(), 1);
            Bitmap bitmap = this.zzdyo;
            if (bitmap != null && bitmap.getWidth() == iMax && this.zzdyo.getHeight() == iMax2) {
                return;
            }
            this.zzdyo = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.zzdyq = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzn(String str, String str2) {
        zzd("error", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzwv() {
        this.zzdyd.resume();
        zzaul.zzdsu.post(new zzayx(this));
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzww() {
        if (this.zzdya.zzxn() != null && !this.zzdyh) {
            this.zzdyi = (this.zzdya.zzxn().getWindow().getAttributes().flags & 128) != 0;
            if (!this.zzdyi) {
                this.zzdya.zzxn().getWindow().addFlags(128);
                this.zzdyh = true;
            }
        }
        this.zzdyg = true;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzwx() {
        zzd("ended", new String[0]);
        zzxf();
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzwy() {
        if (this.zzdyq && this.zzdyo != null && !zzxe()) {
            this.zzdyp.setImageBitmap(this.zzdyo);
            this.zzdyp.invalidate();
            this.zzdyb.addView(this.zzdyp, new FrameLayout.LayoutParams(-1, -1));
            this.zzdyb.bringChildToFront(this.zzdyp);
        }
        this.zzdyd.pause();
        this.zzdyl = this.zzdyk;
        zzaul.zzdsu.post(new zzaza(this));
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    public final void zzwz() {
        if (this.zzdyg && zzxe()) {
            this.zzdyb.removeView(this.zzdyp);
        }
        if (this.zzdyo != null) {
            long jElapsedRealtime = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime();
            if (this.zzdyf.getBitmap(this.zzdyo) != null) {
                this.zzdyq = true;
            }
            long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - jElapsedRealtime;
            if (zzaug.zzuu()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(jElapsedRealtime2);
                sb.append("ms");
                zzaug.zzdy(sb.toString());
            }
            if (jElapsedRealtime2 > this.zzdye) {
                zzaxi.zzeu("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzdyj = false;
                this.zzdyo = null;
                zzaab zzaabVar = this.zzdyc;
                if (zzaabVar != null) {
                    zzaabVar.zzj("spinner_jank", Long.toString(jElapsedRealtime2));
                }
            }
        }
    }

    public final void zzxa() {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.zzdxy.setMuted(true);
        zzayuVar.zzwu();
    }

    public final void zzxb() {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        zzayuVar.zzdxy.setMuted(false);
        zzayuVar.zzwu();
    }

    @TargetApi(14)
    public final void zzxc() {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        TextView textView = new TextView(zzayuVar.getContext());
        String strValueOf = String.valueOf(this.zzdyf.zzwq());
        textView.setText(strValueOf.length() != 0 ? "AdMob - ".concat(strValueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.zzdyb.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzdyb.bringChildToFront(textView);
    }

    final void zzxd() {
        zzayu zzayuVar = this.zzdyf;
        if (zzayuVar == null) {
            return;
        }
        long currentPosition = zzayuVar.getCurrentPosition();
        if (this.zzdyk == currentPosition || currentPosition <= 0) {
            return;
        }
        zzd("timeupdate", "time", String.valueOf(currentPosition / 1000.0f));
        this.zzdyk = currentPosition;
    }
}
