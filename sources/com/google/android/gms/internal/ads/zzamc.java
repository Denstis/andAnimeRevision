package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzamc extends zzfm implements zzamd {
    public zzamc() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzamd zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return iInterfaceQueryLocalInterface instanceof zzamd ? (zzamd) iInterfaceQueryLocalInterface : new zzamf(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.google.android.gms.internal.ads.zzamc, com.google.android.gms.internal.ads.zzamd] */
    /* JADX WARN: Type inference failed for: r7v10, types: [com.google.android.gms.internal.ads.zzalx] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.google.android.gms.internal.ads.zzalr] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.google.android.gms.internal.ads.zzals] */
    /* JADX WARN: Type inference failed for: r7v8, types: [com.google.android.gms.internal.ads.zzaly] */
    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzame zzamgVar;
        zzamr zzamrVarZzsg;
        boolean zZzac;
        IInterface zzaltVar = null;
        if (i2 != 1) {
            if (i2 == 2) {
                zzamrVarZzsg = zzsg();
            } else {
                if (i2 != 3) {
                    if (i2 == 5) {
                        zzwr videoController = getVideoController();
                        parcel2.writeNoException();
                        zzfp.zza(parcel2, videoController);
                    } else if (i2 == 10) {
                        zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    } else if (i2 != 11) {
                        switch (i2) {
                            case 13:
                                String string = parcel.readString();
                                String string2 = parcel.readString();
                                zztx zztxVar = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                IBinder strongBinder = parcel.readStrongBinder();
                                if (strongBinder != null) {
                                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                    zzaltVar = iInterfaceQueryLocalInterface instanceof zzalr ? (zzalr) iInterfaceQueryLocalInterface : new zzalt(strongBinder);
                                }
                                zza(string, string2, zztxVar, iObjectWrapperAsInterface, zzaltVar, zzakc.zzab(parcel.readStrongBinder()), (zzua) zzfp.zza(parcel, zzua.CREATOR));
                                break;
                            case 14:
                                String string3 = parcel.readString();
                                String string4 = parcel.readString();
                                zztx zztxVar2 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                IBinder strongBinder2 = parcel.readStrongBinder();
                                if (strongBinder2 != null) {
                                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                                    zzaltVar = iInterfaceQueryLocalInterface2 instanceof zzals ? (zzals) iInterfaceQueryLocalInterface2 : new zzalu(strongBinder2);
                                }
                                zza(string3, string4, zztxVar2, iObjectWrapperAsInterface2, zzaltVar, zzakc.zzab(parcel.readStrongBinder()));
                                break;
                            case 15:
                                zZzac = zzac(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                zzfp.writeBoolean(parcel2, zZzac);
                                break;
                            case 16:
                                String string5 = parcel.readString();
                                String string6 = parcel.readString();
                                zztx zztxVar3 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                IBinder strongBinder3 = parcel.readStrongBinder();
                                if (strongBinder3 != null) {
                                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                    zzaltVar = iInterfaceQueryLocalInterface3 instanceof zzaly ? (zzaly) iInterfaceQueryLocalInterface3 : new zzama(strongBinder3);
                                }
                                zza(string5, string6, zztxVar3, iObjectWrapperAsInterface3, zzaltVar, zzakc.zzab(parcel.readStrongBinder()));
                                break;
                            case 17:
                                zZzac = zzad(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                                parcel2.writeNoException();
                                zzfp.writeBoolean(parcel2, zZzac);
                                break;
                            case 18:
                                String string7 = parcel.readString();
                                String string8 = parcel.readString();
                                zztx zztxVar4 = (zztx) zzfp.zza(parcel, zztx.CREATOR);
                                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                IBinder strongBinder4 = parcel.readStrongBinder();
                                if (strongBinder4 != null) {
                                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                    zzaltVar = iInterfaceQueryLocalInterface4 instanceof zzalx ? (zzalx) iInterfaceQueryLocalInterface4 : new zzalz(strongBinder4);
                                }
                                zza(string7, string8, zztxVar4, iObjectWrapperAsInterface4, zzaltVar, zzakc.zzab(parcel.readStrongBinder()));
                                break;
                            case 19:
                                zzdh(parcel.readString());
                                break;
                            default:
                                return false;
                        }
                    } else {
                        zza(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
                    }
                    return true;
                }
                zzamrVarZzsg = zzsh();
            }
            parcel2.writeNoException();
            zzfp.zzb(parcel2, zzamrVarZzsg);
            return true;
        }
        IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        String string9 = parcel.readString();
        Bundle bundle = (Bundle) zzfp.zza(parcel, Bundle.CREATOR);
        Bundle bundle2 = (Bundle) zzfp.zza(parcel, Bundle.CREATOR);
        zzua zzuaVar = (zzua) zzfp.zza(parcel, zzua.CREATOR);
        IBinder strongBinder5 = parcel.readStrongBinder();
        if (strongBinder5 == null) {
            zzamgVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
            zzamgVar = iInterfaceQueryLocalInterface5 instanceof zzame ? (zzame) iInterfaceQueryLocalInterface5 : new zzamg(strongBinder5);
        }
        zza(iObjectWrapperAsInterface5, string9, bundle, bundle2, zzuaVar, zzamgVar);
        parcel2.writeNoException();
        return true;
    }
}
