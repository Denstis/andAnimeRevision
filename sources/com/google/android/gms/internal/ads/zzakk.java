package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzakk extends zzfm implements zzakl {
    public zzakk() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String headline;
        IInterface iInterfaceZzqq;
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
                iInterfaceZzqq = zzqq();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqq);
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
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 9:
                zzy(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                zzz(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                overrideImpressionRecording = getOverrideImpressionRecording();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, overrideImpressionRecording);
                return true;
            case 12:
                overrideImpressionRecording = getOverrideClickHandling();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, overrideImpressionRecording);
                return true;
            case 13:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, extras);
                return true;
            case 14:
                zzaa(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                iInterfaceZzqq = zzry();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqq);
                return true;
            case 16:
                iInterfaceZzqq = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqq);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                iInterfaceZzqq = zzqo();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqq);
                return true;
            case 20:
                iInterfaceZzqq = zzrz();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqq);
                return true;
            case 21:
                iInterfaceZzqq = zzqp();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzqq);
                return true;
            case 22:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
