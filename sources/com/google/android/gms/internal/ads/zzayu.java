package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public abstract class zzayu extends TextureView implements zzazn {
    protected final zzaze zzdxx;
    protected final zzazo zzdxy;

    public zzayu(Context context) {
        super(context);
        this.zzdxx = new zzaze();
        this.zzdxy = new zzazo(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i2);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f2, float f3);

    public abstract void zza(zzayr zzayrVar);

    public void zzb(String str, String[] strArr) {
        setVideoPath(str);
    }

    public void zzcs(int i2) {
    }

    public void zzct(int i2) {
    }

    public void zzcu(int i2) {
    }

    public void zzcv(int i2) {
    }

    public void zzcw(int i2) {
    }

    public abstract String zzwq();

    public abstract void zzwu();
}
