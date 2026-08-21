package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzakb extends zzfm implements zzajy {
    public zzakb() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        IInterface iInterfaceZzro;
        boolean zIsInitialized;
        Bundle bundleZzrr;
        zzakd zzakfVar = null;
        switch (i2) {
            case 1:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzua zzuaVar = (zzua) zzfp.zza(parcel, zzua.CREATOR);
                zztx zztxVar = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzakfVar = iInterfaceQueryLocalInterface instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface : new zzakf(strongBinder);
                }
                zza(iObjectWrapperAsInterface, zzuaVar, zztxVar, string, zzakfVar);
                parcel2.writeNoException();
                return true;
            case 2:
                iInterfaceZzro = zzro();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzro);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztx zztxVar2 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                String string2 = parcel.readString();
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzakfVar = iInterfaceQueryLocalInterface2 instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface2 : new zzakf(strongBinder2);
                }
                zza(iObjectWrapperAsInterface2, zztxVar2, string2, zzakfVar);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzua zzuaVar2 = (zzua) zzfp.zza(parcel, zzua.CREATOR);
                zztx zztxVar3 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzakfVar = iInterfaceQueryLocalInterface3 instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface3 : new zzakf(strongBinder3);
                }
                zza(iObjectWrapperAsInterface3, zzuaVar2, zztxVar3, string3, string4, zzakfVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztx zztxVar4 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzakfVar = iInterfaceQueryLocalInterface4 instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface4 : new zzakf(strongBinder4);
                }
                zza(iObjectWrapperAsInterface4, zztxVar4, string5, string6, zzakfVar);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zztx) zzfp.zza(parcel, zztx.CREATOR), parcel.readString(), zzaqs.zzak(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza((zztx) zzfp.zza(parcel, zztx.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                zIsInitialized = isInitialized();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsInitialized);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztx zztxVar5 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzakfVar = iInterfaceQueryLocalInterface5 instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface5 : new zzakf(strongBinder5);
                }
                zza(iObjectWrapperAsInterface5, zztxVar5, string7, string8, zzakfVar, (zzaay) zzfp.zza(parcel, zzaay.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                iInterfaceZzro = zzrp();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzro);
                return true;
            case 16:
                iInterfaceZzro = zzrq();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzro);
                return true;
            case 17:
                bundleZzrr = zzrr();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, bundleZzrr);
                return true;
            case 18:
                bundleZzrr = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, bundleZzrr);
                return true;
            case 19:
                bundleZzrr = zzrs();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, bundleZzrr);
                return true;
            case 20:
                zza((zztx) zzfp.zza(parcel, zztx.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzw(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                zIsInitialized = zzrt();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsInitialized);
                return true;
            case 23:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzaqs.zzak(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                iInterfaceZzro = zzru();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzro);
                return true;
            case 25:
                setImmersiveMode(zzfp.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                iInterfaceZzro = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzro);
                return true;
            case 27:
                iInterfaceZzro = zzrv();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzro);
                return true;
            case 28:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zztx zztxVar6 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                String string9 = parcel.readString();
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzakfVar = iInterfaceQueryLocalInterface6 instanceof zzakd ? (zzakd) iInterfaceQueryLocalInterface6 : new zzakf(strongBinder6);
                }
                zzb(iObjectWrapperAsInterface6, zztxVar6, string9, zzakfVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                zzx(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzafs.zzx(parcel.readStrongBinder()), parcel.createTypedArrayList(zzagb.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
