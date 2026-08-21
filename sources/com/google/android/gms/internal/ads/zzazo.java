package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import com.google.android.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(14)
public final class zzazo implements AudioManager.OnAudioFocusChangeListener {
    private float zzcw = 1.0f;
    private boolean zzdyg;
    private final AudioManager zzebf;
    private final zzazn zzebg;
    private boolean zzebh;
    private boolean zzebi;

    public zzazo(Context context, zzazn zzaznVar) {
        this.zzebf = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.zzebg = zzaznVar;
    }

    private final void zzxy() {
        boolean z;
        boolean z2;
        boolean z3 = this.zzdyg && !this.zzebi && this.zzcw > 0.0f;
        if (z3 && !(z2 = this.zzebh)) {
            AudioManager audioManager = this.zzebf;
            if (audioManager != null && !z2) {
                this.zzebh = audioManager.requestAudioFocus(this, 3, 2) == 1;
            }
            this.zzebg.zzwu();
            return;
        }
        if (z3 || !(z = this.zzebh)) {
            return;
        }
        AudioManager audioManager2 = this.zzebf;
        if (audioManager2 != null && z) {
            this.zzebh = audioManager2.abandonAudioFocus(this) == 0;
        }
        this.zzebg.zzwu();
    }

    public final float getVolume() {
        float f2 = this.zzebi ? 0.0f : this.zzcw;
        if (this.zzebh) {
            return f2;
        }
        return 0.0f;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i2) {
        this.zzebh = i2 > 0;
        this.zzebg.zzwu();
    }

    public final void setMuted(boolean z) {
        this.zzebi = z;
        zzxy();
    }

    public final void setVolume(float f2) {
        this.zzcw = f2;
        zzxy();
    }

    public final void zzxw() {
        this.zzdyg = true;
        zzxy();
    }

    public final void zzxx() {
        this.zzdyg = false;
        zzxy();
    }
}
