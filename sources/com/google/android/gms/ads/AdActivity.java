package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzano;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzuv;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class AdActivity extends Activity {

    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";

    @KeepForSdk
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzano zzaaw;

    private final void zzda() {
        zzano zzanoVar = this.zzaaw;
        if (zzanoVar != null) {
            try {
                zzanoVar.zzda();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i2, int i3, Intent intent) {
        try {
            this.zzaaw.onActivityResult(i2, i3, intent);
        } catch (Exception e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean zZzsp = true;
        try {
            if (this.zzaaw != null) {
                zZzsp = this.zzaaw.zzsp();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
        if (zZzsp) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.zzaaw.zzag(ObjectWrapper.wrap(configuration));
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzaaw = zzuv.zzok().zzb(this);
        zzano zzanoVar = this.zzaaw;
        if (zzanoVar == null) {
            e = null;
        } else {
            try {
                zzanoVar.onCreate(bundle);
                return;
            } catch (RemoteException e2) {
                e = e2;
            }
        }
        zzaxi.zze("#007 Could not call remote method.", e);
        finish();
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onDestroy();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onPause();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onRestart();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onResume();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onStart();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            if (this.zzaaw != null) {
                this.zzaaw.onStop();
            }
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void setContentView(int i2) {
        super.setContentView(i2);
        zzda();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        zzda();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzda();
    }
}
