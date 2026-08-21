package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzadj extends zzfm implements zzadg {
    public zzadj() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String headline;
        List images;
        IInterface iInterfaceZzqn;
        boolean zRecordImpression;
        zzadf zzadhVar;
        switch (i2) {
            case 2:
                headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 4:
                headline = getBody();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 5:
                iInterfaceZzqn = zzqn();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 6:
                headline = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 7:
                headline = getAdvertiser();
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
                iInterfaceZzqn = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 12:
                headline = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 13:
                destroy();
                parcel2.writeNoException();
                return true;
            case 14:
                iInterfaceZzqn = zzqo();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 15:
                performClick((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                zRecordImpression = recordImpression((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zRecordImpression);
                return true;
            case 17:
                reportTouchEvent((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                iInterfaceZzqn = zzqm();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 19:
                iInterfaceZzqn = zzqp();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 20:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, extras);
                return true;
            case 21:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzadhVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    zzadhVar = iInterfaceQueryLocalInterface instanceof zzadf ? (zzadf) iInterfaceQueryLocalInterface : new zzadh(strongBinder);
                }
                zza(zzadhVar);
                parcel2.writeNoException();
                return true;
            case 22:
                cancelUnconfirmedClick();
                parcel2.writeNoException();
                return true;
            case 23:
                images = getMuteThisAdReasons();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 24:
                zRecordImpression = isCustomMuteThisAdEnabled();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zRecordImpression);
                return true;
            case 25:
                zza(zzwl.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                zza(zzwh.zzf(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                zzqw();
                parcel2.writeNoException();
                return true;
            case 28:
                recordCustomClickGesture();
                parcel2.writeNoException();
                return true;
            case 29:
                iInterfaceZzqn = zzqx();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 30:
                zRecordImpression = isCustomClickGestureEnabled();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zRecordImpression);
                return true;
            default:
                return false;
        }
    }
}
