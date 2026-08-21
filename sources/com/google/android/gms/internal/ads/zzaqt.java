package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "RewardItemParcelCreator")
@SafeParcelable.Reserved({1})
public final class zzaqt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqt> CREATOR = new zzaqw();

    @SafeParcelable.Field(id = 2)
    public final String type;

    @SafeParcelable.Field(id = 3)
    public final int zzdnv;

    public zzaqt(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    @SafeParcelable.Constructor
    public zzaqt(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
        this.type = str;
        this.zzdnv = i2;
    }

    public static zzaqt zza(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzaqt(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzaqt)) {
            zzaqt zzaqtVar = (zzaqt) obj;
            if (Objects.equal(this.type, zzaqtVar.type) && Objects.equal(Integer.valueOf(this.zzdnv), Integer.valueOf(zzaqtVar.zzdnv))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.type, Integer.valueOf(this.zzdnv));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.type, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdnv);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
