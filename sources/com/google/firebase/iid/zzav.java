package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.FirebaseApp;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzav implements Runnable {
    private final long zza;
    private final PowerManager.WakeLock zzb = ((PowerManager) zza().getSystemService("power")).newWakeLock(1, "fiid-sync");
    private final FirebaseInstanceId zzc;
    private final zzax zzd;

    @VisibleForTesting
    zzav(FirebaseInstanceId firebaseInstanceId, zzai zzaiVar, zzax zzaxVar, long j2) {
        this.zzc = firebaseInstanceId;
        this.zzd = zzaxVar;
        this.zza = j2;
        this.zzb.setReferenceCounted(false);
    }

    @VisibleForTesting
    private final boolean zzc() throws IOException {
        String string;
        zzas zzasVarZzb = this.zzc.zzb();
        if (!this.zzc.zza(zzasVarZzb)) {
            return true;
        }
        try {
            String strZzc = this.zzc.zzc();
            if (strZzc == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            if ((zzasVarZzb == null || (zzasVarZzb != null && !strZzc.equals(zzasVarZzb.zza))) && FirebaseApp.DEFAULT_APP_NAME.equals(this.zzc.zza().getName())) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(this.zzc.zza().getName());
                    Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Invoking onNewToken for app: ".concat(strValueOf) : new String("Invoking onNewToken for app: "));
                }
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", strZzc);
                Context contextZza = zza();
                Intent intent2 = new Intent(contextZza, (Class<?>) FirebaseInstanceIdReceiver.class);
                intent2.setAction("com.google.firebase.MESSAGING_EVENT");
                intent2.putExtra("wrapped_intent", intent);
                contextZza.sendBroadcast(intent2);
            }
            return true;
        } catch (IOException e2) {
            if ("SERVICE_NOT_AVAILABLE".equals(e2.getMessage()) || "INTERNAL_SERVER_ERROR".equals(e2.getMessage())) {
                string = "Token retrieval failed without exception message. Will retry token retrieval";
            } else {
                if (e2.getMessage() != null) {
                    throw e2;
                }
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
                sb.append("Token retrieval failed: ");
                sb.append(message);
                sb.append(". Will retry token retrieval");
                string = sb.toString();
            }
            Log.e("FirebaseInstanceId", string);
            return false;
        } catch (SecurityException unused) {
            string = "Token retrieval failed with SecurityException. Will retry token retrieval";
            Log.e("FirebaseInstanceId", string);
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public final void run() {
        if (zzaq.zza().zza(zza())) {
            this.zzb.acquire();
        }
        try {
            try {
                this.zzc.zza(true);
            } catch (IOException e2) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseInstanceId", sb.toString());
                this.zzc.zza(false);
                if (!zzaq.zza().zza(zza())) {
                    return;
                }
            }
            if (!this.zzc.zzf()) {
                this.zzc.zza(false);
                if (zzaq.zza().zza(zza())) {
                    this.zzb.release();
                    return;
                }
                return;
            }
            if (zzaq.zza().zzb(zza()) && !zzb()) {
                new zzau(this).zza();
                if (zzaq.zza().zza(zza())) {
                    this.zzb.release();
                    return;
                }
                return;
            }
            if (zzc() && this.zzd.zza(this.zzc)) {
                this.zzc.zza(false);
            } else {
                this.zzc.zza(this.zza);
            }
            if (!zzaq.zza().zza(zza())) {
                return;
            }
            this.zzb.release();
        } catch (Throwable th) {
            if (zzaq.zza().zza(zza())) {
                this.zzb.release();
            }
            throw th;
        }
    }

    final Context zza() {
        return this.zzc.zza().getApplicationContext();
    }

    final boolean zzb() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) zza().getSystemService("connectivity");
        if (connectivityManager != null) {
            connectivityManager.getActiveNetworkInfo();
            networkInfo = null;
        } else {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }
}
