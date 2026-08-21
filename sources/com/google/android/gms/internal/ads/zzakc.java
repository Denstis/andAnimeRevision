package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzakc extends zzfm implements zzakd {
    public zzakc() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzakd zzab(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return iInterfaceQueryLocalInterface instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface : new zzakf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzake zzakhVar;
        switch (i2) {
            case 1:
                onAdClicked();
                break;
            case 2:
                onAdClosed();
                break;
            case 3:
                onAdFailedToLoad(parcel.readInt());
                break;
            case 4:
                onAdLeftApplication();
                break;
            case 5:
                onAdOpened();
                break;
            case 6:
                onAdLoaded();
                break;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzakhVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    zzakhVar = iInterfaceQueryLocalInterface instanceof zzake ? (zzake) iInterfaceQueryLocalInterface : new zzakh(strongBinder);
                }
                zza(zzakhVar);
                break;
            case 8:
                onAdImpression();
                break;
            case 9:
                onAppEvent(parcel.readString(), parcel.readString());
                break;
            case 10:
                zza(zzach.zzp(parcel.readStrongBinder()), parcel.readString());
                break;
            case 11:
                onVideoEnd();
                break;
            case 12:
                zzde(parcel.readString());
                break;
            case 13:
                zzrw();
                break;
            case 14:
                zzb((zzaqt) zzfp.zza(parcel, zzaqt.CREATOR));
                break;
            case 15:
                onVideoPause();
                break;
            case 16:
                zza(zzaqy.zzal(parcel.readStrongBinder()));
                break;
            case 17:
                zzcl(parcel.readInt());
                break;
            case 18:
                zzrx();
                break;
            case 19:
                zzb((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                break;
            case 20:
                onVideoPlay();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
