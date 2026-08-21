package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzwv extends zzfm implements zzws {
    public zzwv() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onVideoStart();
        } else if (i2 == 2) {
            onVideoPlay();
        } else if (i2 == 3) {
            onVideoPause();
        } else if (i2 == 4) {
            onVideoEnd();
        } else {
            if (i2 != 5) {
                return false;
            }
            onVideoMute(zzfp.zza(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
