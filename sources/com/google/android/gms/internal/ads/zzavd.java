package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzavd {
    private Handler handler;
    private int state;
    private String zzblz;
    private String zzbqy;
    private String zzdie;
    private String zzdlk;
    private int zzdtf;
    private PointF zzdtg;
    private PointF zzdth;
    private Runnable zzdti;
    private final Context zzlk;

    public zzavd(Context context) {
        this.state = 0;
        this.zzdti = new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzavg
            private final zzavd zzdtj;

            {
                this.zzdtj = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdtj.zzvx();
            }
        };
        this.zzlk = context;
        this.zzdtf = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzq.zzkx().zzwd();
        this.handler = com.google.android.gms.ads.internal.zzq.zzkx().getHandler();
    }

    public zzavd(Context context, String str) {
        this(context);
        this.zzdie = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    private final boolean zza(float f2, float f3, float f4, float f5) {
        return Math.abs(this.zzdtg.x - f2) < ((float) this.zzdtf) && Math.abs(this.zzdtg.y - f3) < ((float) this.zzdtf) && Math.abs(this.zzdth.x - f4) < ((float) this.zzdtf) && Math.abs(this.zzdth.y - f5) < ((float) this.zzdtf);
    }

    public final void setAdUnitId(String str) {
        this.zzbqy = str;
    }

    public final void showDialog() {
        try {
            if (!(this.zzlk instanceof Activity)) {
                zzaxi.zzet("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzq.zzkt().zzvz()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = com.google.android.gms.ads.internal.zzq.zzkt().zzwa() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            final int iZza = zza((List<String>) arrayList, "Ad Information", true);
            final int iZza2 = zza((List<String>) arrayList, str, true);
            final int iZza3 = zza((List<String>) arrayList, str2, true);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zzlk, com.google.android.gms.ads.internal.zzq.zzkl().zzvt());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, iZza, iZza2, iZza3) { // from class: com.google.android.gms.internal.ads.zzavf
                private final zzavd zzdtj;
                private final int zzdtk;
                private final int zzdtl;
                private final int zzdtm;

                {
                    this.zzdtj = this;
                    this.zzdtk = iZza;
                    this.zzdtl = iZza2;
                    this.zzdtm = iZza3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.zzdtj.zza(this.zzdtk, this.zzdtl, this.zzdtm, dialogInterface, i2);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e2) {
            zzaug.zza("", e2);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.zzdie);
        sb.append(",DebugSignal: ");
        sb.append(this.zzdlk);
        sb.append(",AFMA Version: ");
        sb.append(this.zzblz);
        sb.append(",Ad Unit ID: ");
        sb.append(this.zzbqy);
        sb.append("}");
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void zza(int r1, int r2, int r3, android.content.DialogInterface r4, int r5) {
        /*
            r0 = this;
            if (r5 != r1) goto L9b
            android.content.Context r1 = r0.zzlk
            boolean r1 = r1 instanceof android.app.Activity
            if (r1 != 0) goto Le
            java.lang.String r1 = "Can not create dialog without Activity Context"
            com.google.android.gms.internal.ads.zzaxi.zzet(r1)
            return
        Le:
            java.lang.String r1 = r0.zzdie
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L71
            java.lang.String r2 = "\\+"
            java.lang.String r3 = "%20"
            java.lang.String r1 = r1.replaceAll(r2, r3)
            android.net.Uri$Builder r2 = new android.net.Uri$Builder
            r2.<init>()
            android.net.Uri$Builder r1 = r2.encodedQuery(r1)
            android.net.Uri r1 = r1.build()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.google.android.gms.ads.internal.zzq.zzkj()
            java.util.Map r1 = com.google.android.gms.internal.ads.zzaul.zzi(r1)
            java.util.Set r3 = r1.keySet()
            java.util.Iterator r3 = r3.iterator()
        L3f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L62
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            r2.append(r4)
            java.lang.String r5 = " = "
            r2.append(r5)
            java.lang.Object r4 = r1.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            r2.append(r4)
            java.lang.String r4 = "\n\n"
            r2.append(r4)
            goto L3f
        L62:
            java.lang.String r1 = r2.toString()
            java.lang.String r1 = r1.trim()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L71
            goto L73
        L71:
            java.lang.String r1 = "No debug information"
        L73:
            android.app.AlertDialog$Builder r2 = new android.app.AlertDialog$Builder
            android.content.Context r3 = r0.zzlk
            r2.<init>(r3)
            r2.setMessage(r1)
            java.lang.String r3 = "Ad Information"
            r2.setTitle(r3)
            com.google.android.gms.internal.ads.zzavi r3 = new com.google.android.gms.internal.ads.zzavi
            r3.<init>(r0, r1)
            java.lang.String r1 = "Share"
            r2.setPositiveButton(r1, r3)
            android.content.DialogInterface$OnClickListener r1 = com.google.android.gms.internal.ads.zzavh.zzdtn
            java.lang.String r3 = "Close"
            r2.setNegativeButton(r3, r1)
            android.app.AlertDialog r1 = r2.create()
            r1.show()
            return
        L9b:
            if (r5 != r2) goto Lad
            java.lang.String r1 = "Debug mode [Creative Preview] selected."
            com.google.android.gms.internal.ads.zzaxi.zzdv(r1)
            com.google.android.gms.internal.ads.zzddl r1 = com.google.android.gms.internal.ads.zzaxn.zzdwi
            com.google.android.gms.internal.ads.zzavk r2 = new com.google.android.gms.internal.ads.zzavk
            r2.<init>(r0)
            r1.execute(r2)
            return
        Lad:
            if (r5 != r3) goto Lbe
            java.lang.String r1 = "Debug mode [Troubleshooting] selected."
            com.google.android.gms.internal.ads.zzaxi.zzdv(r1)
            com.google.android.gms.internal.ads.zzddl r1 = com.google.android.gms.internal.ads.zzaxn.zzdwi
            com.google.android.gms.internal.ads.zzavj r2 = new com.google.android.gms.internal.ads.zzavj
            r2.<init>(r0)
            r1.execute(r2)
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavd.zza(int, int, int, android.content.DialogInterface, int):void");
    }

    final /* synthetic */ void zza(String str, DialogInterface dialogInterface, int i2) {
        com.google.android.gms.ads.internal.zzq.zzkj();
        zzaul.zza(this.zzlk, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    public final void zzd(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.state = 0;
            this.zzdtg = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i2 = this.state;
        if (i2 == -1) {
            return;
        }
        boolean z = true;
        if (i2 == 0 && actionMasked == 5) {
            this.state = 5;
            this.zzdth = new PointF(motionEvent.getX(1), motionEvent.getY(1));
            this.handler.postDelayed(this.zzdti, ((Long) zzuv.zzon().zzd(zzza.zzcqa)).longValue());
            return;
        }
        if (this.state == 5) {
            if (pointerCount == 2) {
                if (actionMasked == 2) {
                    boolean z2 = false;
                    for (int i3 = 0; i3 < historySize; i3++) {
                        if (!zza(motionEvent.getHistoricalX(0, i3), motionEvent.getHistoricalY(0, i3), motionEvent.getHistoricalX(1, i3), motionEvent.getHistoricalY(1, i3))) {
                            z2 = true;
                        }
                    }
                    if (zza(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1))) {
                        z = z2;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                this.state = -1;
                this.handler.removeCallbacks(this.zzdti);
            }
        }
    }

    public final void zzej(String str) {
        this.zzdie = str;
    }

    public final void zzek(String str) {
        this.zzdlk = str;
    }

    public final void zzr(String str) {
        this.zzblz = str;
    }

    final /* synthetic */ void zzvv() {
        com.google.android.gms.ads.internal.zzq.zzkt().zza(this.zzlk, this.zzbqy, this.zzblz, this.zzdlk);
    }

    final /* synthetic */ void zzvw() {
        com.google.android.gms.ads.internal.zzq.zzkt().zze(this.zzlk, this.zzbqy, this.zzblz);
    }

    final /* synthetic */ void zzvx() {
        this.state = 4;
        showDialog();
    }
}
