package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzabk extends zzfn implements zzabi {
    zzabk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final int getHeight() {
        Parcel parcelTransactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        int i2 = parcelTransactAndReadException.readInt();
        parcelTransactAndReadException.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final double getScale() {
        Parcel parcelTransactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        double d2 = parcelTransactAndReadException.readDouble();
        parcelTransactAndReadException.recycle();
        return d2;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final Uri getUri() {
        Parcel parcelTransactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        Uri uri = (Uri) zzfp.zza(parcelTransactAndReadException, Uri.CREATOR);
        parcelTransactAndReadException.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final int getWidth() {
        Parcel parcelTransactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        int i2 = parcelTransactAndReadException.readInt();
        parcelTransactAndReadException.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final IObjectWrapper zzqi() {
        Parcel parcelTransactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return iObjectWrapperAsInterface;
    }
}
