package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
class zzhq {
    private int zzafn;
    protected AudioTrack zzahy;
    private boolean zzajq;
    private long zzajr;
    private long zzajs;
    private long zzajt;
    private long zzaju;
    private long zzajv;
    private long zzajw;

    private zzhq() {
    }

    /* synthetic */ zzhq(zzhr zzhrVar) {
        this();
    }

    public final void pause() {
        if (this.zzaju != C.TIME_UNSET) {
            return;
        }
        this.zzahy.pause();
    }

    public void zza(AudioTrack audioTrack, boolean z) {
        this.zzahy = audioTrack;
        this.zzajq = z;
        this.zzaju = C.TIME_UNSET;
        this.zzajr = 0L;
        this.zzajs = 0L;
        this.zzajt = 0L;
        if (audioTrack != null) {
            this.zzafn = audioTrack.getSampleRate();
        }
    }

    public final void zzds(long j2) {
        this.zzajv = zzfi();
        this.zzaju = SystemClock.elapsedRealtime() * 1000;
        this.zzajw = j2;
        this.zzahy.stop();
    }

    public final long zzfi() {
        if (this.zzaju != C.TIME_UNSET) {
            return Math.min(this.zzajw, this.zzajv + ((((SystemClock.elapsedRealtime() * 1000) - this.zzaju) * ((long) this.zzafn)) / 1000000));
        }
        int playState = this.zzahy.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & ((long) this.zzahy.getPlaybackHeadPosition());
        if (this.zzajq) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.zzajt = this.zzajr;
            }
            playbackHeadPosition += this.zzajt;
        }
        if (this.zzajr > playbackHeadPosition) {
            this.zzajs++;
        }
        this.zzajr = playbackHeadPosition;
        return playbackHeadPosition + (this.zzajs << 32);
    }

    public final long zzfj() {
        return (zzfi() * 1000000) / ((long) this.zzafn);
    }

    public boolean zzfk() {
        return false;
    }

    public long zzfl() {
        throw new UnsupportedOperationException();
    }

    public long zzfm() {
        throw new UnsupportedOperationException();
    }
}
