package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzanl {
    private static final Object lock = new Object();

    @VisibleForTesting
    private static boolean zzdgs = false;

    @VisibleForTesting
    private static boolean zzye = false;

    @VisibleForTesting
    private zzcyu zzdgt;

    @VisibleForTesting
    private final void zzq(Context context) {
        synchronized (lock) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && !zzdgs) {
                try {
                    zzdgs = true;
                    this.zzdgt = (zzcyu) zzaxh.zza(context, "com.google.android.gms.ads.omid.DynamiteOmid", zzank.zzbty);
                } catch (zzaxj e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final String getVersion(Context context) {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue()) {
            return null;
        }
        try {
            zzq(context);
            String strValueOf = String.valueOf(this.zzdgt.getVersion());
            return strValueOf.length() != 0 ? "a.".concat(strValueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4) {
        return zza(str, webView, str2, str3, str4, "Google");
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (lock) {
            try {
                try {
                    if (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && zzye) {
                        try {
                            return this.zzdgt.zza(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e2) {
                            zzaxi.zze("#007 Could not call remote method.", e2);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, View view) {
        synchronized (lock) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && zzye) {
                try {
                    this.zzdgt.zzd(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final void zzae(IObjectWrapper iObjectWrapper) {
        synchronized (lock) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && zzye) {
                try {
                    this.zzdgt.zzae(iObjectWrapper);
                } catch (RemoteException | NullPointerException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final void zzaf(IObjectWrapper iObjectWrapper) {
        synchronized (lock) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && zzye) {
                try {
                    this.zzdgt.zzaf(iObjectWrapper);
                } catch (RemoteException | NullPointerException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final void zzb(IObjectWrapper iObjectWrapper, View view) {
        synchronized (lock) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue() && zzye) {
                try {
                    this.zzdgt.zze(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e2) {
                    zzaxi.zze("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final boolean zzp(Context context) {
        synchronized (lock) {
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzcqu)).booleanValue()) {
                return false;
            }
            if (zzye) {
                return true;
            }
            try {
                zzq(context);
                boolean zZzau = this.zzdgt.zzau(ObjectWrapper.wrap(context));
                zzye = zZzau;
                return zZzau;
            } catch (RemoteException e2) {
                e = e2;
                zzaxi.zze("#007 Could not call remote method.", e);
                return false;
            } catch (NullPointerException e3) {
                e = e3;
                zzaxi.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }
}
