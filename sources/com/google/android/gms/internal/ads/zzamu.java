package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.gms.ads.impl.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzamu extends zzanj {
    private final Map<String, String> zzcuv;
    private String zzdfh;
    private long zzdfi;
    private long zzdfj;
    private String zzdfk;
    private String zzdfl;
    private final Context zzlk;

    public zzamu(zzbbw zzbbwVar, Map<String, String> map) {
        super(zzbbwVar, "createCalendarEvent");
        this.zzcuv = map;
        this.zzlk = zzbbwVar.zzxn();
        this.zzdfh = zzdl("description");
        this.zzdfk = zzdl("summary");
        this.zzdfi = zzdm("start_ticks");
        this.zzdfj = zzdm("end_ticks");
        this.zzdfl = zzdl(FirebaseAnalytics.Param.LOCATION);
    }

    private final String zzdl(String str) {
        return TextUtils.isEmpty(this.zzcuv.get(str)) ? "" : this.zzcuv.get(str);
    }

    private final long zzdm(String str) {
        String str2 = this.zzcuv.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    @TargetApi(14)
    final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzdfh);
        data.putExtra("eventLocation", this.zzdfl);
        data.putExtra("description", this.zzdfk);
        long j2 = this.zzdfi;
        if (j2 > -1) {
            data.putExtra("beginTime", j2);
        }
        long j3 = this.zzdfj;
        if (j3 > -1) {
            data.putExtra("endTime", j3);
        }
        data.setFlags(C.ENCODING_PCM_MU_LAW);
        return data;
    }

    public final void execute() {
        if (this.zzlk == null) {
            zzdn("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzkj();
        if (!zzaul.zzas(this.zzlk).zzpp()) {
            zzdn("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzq.zzkj();
        AlertDialog.Builder builderZzar = zzaul.zzar(this.zzlk);
        Resources resources = com.google.android.gms.ads.internal.zzq.zzkn().getResources();
        builderZzar.setTitle(resources != null ? resources.getString(R.string.s5) : "Create calendar event");
        builderZzar.setMessage(resources != null ? resources.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        builderZzar.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzamx(this));
        builderZzar.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzamw(this));
        builderZzar.create().show();
    }
}
