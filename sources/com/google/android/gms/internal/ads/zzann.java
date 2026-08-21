package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzann extends zzfm implements zzano {
    public zzann() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static zzano zzae(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return iInterfaceQueryLocalInterface instanceof zzano ? (zzano) iInterfaceQueryLocalInterface : new zzanq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                onCreate((Bundle) zzfp.zza(parcel, Bundle.CREATOR));
                break;
            case 2:
                onRestart();
                break;
            case 3:
                onStart();
                break;
            case 4:
                onResume();
                break;
            case 5:
                onPause();
                break;
            case 6:
                Bundle bundle = (Bundle) zzfp.zza(parcel, Bundle.CREATOR);
                onSaveInstanceState(bundle);
                parcel2.writeNoException();
                zzfp.zzb(parcel2, bundle);
                return true;
            case 7:
                onStop();
                break;
            case 8:
                onDestroy();
                break;
            case 9:
                zzda();
                break;
            case 10:
                onBackPressed();
                break;
            case 11:
                boolean zZzsp = zzsp();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zZzsp);
                return true;
            case 12:
                onActivityResult(parcel.readInt(), parcel.readInt(), (Intent) zzfp.zza(parcel, Intent.CREATOR));
                break;
            case 13:
                zzag(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
