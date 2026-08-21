package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "CacheOfferingCreator")
@SafeParcelable.Reserved({1})
public final class zzrp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzrp> CREATOR = new zzrs();

    @SafeParcelable.Field(id = 2)
    public final String url;

    @SafeParcelable.Field(id = 3)
    private final long zzbri;

    @SafeParcelable.Field(id = 4)
    private final String zzbrj;

    @SafeParcelable.Field(id = 5)
    private final String zzbrk;

    @SafeParcelable.Field(id = 6)
    private final String zzbrl;

    @SafeParcelable.Field(id = 7)
    private final Bundle zzbrm;

    @SafeParcelable.Field(id = 8)
    public final boolean zzbrn;

    @SafeParcelable.Field(id = 9)
    public long zzbro;

    @SafeParcelable.Constructor
    zzrp(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j3) {
        this.url = str;
        this.zzbri = j2;
        this.zzbrj = str2 == null ? "" : str2;
        this.zzbrk = str3 == null ? "" : str3;
        this.zzbrl = str4 != null ? str4 : "";
        this.zzbrm = bundle == null ? new Bundle() : bundle;
        this.zzbrn = z;
        this.zzbro = j3;
    }

    public static zzrp zzbt(String str) {
        return zze(Uri.parse(str));
    }

    public static zzrp zze(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                zzaxi.zzeu(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(ImagesContract.URL);
            boolean zEquals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long j2 = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            com.google.android.gms.ads.internal.zzq.zzkl();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzrp(queryParameter, j2, host, str, str2, bundle, zEquals, 0L);
        } catch (NullPointerException | NumberFormatException e2) {
            zzaxi.zzd("Unable to parse Uri into cache offering.", e2);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.url, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzbri);
        SafeParcelWriter.writeString(parcel, 4, this.zzbrj, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzbrk, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzbrl, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzbrm, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbrn);
        SafeParcelWriter.writeLong(parcel, 9, this.zzbro);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
