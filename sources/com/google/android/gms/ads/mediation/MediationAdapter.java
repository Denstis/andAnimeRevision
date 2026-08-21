package com.google.android.gms.ads.mediation;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public interface MediationAdapter extends MediationExtrasReceiver {

    public static class zza {
        private int zzein;

        public final Bundle zzaaz() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzein);
            return bundle;
        }

        public final zza zzdc(int i2) {
            this.zzein = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
