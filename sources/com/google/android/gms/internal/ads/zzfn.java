package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public class zzfn implements IInterface {
    private final IBinder zzaas;
    private final String zzaat;

    protected zzfn(IBinder iBinder, String str) {
        this.zzaas = iBinder;
        this.zzaat = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zzaas;
    }

    protected final Parcel obtainAndWriteInterfaceToken() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.zzaat);
        return parcelObtain;
    }

    protected final Parcel transactAndReadException(int i2, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.zzaas.transact(i2, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e2) {
                parcelObtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }

    protected final void zza(int i2, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.zzaas.transact(i2, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    protected final void zzb(int i2, Parcel parcel) {
        try {
            this.zzaas.transact(i2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
