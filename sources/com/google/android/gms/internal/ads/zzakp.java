package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzakp extends zzfm implements zzakm {
    public zzakp() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    public static zzakm zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        return iInterfaceQueryLocalInterface instanceof zzakm ? (zzakm) iInterfaceQueryLocalInterface : new zzako(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String headline;
        IInterface iInterfaceZzqn;
        boolean overrideImpressionRecording;
        switch (i2) {
            case 2:
                headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                List images = getImages();
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
                iInterfaceZzqn = zzqo();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 13:
                iInterfaceZzqn = zzry();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 14:
                iInterfaceZzqn = zzrz();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 15:
                iInterfaceZzqn = zzqp();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqn);
                return true;
            case 16:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, extras);
                return true;
            case 17:
                overrideImpressionRecording = getOverrideImpressionRecording();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, overrideImpressionRecording);
                return true;
            case 18:
                overrideImpressionRecording = getOverrideClickHandling();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, overrideImpressionRecording);
                return true;
            case 19:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 20:
                zzy(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                zzaa(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                float mediaContentAspectRatio = getMediaContentAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(mediaContentAspectRatio);
                return true;
            default:
                return false;
        }
    }
}
