package com.google.android.exoplayer2.analytics;

import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a {
    public static void $default$onAudioAttributesChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
    }

    public static void $default$onAudioSessionId(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2) {
    }

    public static void $default$onAudioUnderrun(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, long j2, long j3) {
    }

    public static void $default$onBandwidthEstimate(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, long j2, long j3) {
    }

    public static void $default$onDecoderDisabled(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, DecoderCounters decoderCounters) {
    }

    public static void $default$onDecoderEnabled(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, DecoderCounters decoderCounters) {
    }

    public static void $default$onDecoderInitialized(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, String str, long j2) {
    }

    public static void $default$onDecoderInputFormatChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, Format format) {
    }

    public static void $default$onDownstreamFormatChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void $default$onDrmKeysLoaded(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onDrmKeysRemoved(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onDrmKeysRestored(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onDrmSessionAcquired(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onDrmSessionManagerError(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    public static void $default$onDrmSessionReleased(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onDroppedVideoFrames(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, long j2) {
    }

    public static void $default$onLoadCanceled(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void $default$onLoadCompleted(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void $default$onLoadError(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z) {
    }

    public static void $default$onLoadStarted(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void $default$onLoadingChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z) {
    }

    public static void $default$onMediaPeriodCreated(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onMediaPeriodReleased(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onMetadata(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Metadata metadata) {
    }

    public static void $default$onPlaybackParametersChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    public static void $default$onPlayerError(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, ExoPlaybackException exoPlaybackException) {
    }

    public static void $default$onPlayerStateChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z, int i2) {
    }

    public static void $default$onPositionDiscontinuity(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2) {
    }

    public static void $default$onReadingStarted(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onRenderedFirstFrame(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Surface surface) {
    }

    public static void $default$onRepeatModeChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2) {
    }

    public static void $default$onSeekProcessed(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onSeekStarted(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    public static void $default$onShuffleModeChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z) {
    }

    public static void $default$onSurfaceSizeChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, int i3) {
    }

    public static void $default$onTimelineChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2) {
    }

    public static void $default$onTracksChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public static void $default$onUpstreamDiscarded(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    public static void $default$onVideoSizeChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i2, int i3, int i4, float f2) {
    }

    public static void $default$onVolumeChanged(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, float f2) {
    }
}
