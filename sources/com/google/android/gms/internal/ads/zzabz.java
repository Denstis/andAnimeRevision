package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzabz extends zzfm implements zzabw {
    public zzabz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        IInterface iInterfaceZzqm;
        String headline;
        switch (i2) {
            case 2:
                iInterfaceZzqm = zzqm();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 3:
                headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 4:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 5:
                headline = getBody();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 6:
                iInterfaceZzqm = zzqn();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 7:
                headline = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 8:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                headline = getStore();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 10:
                headline = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 11:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, extras);
                return true;
            case 12:
                destroy();
                parcel2.writeNoException();
                return true;
            case 13:
                iInterfaceZzqm = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 14:
                performClick((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zRecordImpression = recordImpression((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zRecordImpression);
                return true;
            case 16:
                reportTouchEvent((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                iInterfaceZzqm = zzqo();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 18:
                iInterfaceZzqm = zzqp();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 19:
                headline = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            default:
                return false;
        }
    }
}
