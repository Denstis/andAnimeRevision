package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "SafeBrowsingConfigParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzasd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzasd> CREATOR = new zzasg();

    @SafeParcelable.Field(id = 2)
    public final String zzdow;

    @SafeParcelable.Field(id = 3)
    public final String zzdox;

    @SafeParcelable.Field(id = 4)
    public final boolean zzdoy;

    @SafeParcelable.Field(id = 5)
    public final boolean zzdoz;

    @SafeParcelable.Field(id = 6)
    public final List<String> zzdpa;

    @SafeParcelable.Field(id = 7)
    public final boolean zzdpb;

    @SafeParcelable.Field(id = 8)
    public final boolean zzdpc;

    @SafeParcelable.Field(id = 9)
    public final List<String> zzdpd;

    @SafeParcelable.Constructor
    public zzasd(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) List<String> list2) {
        this.zzdow = str;
        this.zzdox = str2;
        this.zzdoy = z;
        this.zzdoz = z2;
        this.zzdpa = list;
        this.zzdpb = z3;
        this.zzdpc = z4;
        this.zzdpd = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzasd zzg(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new zzasd(jSONObject.optString("click_string", ""), jSONObject.optString("report_url", ""), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), zzawg.zza(jSONObject.optJSONArray("allowed_headers"), (List<String>) null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), zzawg.zza(jSONObject.optJSONArray("webview_permissions"), (List<String>) null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzdow, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzdox, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzdoy);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzdoz);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzdpa, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzdpb);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdpc);
        SafeParcelWriter.writeStringList(parcel, 9, this.zzdpd, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
