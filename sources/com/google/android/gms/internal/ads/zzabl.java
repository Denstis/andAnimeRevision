package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzabl extends zzfm implements zzabi {
    public zzabl() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzabi zzm(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return iInterfaceQueryLocalInterface instanceof zzabi ? (zzabi) iInterfaceQueryLocalInterface : new zzabk(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        int width;
        if (i2 == 1) {
            IObjectWrapper iObjectWrapperZzqi = zzqi();
            parcel2.writeNoException();
            zzfp.zza(parcel2, iObjectWrapperZzqi);
        } else if (i2 == 2) {
            Uri uri = getUri();
            parcel2.writeNoException();
            zzfp.zzb(parcel2, uri);
        } else if (i2 != 3) {
            if (i2 == 4) {
                width = getWidth();
            } else {
                if (i2 != 5) {
                    return false;
                }
                width = getHeight();
            }
            parcel2.writeNoException();
            parcel2.writeInt(width);
        } else {
            double scale = getScale();
            parcel2.writeNoException();
            parcel2.writeDouble(scale);
        }
        return true;
    }
}
