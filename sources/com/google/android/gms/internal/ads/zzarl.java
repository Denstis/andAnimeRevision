package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzarl {
    private final zzara zzdoc;
    private final Context zzzc;

    public zzarl(Context context, String str) {
        this.zzzc = context.getApplicationContext();
        this.zzdoc = zzuv.zzok().zzc(context, str, new zzaju());
    }

    public final Bundle getAdMetadata() {
        try {
            return this.zzdoc.getAdMetadata();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return new Bundle();
        }
    }

    public final String getMediationAdapterClassName() {
        try {
            return this.zzdoc.getMediationAdapterClassName();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return "";
        }
    }

    public final RewardItem getRewardItem() {
        try {
            zzaqv zzaqvVarZzpk = this.zzdoc.zzpk();
            if (zzaqvVarZzpk == null) {
                return null;
            }
            return new zzaro(zzaqvVarZzpk);
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final boolean isLoaded() {
        try {
            return this.zzdoc.isLoaded();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return false;
        }
    }

    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.zzdoc.zza(new zzya(onAdMetadataChangedListener));
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.zzdoc.zza(new zzarr(serverSideVerificationOptions));
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        try {
            this.zzdoc.zza(new zzarn(rewardedAdCallback));
            this.zzdoc.zzl(ObjectWrapper.wrap(activity));
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        try {
            this.zzdoc.zza(new zzarn(rewardedAdCallback));
            this.zzdoc.zza(ObjectWrapper.wrap(activity), z);
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void zza(zzwz zzwzVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.zzdoc.zza(zzty.zza(this.zzzc, zzwzVar), new zzars(rewardedAdLoadCallback));
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }
}
