package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.PlaybackPreparer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.ui.TimeBar;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class PlayerControlView extends FrameLayout {
    public static final int DEFAULT_FAST_FORWARD_MS = 15000;
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_REWIND_MS = 5000;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    private static final long MAX_POSITION_FOR_SEEK_TO_PREVIOUS = 3000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private long[] adGroupTimesMs;
    private final ComponentListener componentListener;
    private ControlDispatcher controlDispatcher;
    private final TextView durationView;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;
    private final View fastForwardButton;
    private int fastForwardMs;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private final Runnable hideAction;
    private long hideAtMs;
    private boolean isAttachedToWindow;
    private boolean multiWindowTimeBar;
    private final View nextButton;
    private final View pauseButton;
    private final Timeline.Period period;
    private final View playButton;
    private PlaybackPreparer playbackPreparer;
    private boolean[] playedAdGroups;
    private Player player;
    private final TextView positionView;
    private final View previousButton;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final View rewindButton;
    private int rewindMs;
    private boolean scrubbing;
    private boolean showMultiWindowTimeBar;
    private boolean showShuffleButton;
    private int showTimeoutMs;
    private final View shuffleButton;
    private final TimeBar timeBar;
    private final Runnable updateProgressAction;
    private VisibilityListener visibilityListener;
    private final Timeline.Window window;

    private final class ComponentListener implements Player.EventListener, TimeBar.OnScrubListener, View.OnClickListener {
        private ComponentListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ControlDispatcher controlDispatcher;
            Player player;
            if (PlayerControlView.this.player != null) {
                if (PlayerControlView.this.nextButton == view) {
                    PlayerControlView.this.next();
                    return;
                }
                if (PlayerControlView.this.previousButton == view) {
                    PlayerControlView.this.previous();
                    return;
                }
                if (PlayerControlView.this.fastForwardButton == view) {
                    PlayerControlView.this.fastForward();
                    return;
                }
                if (PlayerControlView.this.rewindButton == view) {
                    PlayerControlView.this.rewind();
                    return;
                }
                boolean z = true;
                if (PlayerControlView.this.playButton == view) {
                    if (PlayerControlView.this.player.getPlaybackState() == 1) {
                        if (PlayerControlView.this.playbackPreparer != null) {
                            PlayerControlView.this.playbackPreparer.preparePlayback();
                        }
                    } else if (PlayerControlView.this.player.getPlaybackState() == 4) {
                        PlayerControlView.this.controlDispatcher.dispatchSeekTo(PlayerControlView.this.player, PlayerControlView.this.player.getCurrentWindowIndex(), C.TIME_UNSET);
                    }
                    controlDispatcher = PlayerControlView.this.controlDispatcher;
                    player = PlayerControlView.this.player;
                } else {
                    if (PlayerControlView.this.pauseButton != view) {
                        if (PlayerControlView.this.repeatToggleButton == view) {
                            PlayerControlView.this.controlDispatcher.dispatchSetRepeatMode(PlayerControlView.this.player, RepeatModeUtil.getNextRepeatMode(PlayerControlView.this.player.getRepeatMode(), PlayerControlView.this.repeatToggleModes));
                            return;
                        } else {
                            if (PlayerControlView.this.shuffleButton == view) {
                                PlayerControlView.this.controlDispatcher.dispatchSetShuffleModeEnabled(PlayerControlView.this.player, true ^ PlayerControlView.this.player.getShuffleModeEnabled());
                                return;
                            }
                            return;
                        }
                    }
                    controlDispatcher = PlayerControlView.this.controlDispatcher;
                    player = PlayerControlView.this.player;
                    z = false;
                }
                controlDispatcher.dispatchSetPlayWhenReady(player, z);
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onLoadingChanged(boolean z) {
            com.google.android.exoplayer2.b.$default$onLoadingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            com.google.android.exoplayer2.b.$default$onPlaybackParametersChanged(this, playbackParameters);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            com.google.android.exoplayer2.b.$default$onPlayerError(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i2) {
            PlayerControlView.this.updatePlayPauseButton();
            PlayerControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPositionDiscontinuity(int i2) {
            PlayerControlView.this.updateNavigation();
            PlayerControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onRepeatModeChanged(int i2) {
            PlayerControlView.this.updateRepeatModeButton();
            PlayerControlView.this.updateNavigation();
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long j2) {
            if (PlayerControlView.this.positionView != null) {
                PlayerControlView.this.positionView.setText(Util.getStringForTime(PlayerControlView.this.formatBuilder, PlayerControlView.this.formatter, j2));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long j2) {
            PlayerControlView.this.scrubbing = true;
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long j2, boolean z) {
            PlayerControlView.this.scrubbing = false;
            if (z || PlayerControlView.this.player == null) {
                return;
            }
            PlayerControlView.this.seekToTimeBarPosition(j2);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekProcessed() {
            com.google.android.exoplayer2.b.$default$onSeekProcessed(this);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onShuffleModeEnabledChanged(boolean z) {
            PlayerControlView.this.updateShuffleButton();
            PlayerControlView.this.updateNavigation();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onTimelineChanged(Timeline timeline, Object obj, int i2) {
            PlayerControlView.this.updateNavigation();
            PlayerControlView.this.updateTimeBarMode();
            PlayerControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            com.google.android.exoplayer2.b.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
        }
    }

    public interface VisibilityListener {
        void onVisibilityChange(int i2);
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, attributeSet);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) {
        super(context, attributeSet, i2);
        int resourceId = R.layout.exo_player_control_view;
        this.rewindMs = 5000;
        this.fastForwardMs = 15000;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        this.hideAtMs = C.TIME_UNSET;
        this.showShuffleButton = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.PlayerControlView, 0, 0);
            try {
                this.rewindMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_rewind_increment, this.rewindMs);
                this.fastForwardMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_fastforward_increment, this.fastForwardMs);
                this.showTimeoutMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_show_timeout, this.showTimeoutMs);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_controller_layout_id, resourceId);
                this.repeatToggleModes = getRepeatToggleModes(typedArrayObtainStyledAttributes, this.repeatToggleModes);
                this.showShuffleButton = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_shuffle_button, this.showShuffleButton);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.period = new Timeline.Period();
        this.window = new Timeline.Window();
        this.formatBuilder = new StringBuilder();
        this.formatter = new Formatter(this.formatBuilder, Locale.getDefault());
        this.adGroupTimesMs = new long[0];
        this.playedAdGroups = new boolean[0];
        this.extraAdGroupTimesMs = new long[0];
        this.extraPlayedAdGroups = new boolean[0];
        this.componentListener = new ComponentListener();
        this.controlDispatcher = new DefaultControlDispatcher();
        this.updateProgressAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f4040b.updateProgress();
            }
        };
        this.hideAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f4038b.hide();
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        this.durationView = (TextView) findViewById(R.id.exo_duration);
        this.positionView = (TextView) findViewById(R.id.exo_position);
        this.timeBar = (TimeBar) findViewById(R.id.exo_progress);
        TimeBar timeBar = this.timeBar;
        if (timeBar != null) {
            timeBar.addListener(this.componentListener);
        }
        this.playButton = findViewById(R.id.exo_play);
        View view = this.playButton;
        if (view != null) {
            view.setOnClickListener(this.componentListener);
        }
        this.pauseButton = findViewById(R.id.exo_pause);
        View view2 = this.pauseButton;
        if (view2 != null) {
            view2.setOnClickListener(this.componentListener);
        }
        this.previousButton = findViewById(R.id.exo_prev);
        View view3 = this.previousButton;
        if (view3 != null) {
            view3.setOnClickListener(this.componentListener);
        }
        this.nextButton = findViewById(R.id.exo_next);
        View view4 = this.nextButton;
        if (view4 != null) {
            view4.setOnClickListener(this.componentListener);
        }
        this.rewindButton = findViewById(R.id.exo_rew);
        View view5 = this.rewindButton;
        if (view5 != null) {
            view5.setOnClickListener(this.componentListener);
        }
        this.fastForwardButton = findViewById(R.id.exo_ffwd);
        View view6 = this.fastForwardButton;
        if (view6 != null) {
            view6.setOnClickListener(this.componentListener);
        }
        this.repeatToggleButton = (ImageView) findViewById(R.id.exo_repeat_toggle);
        ImageView imageView = this.repeatToggleButton;
        if (imageView != null) {
            imageView.setOnClickListener(this.componentListener);
        }
        this.shuffleButton = findViewById(R.id.exo_shuffle);
        View view7 = this.shuffleButton;
        if (view7 != null) {
            view7.setOnClickListener(this.componentListener);
        }
        Resources resources = context.getResources();
        this.repeatOffButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_off);
        this.repeatOneButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_one);
        this.repeatAllButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_all);
        this.repeatOffButtonContentDescription = resources.getString(R.string.exo_controls_repeat_off_description);
        this.repeatOneButtonContentDescription = resources.getString(R.string.exo_controls_repeat_one_description);
        this.repeatAllButtonContentDescription = resources.getString(R.string.exo_controls_repeat_all_description);
    }

    private static boolean canShowMultiWindowTimeBar(Timeline timeline, Timeline.Window window) {
        if (timeline.getWindowCount() > 100) {
            return false;
        }
        int windowCount = timeline.getWindowCount();
        for (int i2 = 0; i2 < windowCount; i2++) {
            if (timeline.getWindow(i2, window).durationUs == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fastForward() {
        if (this.fastForwardMs <= 0) {
            return;
        }
        long duration = this.player.getDuration();
        long currentPosition = this.player.getCurrentPosition() + ((long) this.fastForwardMs);
        if (duration != C.TIME_UNSET) {
            currentPosition = Math.min(currentPosition, duration);
        }
        seekTo(currentPosition);
    }

    private static int getRepeatToggleModes(TypedArray typedArray, int i2) {
        return typedArray.getInt(R.styleable.PlayerControlView_repeat_toggle_modes, i2);
    }

    private void hideAfterTimeout() {
        removeCallbacks(this.hideAction);
        if (this.showTimeoutMs <= 0) {
            this.hideAtMs = C.TIME_UNSET;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i2 = this.showTimeoutMs;
        this.hideAtMs = jUptimeMillis + ((long) i2);
        if (this.isAttachedToWindow) {
            postDelayed(this.hideAction, i2);
        }
    }

    @SuppressLint({"InlinedApi"})
    private static boolean isHandledMediaKey(int i2) {
        return i2 == 90 || i2 == 89 || i2 == 85 || i2 == 126 || i2 == 127 || i2 == 87 || i2 == 88;
    }

    private boolean isPlaying() {
        Player player = this.player;
        return (player == null || player.getPlaybackState() == 4 || this.player.getPlaybackState() == 1 || !this.player.getPlayWhenReady()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (currentTimeline.isEmpty() || this.player.isPlayingAd()) {
            return;
        }
        int currentWindowIndex = this.player.getCurrentWindowIndex();
        int nextWindowIndex = this.player.getNextWindowIndex();
        if (nextWindowIndex != -1) {
            seekTo(nextWindowIndex, C.TIME_UNSET);
        } else if (currentTimeline.getWindow(currentWindowIndex, this.window).isDynamic) {
            seekTo(currentWindowIndex, C.TIME_UNSET);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r1.isSeekable == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void previous() {
        /*
            r6 = this;
            com.google.android.exoplayer2.Player r0 = r6.player
            com.google.android.exoplayer2.Timeline r0 = r0.getCurrentTimeline()
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L4d
            com.google.android.exoplayer2.Player r1 = r6.player
            boolean r1 = r1.isPlayingAd()
            if (r1 == 0) goto L15
            goto L4d
        L15:
            com.google.android.exoplayer2.Player r1 = r6.player
            int r1 = r1.getCurrentWindowIndex()
            com.google.android.exoplayer2.Timeline$Window r2 = r6.window
            r0.getWindow(r1, r2)
            com.google.android.exoplayer2.Player r0 = r6.player
            int r0 = r0.getPreviousWindowIndex()
            r1 = -1
            if (r0 == r1) goto L48
            com.google.android.exoplayer2.Player r1 = r6.player
            long r1 = r1.getCurrentPosition()
            r3 = 3000(0xbb8, double:1.482E-320)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L3f
            com.google.android.exoplayer2.Timeline$Window r1 = r6.window
            boolean r2 = r1.isDynamic
            if (r2 == 0) goto L48
            boolean r1 = r1.isSeekable
            if (r1 != 0) goto L48
        L3f:
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.seekTo(r0, r1)
            goto L4d
        L48:
            r0 = 0
            r6.seekTo(r0)
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerControlView.previous():void");
    }

    private void requestPlayPauseFocus() {
        View view;
        View view2;
        boolean zIsPlaying = isPlaying();
        if (!zIsPlaying && (view2 = this.playButton) != null) {
            view2.requestFocus();
        } else {
            if (!zIsPlaying || (view = this.pauseButton) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rewind() {
        if (this.rewindMs <= 0) {
            return;
        }
        seekTo(Math.max(this.player.getCurrentPosition() - ((long) this.rewindMs), 0L));
    }

    private void seekTo(int i2, long j2) {
        if (this.controlDispatcher.dispatchSeekTo(this.player, i2, j2)) {
            return;
        }
        updateProgress();
    }

    private void seekTo(long j2) {
        seekTo(this.player.getCurrentWindowIndex(), j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekToTimeBarPosition(long j2) {
        int currentWindowIndex;
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (this.multiWindowTimeBar && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            currentWindowIndex = 0;
            while (true) {
                long durationMs = currentTimeline.getWindow(currentWindowIndex, this.window).getDurationMs();
                if (j2 < durationMs) {
                    break;
                }
                if (currentWindowIndex == windowCount - 1) {
                    j2 = durationMs;
                    break;
                } else {
                    j2 -= durationMs;
                    currentWindowIndex++;
                }
            }
        } else {
            currentWindowIndex = this.player.getCurrentWindowIndex();
        }
        seekTo(currentWindowIndex, j2);
    }

    private void setButtonEnabled(boolean z, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? 1.0f : 0.3f);
        view.setVisibility(0);
    }

    private void updateAll() {
        updatePlayPauseButton();
        updateNavigation();
        updateRepeatModeButton();
        updateShuffleButton();
        updateProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateNavigation() {
        /*
            r6 = this;
            boolean r0 = r6.isVisible()
            if (r0 == 0) goto L8d
            boolean r0 = r6.isAttachedToWindow
            if (r0 != 0) goto Lc
            goto L8d
        Lc:
            com.google.android.exoplayer2.Player r0 = r6.player
            if (r0 == 0) goto L15
            com.google.android.exoplayer2.Timeline r0 = r0.getCurrentTimeline()
            goto L16
        L15:
            r0 = 0
        L16:
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L22
            boolean r3 = r0.isEmpty()
            if (r3 != 0) goto L22
            r3 = 1
            goto L23
        L22:
            r3 = 0
        L23:
            if (r3 == 0) goto L5e
            com.google.android.exoplayer2.Player r3 = r6.player
            boolean r3 = r3.isPlayingAd()
            if (r3 != 0) goto L5e
            com.google.android.exoplayer2.Player r3 = r6.player
            int r3 = r3.getCurrentWindowIndex()
            com.google.android.exoplayer2.Timeline$Window r4 = r6.window
            r0.getWindow(r3, r4)
            com.google.android.exoplayer2.Timeline$Window r0 = r6.window
            boolean r3 = r0.isSeekable
            if (r3 != 0) goto L4d
            boolean r0 = r0.isDynamic
            if (r0 == 0) goto L4d
            com.google.android.exoplayer2.Player r0 = r6.player
            boolean r0 = r0.hasPrevious()
            if (r0 == 0) goto L4b
            goto L4d
        L4b:
            r0 = 0
            goto L4e
        L4d:
            r0 = 1
        L4e:
            com.google.android.exoplayer2.Timeline$Window r4 = r6.window
            boolean r4 = r4.isDynamic
            if (r4 != 0) goto L5c
            com.google.android.exoplayer2.Player r4 = r6.player
            boolean r4 = r4.hasNext()
            if (r4 == 0) goto L60
        L5c:
            r4 = 1
            goto L61
        L5e:
            r0 = 0
            r3 = 0
        L60:
            r4 = 0
        L61:
            android.view.View r5 = r6.previousButton
            r6.setButtonEnabled(r0, r5)
            android.view.View r0 = r6.nextButton
            r6.setButtonEnabled(r4, r0)
            int r0 = r6.fastForwardMs
            if (r0 <= 0) goto L73
            if (r3 == 0) goto L73
            r0 = 1
            goto L74
        L73:
            r0 = 0
        L74:
            android.view.View r4 = r6.fastForwardButton
            r6.setButtonEnabled(r0, r4)
            int r0 = r6.rewindMs
            if (r0 <= 0) goto L80
            if (r3 == 0) goto L80
            goto L81
        L80:
            r1 = 0
        L81:
            android.view.View r0 = r6.rewindButton
            r6.setButtonEnabled(r1, r0)
            com.google.android.exoplayer2.ui.TimeBar r0 = r6.timeBar
            if (r0 == 0) goto L8d
            r0.setEnabled(r3)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerControlView.updateNavigation():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayPauseButton() {
        boolean z;
        if (isVisible() && this.isAttachedToWindow) {
            boolean zIsPlaying = isPlaying();
            View view = this.playButton;
            if (view != null) {
                z = (zIsPlaying && view.isFocused()) | false;
                this.playButton.setVisibility(zIsPlaying ? 8 : 0);
            } else {
                z = false;
            }
            View view2 = this.pauseButton;
            if (view2 != null) {
                z |= !zIsPlaying && view2.isFocused();
                this.pauseButton.setVisibility(zIsPlaying ? 0 : 8);
            }
            if (z) {
                requestPlayPauseFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        long contentPosition;
        long contentBufferedPosition;
        long j2;
        long jUsToMs;
        int i2;
        Timeline.Window window;
        int i3;
        if (isVisible() && this.isAttachedToWindow) {
            Player player = this.player;
            long jUsToMs2 = 0;
            boolean z = true;
            if (player != null) {
                Timeline currentTimeline = player.getCurrentTimeline();
                if (currentTimeline.isEmpty()) {
                    j2 = 0;
                    jUsToMs = 0;
                    i2 = 0;
                } else {
                    int currentWindowIndex = this.player.getCurrentWindowIndex();
                    int i4 = this.multiWindowTimeBar ? 0 : currentWindowIndex;
                    int windowCount = this.multiWindowTimeBar ? currentTimeline.getWindowCount() - 1 : currentWindowIndex;
                    j2 = 0;
                    jUsToMs = 0;
                    i2 = 0;
                    while (true) {
                        if (i4 > windowCount) {
                            break;
                        }
                        if (i4 == currentWindowIndex) {
                            jUsToMs = C.usToMs(j2);
                        }
                        currentTimeline.getWindow(i4, this.window);
                        Timeline.Window window2 = this.window;
                        int i5 = i4;
                        if (window2.durationUs == C.TIME_UNSET) {
                            Assertions.checkState(this.multiWindowTimeBar ^ z);
                            break;
                        }
                        int i6 = window2.firstPeriodIndex;
                        while (true) {
                            window = this.window;
                            if (i6 <= window.lastPeriodIndex) {
                                currentTimeline.getPeriod(i6, this.period);
                                int adGroupCount = this.period.getAdGroupCount();
                                int i7 = i2;
                                int i8 = 0;
                                while (i8 < adGroupCount) {
                                    long adGroupTimeUs = this.period.getAdGroupTimeUs(i8);
                                    if (adGroupTimeUs == Long.MIN_VALUE) {
                                        i3 = currentWindowIndex;
                                        long j3 = this.period.durationUs;
                                        if (j3 == C.TIME_UNSET) {
                                            i8++;
                                            currentWindowIndex = i3;
                                        } else {
                                            adGroupTimeUs = j3;
                                        }
                                    } else {
                                        i3 = currentWindowIndex;
                                    }
                                    long positionInWindowUs = adGroupTimeUs + this.period.getPositionInWindowUs();
                                    if (positionInWindowUs >= 0 && positionInWindowUs <= this.window.durationUs) {
                                        long[] jArr = this.adGroupTimesMs;
                                        if (i7 == jArr.length) {
                                            int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                            this.adGroupTimesMs = Arrays.copyOf(this.adGroupTimesMs, length);
                                            this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                        }
                                        this.adGroupTimesMs[i7] = C.usToMs(j2 + positionInWindowUs);
                                        this.playedAdGroups[i7] = this.period.hasPlayedAdGroup(i8);
                                        i7++;
                                    }
                                    i8++;
                                    currentWindowIndex = i3;
                                }
                                i6++;
                                i2 = i7;
                            }
                        }
                        j2 += window.durationUs;
                        i4 = i5 + 1;
                        currentWindowIndex = currentWindowIndex;
                        z = true;
                    }
                }
                jUsToMs2 = C.usToMs(j2);
                contentPosition = this.player.getContentPosition() + jUsToMs;
                contentBufferedPosition = this.player.getContentBufferedPosition() + jUsToMs;
                if (this.timeBar != null) {
                    int length2 = this.extraAdGroupTimesMs.length;
                    int i9 = i2 + length2;
                    long[] jArr2 = this.adGroupTimesMs;
                    if (i9 > jArr2.length) {
                        this.adGroupTimesMs = Arrays.copyOf(jArr2, i9);
                        this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, i9);
                    }
                    System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, i2, length2);
                    System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, i2, length2);
                    this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i9);
                }
            } else {
                contentPosition = 0;
                contentBufferedPosition = 0;
            }
            TextView textView = this.durationView;
            if (textView != null) {
                textView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, jUsToMs2));
            }
            TextView textView2 = this.positionView;
            if (textView2 != null && !this.scrubbing) {
                textView2.setText(Util.getStringForTime(this.formatBuilder, this.formatter, contentPosition));
            }
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setPosition(contentPosition);
                this.timeBar.setBufferedPosition(contentBufferedPosition);
                this.timeBar.setDuration(jUsToMs2);
            }
            removeCallbacks(this.updateProgressAction);
            Player player2 = this.player;
            int playbackState = player2 == null ? 1 : player2.getPlaybackState();
            if (playbackState == 1 || playbackState == 4) {
                return;
            }
            long j4 = 1000;
            if (this.player.getPlayWhenReady() && playbackState == 3) {
                float f2 = this.player.getPlaybackParameters().speed;
                if (f2 > 0.1f) {
                    if (f2 <= 5.0f) {
                        long jMax = 1000 / Math.max(1, Math.round(1.0f / f2));
                        long j5 = jMax - (contentPosition % jMax);
                        if (j5 < jMax / 5) {
                            j5 += jMax;
                        }
                        if (f2 != 1.0f) {
                            j5 = (long) (j5 / f2);
                        }
                        j4 = j5;
                    } else {
                        j4 = 200;
                    }
                }
            }
            postDelayed(this.updateProgressAction, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRepeatModeButton() {
        ImageView imageView;
        ImageView imageView2;
        String str;
        if (isVisible() && this.isAttachedToWindow && (imageView = this.repeatToggleButton) != null) {
            if (this.repeatToggleModes == 0) {
                imageView.setVisibility(8);
                return;
            }
            if (this.player == null) {
                setButtonEnabled(false, imageView);
                return;
            }
            setButtonEnabled(true, imageView);
            int repeatMode = this.player.getRepeatMode();
            if (repeatMode == 0) {
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                imageView2 = this.repeatToggleButton;
                str = this.repeatOffButtonContentDescription;
            } else {
                if (repeatMode != 1) {
                    if (repeatMode == 2) {
                        this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                        imageView2 = this.repeatToggleButton;
                        str = this.repeatAllButtonContentDescription;
                    }
                    this.repeatToggleButton.setVisibility(0);
                }
                this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                imageView2 = this.repeatToggleButton;
                str = this.repeatOneButtonContentDescription;
            }
            imageView2.setContentDescription(str);
            this.repeatToggleButton.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShuffleButton() {
        View view;
        if (isVisible() && this.isAttachedToWindow && (view = this.shuffleButton) != null) {
            if (!this.showShuffleButton) {
                view.setVisibility(8);
                return;
            }
            Player player = this.player;
            if (player == null) {
                setButtonEnabled(false, view);
                return;
            }
            view.setAlpha(player.getShuffleModeEnabled() ? 1.0f : 0.3f);
            this.shuffleButton.setEnabled(true);
            this.shuffleButton.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimeBarMode() {
        Player player = this.player;
        if (player == null) {
            return;
        }
        this.multiWindowTimeBar = this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(player.getCurrentTimeline(), this.window);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (this.player == null || !isHandledMediaKey(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                fastForward();
            } else if (keyCode == 89) {
                rewind();
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 85) {
                    this.controlDispatcher.dispatchSetPlayWhenReady(this.player, !r0.getPlayWhenReady());
                } else if (keyCode == 87) {
                    next();
                } else if (keyCode == 88) {
                    previous();
                } else if (keyCode == 126) {
                    this.controlDispatcher.dispatchSetPlayWhenReady(this.player, true);
                } else if (keyCode == 127) {
                    this.controlDispatcher.dispatchSetPlayWhenReady(this.player, false);
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.hideAction);
        } else if (motionEvent.getAction() == 1) {
            hideAfterTimeout();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public Player getPlayer() {
        return this.player;
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public boolean getShowShuffleButton() {
        return this.showShuffleButton;
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            VisibilityListener visibilityListener = this.visibilityListener;
            if (visibilityListener != null) {
                visibilityListener.onVisibilityChange(getVisibility());
            }
            removeCallbacks(this.updateProgressAction);
            removeCallbacks(this.hideAction);
            this.hideAtMs = C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        long j2 = this.hideAtMs;
        if (j2 != C.TIME_UNSET) {
            long jUptimeMillis = j2 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.hideAction, jUptimeMillis);
            }
        } else if (isVisible()) {
            hideAfterTimeout();
        }
        updateAll();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        removeCallbacks(this.hideAction);
    }

    public void setControlDispatcher(ControlDispatcher controlDispatcher) {
        if (controlDispatcher == null) {
            controlDispatcher = new DefaultControlDispatcher();
        }
        this.controlDispatcher = controlDispatcher;
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        if (jArr == null) {
            this.extraAdGroupTimesMs = new long[0];
            this.extraPlayedAdGroups = new boolean[0];
        } else {
            Assertions.checkArgument(jArr.length == zArr.length);
            this.extraAdGroupTimesMs = jArr;
            this.extraPlayedAdGroups = zArr;
        }
        updateProgress();
    }

    public void setFastForwardIncrementMs(int i2) {
        this.fastForwardMs = i2;
        updateNavigation();
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        this.playbackPreparer = playbackPreparer;
    }

    public void setPlayer(Player player) {
        boolean z = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z = false;
        }
        Assertions.checkArgument(z);
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.componentListener);
        }
        updateAll();
    }

    public void setRepeatToggleModes(int i2) {
        int i3;
        ControlDispatcher controlDispatcher;
        Player player;
        this.repeatToggleModes = i2;
        Player player2 = this.player;
        if (player2 != null) {
            int repeatMode = player2.getRepeatMode();
            if (i2 != 0 || repeatMode == 0) {
                i3 = 2;
                if (i2 == 1 && repeatMode == 2) {
                    this.controlDispatcher.dispatchSetRepeatMode(this.player, 1);
                } else if (i2 == 2 && repeatMode == 1) {
                    controlDispatcher = this.controlDispatcher;
                    player = this.player;
                }
            } else {
                controlDispatcher = this.controlDispatcher;
                player = this.player;
                i3 = 0;
            }
            controlDispatcher.dispatchSetRepeatMode(player, i3);
        }
        updateRepeatModeButton();
    }

    public void setRewindIncrementMs(int i2) {
        this.rewindMs = i2;
        updateNavigation();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.showMultiWindowTimeBar = z;
        updateTimeBarMode();
    }

    public void setShowShuffleButton(boolean z) {
        this.showShuffleButton = z;
        updateShuffleButton();
    }

    public void setShowTimeoutMs(int i2) {
        this.showTimeoutMs = i2;
        if (isVisible()) {
            hideAfterTimeout();
        }
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        this.visibilityListener = visibilityListener;
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            VisibilityListener visibilityListener = this.visibilityListener;
            if (visibilityListener != null) {
                visibilityListener.onVisibilityChange(getVisibility());
            }
            updateAll();
            requestPlayPauseFocus();
        }
        hideAfterTimeout();
    }
}
