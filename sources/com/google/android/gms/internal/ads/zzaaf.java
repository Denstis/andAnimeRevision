package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaaf extends zzfm implements zzaac {
    public zzaaf() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String strZzqb;
        if (i2 == 1) {
            strZzqb = zzqb();
        } else {
            if (i2 != 2) {
                if (i2 == 3) {
                    zzs(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                } else if (i2 == 4) {
                    recordClick();
                } else {
                    if (i2 != 5) {
                        return false;
                    }
                    recordImpression();
                }
                parcel2.writeNoException();
                return true;
            }
            strZzqb = getContent();
        }
        parcel2.writeNoException();
        parcel2.writeString(strZzqb);
        return true;
    }
}
