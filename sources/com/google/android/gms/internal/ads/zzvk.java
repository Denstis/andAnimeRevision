package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzvk extends zzfm implements zzvl {
    public zzvk() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzvl zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return iInterfaceQueryLocalInterface instanceof zzvl ? (zzvl) iInterfaceQueryLocalInterface : new zzvn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        IInterface iInterfaceZzjr;
        boolean zIsReady;
        Parcelable parcelableZzjt;
        String mediationAdapterClassName;
        zzuy zzvaVar = null;
        zzvo zzvqVar = null;
        zzvz zzvyVar = null;
        zzux zzuzVar = null;
        zzvt zzvvVar = null;
        switch (i2) {
            case 1:
                iInterfaceZzjr = zzjr();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzjr);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                zIsReady = isReady();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsReady);
                return true;
            case 4:
                zIsReady = zza((zztx) zzfp.zza(parcel, zztx.CREATOR));
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsReady);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzvaVar = iInterfaceQueryLocalInterface instanceof zzuy ? (zzuy) iInterfaceQueryLocalInterface : new zzva(strongBinder);
                }
                zza(zzvaVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzvvVar = iInterfaceQueryLocalInterface2 instanceof zzvt ? (zzvt) iInterfaceQueryLocalInterface2 : new zzvv(strongBinder2);
                }
                zza(zzvvVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzjs();
                parcel2.writeNoException();
                return true;
            case 12:
                parcelableZzjt = zzjt();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, parcelableZzjt);
                return true;
            case 13:
                zza((zzua) zzfp.zza(parcel, zzua.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zza(zzanw.zzaf(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zza(zzaoc.zzah(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                zza(zzaag.zzk(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzuzVar = iInterfaceQueryLocalInterface3 instanceof zzux ? (zzux) iInterfaceQueryLocalInterface3 : new zzuz(strongBinder3);
                }
                zza(zzuzVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzvyVar = iInterfaceQueryLocalInterface4 instanceof zzvz ? (zzvz) iInterfaceQueryLocalInterface4 : new zzvy(strongBinder4);
                }
                zza(zzvyVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(zzfp.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                zIsReady = isLoading();
                parcel2.writeNoException();
                zzfp.writeBoolean(parcel2, zIsReady);
                return true;
            case 24:
                zza(zzaqh.zzaj(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                iInterfaceZzjr = getVideoController();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzjr);
                return true;
            case 29:
                zza((zzyj) zzfp.zza(parcel, zzyj.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzwx) zzfp.zza(parcel, zzwx.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                mediationAdapterClassName = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 32:
                iInterfaceZzjr = zzjv();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzjr);
                return true;
            case 33:
                iInterfaceZzjr = zzjw();
                parcel2.writeNoException();
                zzfp.zza(parcel2, iInterfaceZzjr);
                return true;
            case 34:
                setImmersiveMode(zzfp.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                mediationAdapterClassName = zzju();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 36:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzvqVar = iInterfaceQueryLocalInterface5 instanceof zzvo ? (zzvo) iInterfaceQueryLocalInterface5 : new zzvq(strongBinder5);
                }
                zza(zzvqVar);
                parcel2.writeNoException();
                return true;
            case 37:
                parcelableZzjt = getAdMetadata();
                parcel2.writeNoException();
                zzfp.zzb(parcel2, parcelableZzjt);
                return true;
            case 38:
                zzbm(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zzuf) zzfp.zza(parcel, zzuf.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                zza(zzra.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
