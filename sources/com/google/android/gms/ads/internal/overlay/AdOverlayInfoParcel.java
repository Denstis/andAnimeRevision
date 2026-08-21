package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzadw;
import com.google.android.gms.internal.ads.zzady;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zzbbw;
import com.google.android.gms.internal.ads.zztp;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "AdOverlayInfoCreator")
@SafeParcelable.Reserved({1})
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzm();

    @SafeParcelable.Field(id = 11)
    public final int orientation;

    @SafeParcelable.Field(id = 13)
    public final String url;

    @SafeParcelable.Field(id = 14)
    public final zzaxl zzblk;

    @SafeParcelable.Field(getter = "getAdClickListenerAsBinder", id = 3, type = "android.os.IBinder")
    public final zztp zzcbs;

    @SafeParcelable.Field(getter = "getAdMetadataGmsgListenerAsBinder", id = 18, type = "android.os.IBinder")
    public final zzadw zzcxc;

    @SafeParcelable.Field(getter = "getAppEventGmsgListenerAsBinder", id = 6, type = "android.os.IBinder")
    public final zzady zzcxd;

    @SafeParcelable.Field(getter = "getAdWebViewAsBinder", id = 5, type = "android.os.IBinder")
    public final zzbbw zzczi;

    @SafeParcelable.Field(id = 2)
    public final zzd zzdhx;

    @SafeParcelable.Field(getter = "getAdOverlayListenerAsBinder", id = 4, type = "android.os.IBinder")
    public final zzo zzdhy;

    @SafeParcelable.Field(id = 7)
    public final String zzdhz;

    @SafeParcelable.Field(id = 8)
    public final boolean zzdia;

    @SafeParcelable.Field(id = 9)
    public final String zzdib;

    @SafeParcelable.Field(getter = "getLeaveApplicationListenerAsBinder", id = 10, type = "android.os.IBinder")
    public final zzt zzdic;

    @SafeParcelable.Field(id = 12)
    public final int zzdid;

    @SafeParcelable.Field(id = 16)
    public final String zzdie;

    @SafeParcelable.Field(id = 17)
    public final com.google.android.gms.ads.internal.zzg zzdif;

    @SafeParcelable.Constructor
    AdOverlayInfoParcel(@SafeParcelable.Param(id = 2) zzd zzdVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2, @SafeParcelable.Param(id = 5) IBinder iBinder3, @SafeParcelable.Param(id = 6) IBinder iBinder4, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str2, @SafeParcelable.Param(id = 10) IBinder iBinder5, @SafeParcelable.Param(id = 11) int i2, @SafeParcelable.Param(id = 12) int i3, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) zzaxl zzaxlVar, @SafeParcelable.Param(id = 16) String str4, @SafeParcelable.Param(id = 17) com.google.android.gms.ads.internal.zzg zzgVar, @SafeParcelable.Param(id = 18) IBinder iBinder6) {
        this.zzdhx = zzdVar;
        this.zzcbs = (zztp) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzdhy = (zzo) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
        this.zzczi = (zzbbw) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder3));
        this.zzcxc = (zzadw) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder6));
        this.zzcxd = (zzady) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder4));
        this.zzdhz = str;
        this.zzdia = z;
        this.zzdib = str2;
        this.zzdic = (zzt) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder5));
        this.orientation = i2;
        this.zzdid = i3;
        this.url = str3;
        this.zzblk = zzaxlVar;
        this.zzdie = str4;
        this.zzdif = zzgVar;
    }

    public AdOverlayInfoParcel(zzd zzdVar, zztp zztpVar, zzo zzoVar, zzt zztVar, zzaxl zzaxlVar) {
        this.zzdhx = zzdVar;
        this.zzcbs = zztpVar;
        this.zzdhy = zzoVar;
        this.zzczi = null;
        this.zzcxc = null;
        this.zzcxd = null;
        this.zzdhz = null;
        this.zzdia = false;
        this.zzdib = null;
        this.zzdic = zztVar;
        this.orientation = -1;
        this.zzdid = 4;
        this.url = null;
        this.zzblk = zzaxlVar;
        this.zzdie = null;
        this.zzdif = null;
    }

    public AdOverlayInfoParcel(zztp zztpVar, zzo zzoVar, zzt zztVar, zzbbw zzbbwVar, int i2, zzaxl zzaxlVar, String str, com.google.android.gms.ads.internal.zzg zzgVar, String str2, String str3) {
        this.zzdhx = null;
        this.zzcbs = null;
        this.zzdhy = zzoVar;
        this.zzczi = zzbbwVar;
        this.zzcxc = null;
        this.zzcxd = null;
        this.zzdhz = str2;
        this.zzdia = false;
        this.zzdib = str3;
        this.zzdic = null;
        this.orientation = i2;
        this.zzdid = 1;
        this.url = null;
        this.zzblk = zzaxlVar;
        this.zzdie = str;
        this.zzdif = zzgVar;
    }

    public AdOverlayInfoParcel(zztp zztpVar, zzo zzoVar, zzt zztVar, zzbbw zzbbwVar, boolean z, int i2, zzaxl zzaxlVar) {
        this.zzdhx = null;
        this.zzcbs = zztpVar;
        this.zzdhy = zzoVar;
        this.zzczi = zzbbwVar;
        this.zzcxc = null;
        this.zzcxd = null;
        this.zzdhz = null;
        this.zzdia = z;
        this.zzdib = null;
        this.zzdic = zztVar;
        this.orientation = i2;
        this.zzdid = 2;
        this.url = null;
        this.zzblk = zzaxlVar;
        this.zzdie = null;
        this.zzdif = null;
    }

    public AdOverlayInfoParcel(zztp zztpVar, zzo zzoVar, zzadw zzadwVar, zzady zzadyVar, zzt zztVar, zzbbw zzbbwVar, boolean z, int i2, String str, zzaxl zzaxlVar) {
        this.zzdhx = null;
        this.zzcbs = zztpVar;
        this.zzdhy = zzoVar;
        this.zzczi = zzbbwVar;
        this.zzcxc = zzadwVar;
        this.zzcxd = zzadyVar;
        this.zzdhz = null;
        this.zzdia = z;
        this.zzdib = null;
        this.zzdic = zztVar;
        this.orientation = i2;
        this.zzdid = 3;
        this.url = str;
        this.zzblk = zzaxlVar;
        this.zzdie = null;
        this.zzdif = null;
    }

    public AdOverlayInfoParcel(zztp zztpVar, zzo zzoVar, zzadw zzadwVar, zzady zzadyVar, zzt zztVar, zzbbw zzbbwVar, boolean z, int i2, String str, String str2, zzaxl zzaxlVar) {
        this.zzdhx = null;
        this.zzcbs = zztpVar;
        this.zzdhy = zzoVar;
        this.zzczi = zzbbwVar;
        this.zzcxc = zzadwVar;
        this.zzcxd = zzadyVar;
        this.zzdhz = str2;
        this.zzdia = z;
        this.zzdib = str;
        this.zzdic = zztVar;
        this.orientation = i2;
        this.zzdid = 3;
        this.url = null;
        this.zzblk = zzaxlVar;
        this.zzdie = null;
        this.zzdif = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzc(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdhx, i2, false);
        SafeParcelWriter.writeIBinder(parcel, 3, ObjectWrapper.wrap(this.zzcbs).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.zzdhy).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 5, ObjectWrapper.wrap(this.zzczi).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 6, ObjectWrapper.wrap(this.zzcxd).asBinder(), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdhz, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdia);
        SafeParcelWriter.writeString(parcel, 9, this.zzdib, false);
        SafeParcelWriter.writeIBinder(parcel, 10, ObjectWrapper.wrap(this.zzdic).asBinder(), false);
        SafeParcelWriter.writeInt(parcel, 11, this.orientation);
        SafeParcelWriter.writeInt(parcel, 12, this.zzdid);
        SafeParcelWriter.writeString(parcel, 13, this.url, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.zzblk, i2, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzdie, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzdif, i2, false);
        SafeParcelWriter.writeIBinder(parcel, 18, ObjectWrapper.wrap(this.zzcxc).asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
