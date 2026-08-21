package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class AudioFocusManager {
    private static final int AUDIO_FOCUS_STATE_HAVE_FOCUS = 1;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = 2;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK = 3;
    private static final int AUDIO_FOCUS_STATE_LOST_FOCUS = -1;
    private static final int AUDIO_FOCUS_STATE_NO_FOCUS = 0;
    public static final int PLAYER_COMMAND_DO_NOT_PLAY = -1;
    public static final int PLAYER_COMMAND_PLAY_WHEN_READY = 1;
    public static final int PLAYER_COMMAND_WAIT_FOR_CALLBACK = 0;
    private static final String TAG = "AudioFocusManager";
    private static final float VOLUME_MULTIPLIER_DEFAULT = 1.0f;
    private static final float VOLUME_MULTIPLIER_DUCK = 0.2f;
    private AudioAttributes audioAttributes;
    private AudioFocusRequest audioFocusRequest;
    private int audioFocusState;
    private final AudioManager audioManager;
    private int focusGain;
    private final AudioFocusListener focusListener;
    private final PlayerControl playerControl;
    private boolean rebuildAudioFocusRequest;
    private float volumeMultiplier = VOLUME_MULTIPLIER_DEFAULT;

    private class AudioFocusListener implements AudioManager.OnAudioFocusChangeListener {
        private AudioFocusListener() {
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onAudioFocusChange(int r6) {
            /*
                r5 = this;
                r0 = -3
                r1 = 3
                r2 = 2
                r3 = -1
                r4 = 1
                if (r6 == r0) goto L37
                r0 = -2
                if (r6 == r0) goto L31
                if (r6 == r3) goto L2b
                if (r6 == r4) goto L25
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Unknown focus change type: "
                r0.append(r1)
                r0.append(r6)
                java.lang.String r6 = r0.toString()
                java.lang.String r0 = "AudioFocusManager"
                com.google.android.exoplayer2.util.Log.w(r0, r6)
                return
            L25:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager.access$102(r6, r4)
                goto L45
            L2b:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager.access$102(r6, r3)
                goto L45
            L31:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager.access$102(r6, r2)
                goto L45
            L37:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                boolean r6 = com.google.android.exoplayer2.audio.AudioFocusManager.access$200(r6)
                if (r6 == 0) goto L40
                goto L31
            L40:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager.access$102(r6, r1)
            L45:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                int r6 = com.google.android.exoplayer2.audio.AudioFocusManager.access$100(r6)
                if (r6 == r3) goto L88
                if (r6 == 0) goto L96
                if (r6 == r4) goto L7e
                if (r6 == r2) goto L73
                if (r6 != r1) goto L56
                goto L96
            L56:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Unknown audio focus state: "
                r0.append(r1)
                com.google.android.exoplayer2.audio.AudioFocusManager r1 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                int r1 = com.google.android.exoplayer2.audio.AudioFocusManager.access$100(r1)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                throw r6
            L73:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager$PlayerControl r6 = com.google.android.exoplayer2.audio.AudioFocusManager.access$300(r6)
                r0 = 0
                r6.executePlayerCommand(r0)
                goto L96
            L7e:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager$PlayerControl r6 = com.google.android.exoplayer2.audio.AudioFocusManager.access$300(r6)
                r6.executePlayerCommand(r4)
                goto L96
            L88:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager$PlayerControl r6 = com.google.android.exoplayer2.audio.AudioFocusManager.access$300(r6)
                r6.executePlayerCommand(r3)
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager.access$400(r6, r4)
            L96:
                com.google.android.exoplayer2.audio.AudioFocusManager r6 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                int r6 = com.google.android.exoplayer2.audio.AudioFocusManager.access$100(r6)
                if (r6 != r1) goto La2
                r6 = 1045220557(0x3e4ccccd, float:0.2)
                goto La4
            La2:
                r6 = 1065353216(0x3f800000, float:1.0)
            La4:
                com.google.android.exoplayer2.audio.AudioFocusManager r0 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                float r0 = com.google.android.exoplayer2.audio.AudioFocusManager.access$500(r0)
                int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r0 == 0) goto Lbc
                com.google.android.exoplayer2.audio.AudioFocusManager r0 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager.access$502(r0, r6)
                com.google.android.exoplayer2.audio.AudioFocusManager r0 = com.google.android.exoplayer2.audio.AudioFocusManager.this
                com.google.android.exoplayer2.audio.AudioFocusManager$PlayerControl r0 = com.google.android.exoplayer2.audio.AudioFocusManager.access$300(r0)
                r0.setVolumeMultiplier(r6)
            Lbc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioFocusManager.AudioFocusListener.onAudioFocusChange(int):void");
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerCommand {
    }

    public interface PlayerControl {
        void executePlayerCommand(int i2);

        void setVolumeMultiplier(float f2);
    }

    public AudioFocusManager(Context context, PlayerControl playerControl) {
        this.audioManager = context == null ? null : (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.playerControl = playerControl;
        this.focusListener = new AudioFocusListener();
        this.audioFocusState = 0;
    }

    private void abandonAudioFocus() {
        abandonAudioFocus(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abandonAudioFocus(boolean z) {
        if (this.focusGain == 0 && this.audioFocusState == 0) {
            return;
        }
        if (this.focusGain != 1 || this.audioFocusState == -1 || z) {
            if (Util.SDK_INT >= 26) {
                abandonAudioFocusV26();
            } else {
                abandonAudioFocusDefault();
            }
            this.audioFocusState = 0;
        }
    }

    private void abandonAudioFocusDefault() {
        ((AudioManager) Assertions.checkNotNull(this.audioManager)).abandonAudioFocus(this.focusListener);
    }

    private void abandonAudioFocusV26() {
        if (this.audioFocusRequest != null) {
            ((AudioManager) Assertions.checkNotNull(this.audioManager)).abandonAudioFocusRequest(this.audioFocusRequest);
        }
    }

    private static int convertAudioAttributesToFocusGain(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            return 0;
        }
        switch (audioAttributes.usage) {
            case 0:
                Log.w(TAG, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (audioAttributes.contentType == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                Log.w(TAG, "Unidentified audio usage: " + audioAttributes.usage);
                return 0;
            case 16:
                return Util.SDK_INT >= 19 ? 4 : 2;
        }
    }

    private int handleIdle(boolean z) {
        return z ? 1 : -1;
    }

    private int requestAudioFocus() {
        if (this.focusGain == 0) {
            if (this.audioFocusState != 0) {
                abandonAudioFocus(true);
            }
            return 1;
        }
        if (this.audioFocusState == 0) {
            this.audioFocusState = (Util.SDK_INT >= 26 ? requestAudioFocusV26() : requestAudioFocusDefault()) == 1 ? 1 : 0;
        }
        int i2 = this.audioFocusState;
        if (i2 == 0) {
            return -1;
        }
        return i2 == 2 ? 0 : 1;
    }

    private int requestAudioFocusDefault() {
        return ((AudioManager) Assertions.checkNotNull(this.audioManager)).requestAudioFocus(this.focusListener, Util.getStreamTypeForAudioUsage(((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).usage), this.focusGain);
    }

    private int requestAudioFocusV26() {
        if (this.audioFocusRequest == null || this.rebuildAudioFocusRequest) {
            AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
            this.audioFocusRequest = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.focusGain) : new AudioFocusRequest.Builder(audioFocusRequest)).setAudioAttributes(((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).getAudioAttributesV21()).setWillPauseWhenDucked(willPauseWhenDucked()).setOnAudioFocusChangeListener(this.focusListener).build();
            this.rebuildAudioFocusRequest = false;
        }
        return ((AudioManager) Assertions.checkNotNull(this.audioManager)).requestAudioFocus(this.audioFocusRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean willPauseWhenDucked() {
        AudioAttributes audioAttributes = this.audioAttributes;
        return audioAttributes != null && audioAttributes.contentType == 1;
    }

    public float getVolumeMultiplier() {
        return this.volumeMultiplier;
    }

    public int handlePrepare(boolean z) {
        if (this.audioManager == null) {
            return 1;
        }
        if (z) {
            return requestAudioFocus();
        }
        return -1;
    }

    public int handleSetPlayWhenReady(boolean z, int i2) {
        if (this.audioManager == null) {
            return 1;
        }
        if (z) {
            return i2 == 1 ? handleIdle(z) : requestAudioFocus();
        }
        abandonAudioFocus();
        return -1;
    }

    public void handleStop() {
        if (this.audioManager == null) {
            return;
        }
        abandonAudioFocus(true);
    }

    public int setAudioAttributes(AudioAttributes audioAttributes, boolean z, int i2) {
        if (this.audioAttributes == null && audioAttributes == null) {
            return z ? 1 : -1;
        }
        Assertions.checkNotNull(this.audioManager, "SimpleExoPlayer must be created with a context to handle audio focus.");
        if (!Util.areEqual(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            this.focusGain = convertAudioAttributesToFocusGain(audioAttributes);
            int i3 = this.focusGain;
            Assertions.checkArgument(i3 == 1 || i3 == 0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
            if (z && (i2 == 2 || i2 == 3)) {
                return requestAudioFocus();
            }
        }
        return i2 == 1 ? handleIdle(z) : handlePrepare(z);
    }
}
