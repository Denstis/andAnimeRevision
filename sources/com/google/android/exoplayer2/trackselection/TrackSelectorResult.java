package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class TrackSelectorResult {
    public final Object info;
    public final int length;
    public final RendererConfiguration[] rendererConfigurations;
    public final TrackSelectionArray selections;

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, TrackSelection[] trackSelectionArr, Object obj) {
        this.rendererConfigurations = rendererConfigurationArr;
        this.selections = new TrackSelectionArray(trackSelectionArr);
        this.info = obj;
        this.length = rendererConfigurationArr.length;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult) {
        if (trackSelectorResult == null || trackSelectorResult.selections.length != this.selections.length) {
            return false;
        }
        for (int i2 = 0; i2 < this.selections.length; i2++) {
            if (!isEquivalent(trackSelectorResult, i2)) {
                return false;
            }
        }
        return true;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult, int i2) {
        return trackSelectorResult != null && Util.areEqual(this.rendererConfigurations[i2], trackSelectorResult.rendererConfigurations[i2]) && Util.areEqual(this.selections.get(i2), trackSelectorResult.selections.get(i2));
    }

    public boolean isRendererEnabled(int i2) {
        return this.rendererConfigurations[i2] != null;
    }
}
