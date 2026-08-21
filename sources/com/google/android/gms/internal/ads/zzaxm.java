package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class zzaxm implements zzawz {
    private final String zzber;

    public zzaxm() {
        this(null);
    }

    public zzaxm(String str) {
        this.zzber = str;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzei(String str) {
        String message;
        StringBuilder sb;
        String string;
        try {
            String strValueOf = String.valueOf(str);
            zzaxi.zzdv(strValueOf.length() != 0 ? "Pinging URL: ".concat(strValueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                zzuv.zzoj();
                zzawy.zza(true, httpURLConnection, this.zzber);
                zzaxc zzaxcVar = new zzaxc();
                zzaxcVar.zza(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                zzaxcVar.zza(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 65);
                    sb2.append("Received non-success response code ");
                    sb2.append(responseCode);
                    sb2.append(" from pinging URL: ");
                    sb2.append(str);
                    zzaxi.zzeu(sb2.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e2) {
            message = e2.getMessage();
            sb = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb.append("Error while pinging URL: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            string = sb.toString();
            zzaxi.zzeu(string);
        } catch (IndexOutOfBoundsException e3) {
            String message2 = e3.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb3.append("Error while parsing ping URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            string = sb3.toString();
            zzaxi.zzeu(string);
        } catch (RuntimeException e4) {
            message = e4.getMessage();
            sb = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb.append("Error while pinging URL: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            string = sb.toString();
            zzaxi.zzeu(string);
        }
    }
}
