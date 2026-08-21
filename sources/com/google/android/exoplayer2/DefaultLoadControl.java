package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_MS = 15000;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = true;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackUs;
    private boolean isBuffering;
    private final long maxBufferUs;
    private final long minBufferUs;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final PriorityTaskManager priorityTaskManager;
    private final boolean retainBackBufferFromKeyframe;
    private final int targetBufferBytesOverwrite;
    private int targetBufferSize;

    public static final class Builder {
        private boolean createDefaultLoadControlCalled;
        private DefaultAllocator allocator = null;
        private int minBufferMs = 15000;
        private int maxBufferMs = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;
        private int bufferForPlaybackMs = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
        private int bufferForPlaybackAfterRebufferMs = 5000;
        private int targetBufferBytes = -1;
        private boolean prioritizeTimeOverSizeThresholds = true;
        private PriorityTaskManager priorityTaskManager = null;
        private int backBufferDurationMs = 0;
        private boolean retainBackBufferFromKeyframe = false;

        public DefaultLoadControl createDefaultLoadControl() {
            this.createDefaultLoadControlCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, C.DEFAULT_BUFFER_SEGMENT_SIZE);
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.priorityTaskManager, this.backBufferDurationMs, this.retainBackBufferFromKeyframe);
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBackBuffer(int i2, boolean z) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.backBufferDurationMs = i2;
            this.retainBackBufferFromKeyframe = z;
            return this;
        }

        public Builder setBufferDurationsMs(int i2, int i3, int i4, int i5) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.minBufferMs = i2;
            this.maxBufferMs = i3;
            this.bufferForPlaybackMs = i4;
            this.bufferForPlaybackAfterRebufferMs = i5;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.prioritizeTimeOverSizeThresholds = z;
            return this;
        }

        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        public Builder setTargetBufferBytes(int i2) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.targetBufferBytes = i2;
            return this;
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, C.DEFAULT_BUFFER_SEGMENT_SIZE));
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator) {
        this(defaultAllocator, 15000, DEFAULT_MAX_BUFFER_MS, DEFAULT_BUFFER_FOR_PLAYBACK_MS, 5000, -1, true);
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i2, int i3, int i4, int i5, int i6, boolean z) {
        this(defaultAllocator, i2, i3, i4, i5, i6, z, null);
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i2, int i3, int i4, int i5, int i6, boolean z, PriorityTaskManager priorityTaskManager) {
        this(defaultAllocator, i2, i3, i4, i5, i6, z, priorityTaskManager, 0, false);
    }

    protected DefaultLoadControl(DefaultAllocator defaultAllocator, int i2, int i3, int i4, int i5, int i6, boolean z, PriorityTaskManager priorityTaskManager, int i7, boolean z2) {
        assertGreaterOrEqual(i4, 0, "bufferForPlaybackMs", "0");
        assertGreaterOrEqual(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        assertGreaterOrEqual(i2, i4, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i2, i5, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i3, i2, "maxBufferMs", "minBufferMs");
        assertGreaterOrEqual(i7, 0, "backBufferDurationMs", "0");
        this.allocator = defaultAllocator;
        this.minBufferUs = C.msToUs(i2);
        this.maxBufferUs = C.msToUs(i3);
        this.bufferForPlaybackUs = C.msToUs(i4);
        this.bufferForPlaybackAfterRebufferUs = C.msToUs(i5);
        this.targetBufferBytesOverwrite = i6;
        this.prioritizeTimeOverSizeThresholds = z;
        this.priorityTaskManager = priorityTaskManager;
        this.backBufferDurationUs = C.msToUs(i7);
        this.retainBackBufferFromKeyframe = z2;
    }

    private static void assertGreaterOrEqual(int i2, int i3, String str, String str2) {
        Assertions.checkArgument(i2 >= i3, str + " cannot be less than " + str2);
    }

    private void reset(boolean z) {
        this.targetBufferSize = 0;
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null && this.isBuffering) {
            priorityTaskManager.remove(0);
        }
        this.isBuffering = false;
        if (z) {
            this.allocator.reset();
        }
    }

    protected int calculateTargetBufferSize(Renderer[] rendererArr, TrackSelectionArray trackSelectionArray) {
        int defaultBufferSize = 0;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            if (trackSelectionArray.get(i2) != null) {
                defaultBufferSize += Util.getDefaultBufferSize(rendererArr[i2].getTrackType());
            }
        }
        return defaultBufferSize;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public long getBackBufferDurationUs() {
        return this.backBufferDurationUs;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onPrepared() {
        reset(false);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onReleased() {
        reset(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onStopped() {
        reset(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        int iCalculateTargetBufferSize = this.targetBufferBytesOverwrite;
        if (iCalculateTargetBufferSize == -1) {
            iCalculateTargetBufferSize = calculateTargetBufferSize(rendererArr, trackSelectionArray);
        }
        this.targetBufferSize = iCalculateTargetBufferSize;
        this.allocator.setTargetBufferSize(this.targetBufferSize);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean retainBackBufferFromKeyframe() {
        return this.retainBackBufferFromKeyframe;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldContinueLoading(long j2, float f2) {
        boolean z;
        boolean z2 = true;
        boolean z3 = this.allocator.getTotalBytesAllocated() >= this.targetBufferSize;
        boolean z4 = this.isBuffering;
        long jMin = this.minBufferUs;
        if (f2 > 1.0f) {
            jMin = Math.min(Util.getMediaDurationForPlayoutDuration(jMin, f2), this.maxBufferUs);
        }
        if (j2 < jMin) {
            if (!this.prioritizeTimeOverSizeThresholds && z3) {
                z2 = false;
            }
            this.isBuffering = z2;
        } else if (j2 >= this.maxBufferUs || z3) {
            this.isBuffering = false;
        }
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null && (z = this.isBuffering) != z4) {
            if (z) {
                priorityTaskManager.add(0);
            } else {
                priorityTaskManager.remove(0);
            }
        }
        return this.isBuffering;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldStartPlayback(long j2, float f2, boolean z) {
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(j2, f2);
        long j3 = z ? this.bufferForPlaybackAfterRebufferUs : this.bufferForPlaybackUs;
        return j3 <= 0 || playoutDurationForMediaDuration >= j3 || (!this.prioritizeTimeOverSizeThresholds && this.allocator.getTotalBytesAllocated() >= this.targetBufferSize);
    }
}
