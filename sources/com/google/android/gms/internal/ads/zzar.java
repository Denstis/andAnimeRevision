package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class zzar extends zzah {
    private final zzat zzcj;
    private final SSLSocketFactory zzck;

    public zzar() {
        this(null);
    }

    private zzar(zzat zzatVar) {
        this(null, null);
    }

    private zzar(zzat zzatVar, SSLSocketFactory sSLSocketFactory) {
        this.zzcj = null;
        this.zzck = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream zza(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static List<zzk> zza(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new zzk(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static void zza(HttpURLConnection httpURLConnection, zzq<?> zzqVar) {
        byte[] bArrZzf = zzqVar.zzf();
        if (bArrZzf != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", C.UTF8_NAME.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(C.UTF8_NAME) : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrZzf);
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00bf A[Catch: all -> 0x0114, TryCatch #1 {all -> 0x0114, blocks: (B:14:0x0068, B:15:0x0070, B:17:0x0076, B:18:0x0086, B:19:0x008a, B:20:0x008d, B:55:0x010e, B:56:0x0113, B:21:0x0091, B:22:0x0096, B:24:0x009c, B:28:0x00a9, B:29:0x00af, B:31:0x00b8, B:33:0x00bf, B:46:0x00db, B:53:0x0106, B:54:0x010d), top: B:65:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0106 A[Catch: all -> 0x0114, TRY_ENTER, TryCatch #1 {all -> 0x0114, blocks: (B:14:0x0068, B:15:0x0070, B:17:0x0076, B:18:0x0086, B:19:0x008a, B:20:0x008d, B:55:0x010e, B:56:0x0113, B:21:0x0091, B:22:0x0096, B:24:0x009c, B:28:0x00a9, B:29:0x00af, B:31:0x00b8, B:33:0x00bf, B:46:0x00db, B:53:0x0106, B:54:0x010d), top: B:65:0x0068 }] */
    @Override // com.google.android.gms.internal.ads.zzah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzap zza(com.google.android.gms.internal.ads.zzq<?> r7, java.util.Map<java.lang.String, java.lang.String> r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzar.zza(com.google.android.gms.internal.ads.zzq, java.util.Map):com.google.android.gms.internal.ads.zzap");
    }
}
