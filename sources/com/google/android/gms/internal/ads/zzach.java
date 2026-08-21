package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzach extends zzfm implements zzace {
    public zzach() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzace zzp(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return iInterfaceQueryLocalInterface instanceof zzace ? (zzace) iInterfaceQueryLocalInterface : new zzacg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        String strZzco;
        IInterface iInterfaceZzcp;
        boolean zZzu;
        switch (i2) {
            case 1:
                strZzco = zzco(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strZzco);
                return true;
            case 2:
                iInterfaceZzcp = zzcp(parcel.readString());
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzcp);
                return true;
            case 3:
                List<String> availableAssetNames = getAvailableAssetNames();
                parcel2.writeNoException();
                parcel2.writeStringList(availableAssetNames);
                return true;
            case 4:
                strZzco = getCustomTemplateId();
                parcel2.writeNoException();
                parcel2.writeString(strZzco);
                return true;
            case 5:
                performClick(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 7:
                iInterfaceZzcp = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzcp);
                return true;
            case 8:
                destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                iInterfaceZzcp = zzqr();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzcp);
                return true;
            case 10:
                zZzu = zzu(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zZzu);
                return true;
            case 11:
                iInterfaceZzcp = zzqm();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzcp);
                return true;
            case 12:
                zZzu = zzqs();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zZzu);
                return true;
            case 13:
                zZzu = zzqt();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zZzu);
                return true;
            case 14:
                zzv(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzqu();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
