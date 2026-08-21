package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzeq extends com.google.android.gms.internal.measurement.zza implements zzeo {
    zzeq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(zzm zzmVar, boolean z) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, z);
        Parcel parcelZza = zza(7, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzkl.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, zzm zzmVar) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        Parcel parcelZza = zza(16, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzv.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, String str3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        Parcel parcelZza = zza(17, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzv.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, String str3, boolean z) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, z);
        Parcel parcelZza = zza(15, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzkl.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, boolean z, zzm zzmVar) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, z);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        Parcel parcelZza = zza(14, parcelA_);
        ArrayList arrayListCreateTypedArrayList = parcelZza.createTypedArrayList(zzkl.CREATOR);
        parcelZza.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(long j2, String str, String str2, String str3) {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j2);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeString(str3);
        zzb(10, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzanVar);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        zzb(1, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, String str, String str2) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzanVar);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzb(5, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzkl zzklVar, zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzklVar);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        zzb(2, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        zzb(4, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzvVar);
        zzb(13, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar, zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzvVar);
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        zzb(12, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] zza(zzan zzanVar, String str) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzanVar);
        parcelA_.writeString(str);
        Parcel parcelZza = zza(9, parcelA_);
        byte[] bArrCreateByteArray = parcelZza.createByteArray();
        parcelZza.recycle();
        return bArrCreateByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzb(zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        zzb(6, parcelA_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String zzc(zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        Parcel parcelZza = zza(11, parcelA_);
        String string = parcelZza.readString();
        parcelZza.recycle();
        return string;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzd(zzm zzmVar) {
        Parcel parcelA_ = a_();
        com.google.android.gms.internal.measurement.zzb.zza(parcelA_, zzmVar);
        zzb(18, parcelA_);
    }
}
