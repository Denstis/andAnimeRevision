package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import b.e.a;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzax {
    private int zza = 0;
    private final Map<Integer, TaskCompletionSource<Void>> zzb = new a();
    private final zzat zzc;

    zzax(zzat zzatVar) {
        this.zzc = zzatVar;
    }

    private static boolean zza(FirebaseInstanceId firebaseInstanceId, String str) throws IOException {
        String string;
        String str2;
        String[] strArrSplit = str.split("!");
        if (strArrSplit.length == 2) {
            String str3 = strArrSplit[0];
            String str4 = strArrSplit[1];
            byte b2 = -1;
            try {
                int iHashCode = str3.hashCode();
                if (iHashCode != 83) {
                    if (iHashCode == 85 && str3.equals("U")) {
                        b2 = 1;
                    }
                } else if (str3.equals("S")) {
                    b2 = 0;
                }
                if (b2 == 0) {
                    firebaseInstanceId.zzb(str4);
                    if (FirebaseInstanceId.zzd()) {
                        str2 = "subscribe operation succeeded";
                        Log.d("FirebaseInstanceId", str2);
                    }
                } else if (b2 == 1) {
                    firebaseInstanceId.zzc(str4);
                    if (FirebaseInstanceId.zzd()) {
                        str2 = "unsubscribe operation succeeded";
                        Log.d("FirebaseInstanceId", str2);
                    }
                }
            } catch (IOException e2) {
                if ("SERVICE_NOT_AVAILABLE".equals(e2.getMessage()) || "INTERNAL_SERVER_ERROR".equals(e2.getMessage())) {
                    String message = e2.getMessage();
                    StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 53);
                    sb.append("Topic operation failed: ");
                    sb.append(message);
                    sb.append(". Will retry Topic operation.");
                    string = sb.toString();
                } else {
                    if (e2.getMessage() != null) {
                        throw e2;
                    }
                    string = "Topic operation failed without exception message. Will retry Topic operation.";
                }
                Log.e("FirebaseInstanceId", string);
                return false;
            }
        }
        return true;
    }

    private final String zzb() {
        String strZza;
        synchronized (this.zzc) {
            strZza = this.zzc.zza();
        }
        if (TextUtils.isEmpty(strZza)) {
            return null;
        }
        String[] strArrSplit = strZza.split(",");
        if (strArrSplit.length <= 1 || TextUtils.isEmpty(strArrSplit[1])) {
            return null;
        }
        return strArrSplit[1];
    }

    private final synchronized boolean zzb(String str) {
        synchronized (this.zzc) {
            String strZza = this.zzc.zza();
            String strValueOf = String.valueOf(str);
            if (!strZza.startsWith(strValueOf.length() != 0 ? ",".concat(strValueOf) : new String(","))) {
                return false;
            }
            String strValueOf2 = String.valueOf(str);
            this.zzc.zza(strZza.substring((strValueOf2.length() != 0 ? ",".concat(strValueOf2) : new String(",")).length()));
            return true;
        }
    }

    final synchronized Task<Void> zza(String str) {
        String strZza;
        TaskCompletionSource<Void> taskCompletionSource;
        synchronized (this.zzc) {
            strZza = this.zzc.zza();
            zzat zzatVar = this.zzc;
            StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 1 + String.valueOf(str).length());
            sb.append(strZza);
            sb.append(",");
            sb.append(str);
            zzatVar.zza(sb.toString());
        }
        taskCompletionSource = new TaskCompletionSource<>();
        this.zzb.put(Integer.valueOf(this.zza + (TextUtils.isEmpty(strZza) ? 0 : strZza.split(",").length - 1)), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    final synchronized boolean zza() {
        return zzb() != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (com.google.firebase.iid.FirebaseInstanceId.zzd() == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        android.util.Log.d("FirebaseInstanceId", "topic sync succeeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean zza(com.google.firebase.iid.FirebaseInstanceId r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            java.lang.String r0 = r4.zzb()     // Catch: java.lang.Throwable -> L42
            r1 = 1
            if (r0 != 0) goto L17
            boolean r5 = com.google.firebase.iid.FirebaseInstanceId.zzd()     // Catch: java.lang.Throwable -> L42
            if (r5 == 0) goto L15
            java.lang.String r5 = "FirebaseInstanceId"
            java.lang.String r0 = "topic sync succeeded"
            android.util.Log.d(r5, r0)     // Catch: java.lang.Throwable -> L42
        L15:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L42
            return r1
        L17:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L42
            boolean r2 = zza(r5, r0)
            if (r2 != 0) goto L20
            r5 = 0
            return r5
        L20:
            monitor-enter(r4)
            java.util.Map<java.lang.Integer, com.google.android.gms.tasks.TaskCompletionSource<java.lang.Void>> r2 = r4.zzb     // Catch: java.lang.Throwable -> L3f
            int r3 = r4.zza     // Catch: java.lang.Throwable -> L3f
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L3f
            java.lang.Object r2 = r2.remove(r3)     // Catch: java.lang.Throwable -> L3f
            com.google.android.gms.tasks.TaskCompletionSource r2 = (com.google.android.gms.tasks.TaskCompletionSource) r2     // Catch: java.lang.Throwable -> L3f
            r4.zzb(r0)     // Catch: java.lang.Throwable -> L3f
            int r0 = r4.zza     // Catch: java.lang.Throwable -> L3f
            int r0 = r0 + r1
            r4.zza = r0     // Catch: java.lang.Throwable -> L3f
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3f
            if (r2 == 0) goto L0
            r0 = 0
            r2.setResult(r0)
            goto L0
        L3f:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3f
            throw r5
        L42:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L42
            goto L46
        L45:
            throw r5
        L46:
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzax.zza(com.google.firebase.iid.FirebaseInstanceId):boolean");
    }
}
