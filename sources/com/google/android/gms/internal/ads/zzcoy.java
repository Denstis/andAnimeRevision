package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcoy implements zzcru<zzcov> {
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcoy(zzddl zzddlVar, Context context) {
        this.zzfoa = zzddlVar;
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcov> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcox
            private final zzcoy zzgev;

            {
                this.zzgev = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgev.zzaly();
            }
        });
    }

    final /* synthetic */ zzcov zzaly() {
        AudioManager audioManager = (AudioManager) this.zzlk.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        return new zzcov(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), com.google.android.gms.ads.internal.zzq.zzko().zzos(), com.google.android.gms.ads.internal.zzq.zzko().zzot());
    }
}
