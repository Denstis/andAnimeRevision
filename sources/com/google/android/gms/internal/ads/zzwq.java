package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzwq extends zzfm implements zzwr {
    public zzwq() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzwr zzi(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return iInterfaceQueryLocalInterface instanceof zzwr ? (zzwr) iInterfaceQueryLocalInterface : new zzwt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        boolean zIsMuted;
        float fZzox;
        zzws zzwuVar;
        switch (i2) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mute(zzfp.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                zIsMuted = isMuted();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsMuted);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                fZzox = zzox();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzox);
                return true;
            case 7:
                fZzox = zzoy();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzox);
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzwuVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    zzwuVar = iInterfaceQueryLocalInterface instanceof zzws ? (zzws) iInterfaceQueryLocalInterface : new zzwu(strongBinder);
                }
                zza(zzwuVar);
                parcel2.writeNoException();
                return true;
            case 9:
                fZzox = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(fZzox);
                return true;
            case 10:
                zIsMuted = isCustomControlsEnabled();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsMuted);
                return true;
            case 11:
                zzws zzwsVarZzoz = zzoz();
                parcel2.writeNoException();
                zzfp.zza(parcel2, zzwsVarZzoz);
                return true;
            case 12:
                zIsMuted = isClickToExpandEnabled();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsMuted);
                return true;
            case 13:
                stop();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
