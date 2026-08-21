package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzacd extends zzfm implements zzaca {
    public zzacd() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
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
                iInterfaceZzqm = zzqq();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 7:
                headline = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 8:
                headline = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 9:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, extras);
                return true;
            case 10:
                destroy();
                parcel2.writeNoException();
                return true;
            case 11:
                iInterfaceZzqm = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 12:
                performClick((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zRecordImpression = recordImpression((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zRecordImpression);
                return true;
            case 14:
                reportTouchEvent((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                iInterfaceZzqm = zzqo();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 16:
                iInterfaceZzqm = zzqp();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqm);
                return true;
            case 17:
                headline = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            default:
                return false;
        }
    }
}
