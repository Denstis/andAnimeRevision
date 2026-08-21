package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbvm implements View.OnClickListener {
    private final Clock zzbmp;
    private final zzbyh zzfnd;
    private zzadf zzfne;
    private zzaer<Object> zzfnf;
    String zzfng;
    Long zzfnh;
    WeakReference<View> zzfni;

    public zzbvm(zzbyh zzbyhVar, Clock clock) {
        this.zzfnd = zzbyhVar;
        this.zzbmp = clock;
    }

    private final void zzaix() {
        View view;
        this.zzfng = null;
        this.zzfnh = null;
        WeakReference<View> weakReference = this.zzfni;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.zzfni = null;
    }

    public final void cancelUnconfirmedClick() {
        if (this.zzfne == null || this.zzfnh == null) {
            return;
        }
        zzaix();
        try {
            this.zzfne.onUnconfirmedClickCancelled();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.zzfni;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.zzfng != null && this.zzfnh != null) {
            HashMap map = new HashMap();
            map.put(TtmlNode.ATTR_ID, this.zzfng);
            map.put("time_interval", String.valueOf(this.zzbmp.currentTimeMillis() - this.zzfnh.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.zzfnd.zza("sendMessageToNativeJs", map);
        }
        zzaix();
    }

    public final void zza(final zzadf zzadfVar) {
        this.zzfne = zzadfVar;
        zzaer<Object> zzaerVar = this.zzfnf;
        if (zzaerVar != null) {
            this.zzfnd.zzb("/unconfirmedClick", zzaerVar);
        }
        this.zzfnf = new zzaer(this, zzadfVar) { // from class: com.google.android.gms.internal.ads.zzbvp
            private final zzbvm zzfnj;
            private final zzadf zzfnk;

            {
                this.zzfnj = this;
                this.zzfnk = zzadfVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaer
            public final void zza(Object obj, Map map) {
                zzbvm zzbvmVar = this.zzfnj;
                zzadf zzadfVar2 = this.zzfnk;
                try {
                    zzbvmVar.zzfnh = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    zzaxi.zzes("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzbvmVar.zzfng = (String) map.get(TtmlNode.ATTR_ID);
                String str = (String) map.get("asset_id");
                if (zzadfVar2 == null) {
                    zzaxi.zzdv("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzadfVar2.onUnconfirmedClickReceived(str);
                } catch (RemoteException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
        };
        this.zzfnd.zza("/unconfirmedClick", this.zzfnf);
    }

    public final zzadf zzaiw() {
        return this.zzfne;
    }
}
