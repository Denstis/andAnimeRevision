package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzabf extends NativeAd.AdChoicesInfo {
    private String zzazq;
    private final List<NativeAd.Image> zzcvs = new ArrayList();
    private final zzaba zzcwc;

    public zzabf(zzaba zzabaVar) {
        zzabi zzabkVar;
        IBinder iBinder;
        this.zzcwc = zzabaVar;
        try {
            this.zzazq = this.zzcwc.getText();
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
            this.zzazq = "";
        }
        try {
            for (zzabi zzabiVar : zzabaVar.zzqe()) {
                if (!(zzabiVar instanceof IBinder) || (iBinder = (IBinder) zzabiVar) == null) {
                    zzabkVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzabkVar = iInterfaceQueryLocalInterface instanceof zzabi ? (zzabi) iInterfaceQueryLocalInterface : new zzabk(iBinder);
                }
                if (zzabkVar != null) {
                    this.zzcvs.add(new zzabn(zzabkVar));
                }
            }
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzcvs;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzazq;
    }
}
