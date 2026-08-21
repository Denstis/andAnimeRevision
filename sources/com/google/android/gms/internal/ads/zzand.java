package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;

/* JADX INFO: loaded from: classes.dex */
final class zzand implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzana zzdge;
    private final /* synthetic */ String zzdgf;
    private final /* synthetic */ String zzdgg;

    zzand(zzana zzanaVar, String str, String str2) {
        this.zzdge = zzanaVar;
        this.zzdgf = str;
        this.zzdgg = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        DownloadManager downloadManager = (DownloadManager) this.zzdge.zzlk.getSystemService("download");
        try {
            String str = this.zzdgf;
            String str2 = this.zzdgg;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            com.google.android.gms.ads.internal.zzq.zzkl();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.zzdge.zzdn("Could not store picture.");
        }
    }
}
