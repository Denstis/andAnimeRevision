package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzabg extends zzfm implements zzabh {
    public zzabg() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 2) {
            float aspectRatio = getAspectRatio();
            parcel2.writeNoException();
            parcel2.writeFloat(aspectRatio);
            return true;
        }
        if (i2 == 3) {
            zzt(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
        if (i2 != 4) {
            return false;
        }
        IObjectWrapper iObjectWrapperZzql = zzql();
        parcel2.writeNoException();
        zzfp.zza(parcel2, iObjectWrapperZzql);
        return true;
    }
}
