package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzada;
import com.google.android.gms.internal.ads.zzadd;
import com.google.android.gms.internal.ads.zzuc;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzyh;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class(creator = "PublisherAdViewOptionsCreator")
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzc();

    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", id = 1)
    private final boolean zzbkg;

    @SafeParcelable.Field(getter = "getAppEventListenerBinder", id = 2, type = "android.os.IBinder")
    private final zzvt zzbkh;
    private AppEventListener zzbki;

    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", id = 3)
    private final IBinder zzbkj;

    public static final class Builder {
        private boolean zzbkg = false;
        private AppEventListener zzbki;
        private ShouldDelayBannerRenderingListener zzbkk;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzbki = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzbkg = z;
            return this;
        }

        @KeepForSdk
        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.zzbkk = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    private PublisherAdViewOptions(Builder builder) {
        this.zzbkg = builder.zzbkg;
        this.zzbki = builder.zzbki;
        AppEventListener appEventListener = this.zzbki;
        this.zzbkh = appEventListener != null ? new zzuc(appEventListener) : null;
        this.zzbkj = builder.zzbkk != null ? new zzyh(builder.zzbkk) : null;
    }

    @SafeParcelable.Constructor
    PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        this.zzbkg = z;
        this.zzbkh = iBinder != null ? zzvs.zze(iBinder) : null;
        this.zzbkj = iBinder2;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbki;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbkg;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        zzvt zzvtVar = this.zzbkh;
        SafeParcelWriter.writeIBinder(parcel, 2, zzvtVar == null ? null : zzvtVar.asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.zzbkj, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzvt zzjg() {
        return this.zzbkh;
    }

    public final zzada zzjh() {
        return zzadd.zzw(this.zzbkj);
    }
}
