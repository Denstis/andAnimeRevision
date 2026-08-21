package com.google.android.exoplayer2.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {
    private boolean allowAdaptiveSelections;
    private final ComponentListener componentListener;
    private final CheckedTextView defaultView;
    private final CheckedTextView disableView;
    private final LayoutInflater inflater;
    private boolean isDisabled;
    private DefaultTrackSelector.SelectionOverride override;
    private int rendererIndex;
    private final int selectableItemBackgroundResourceId;
    private TrackGroupArray trackGroups;
    private TrackNameProvider trackNameProvider;
    private DefaultTrackSelector trackSelector;
    private CheckedTextView[][] trackViews;

    private class ComponentListener implements View.OnClickListener {
        private ComponentListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.onClick(view);
        }
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.selectableItemBackground});
        this.selectableItemBackgroundResourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.inflater = LayoutInflater.from(context);
        this.componentListener = new ComponentListener();
        this.trackNameProvider = new DefaultTrackNameProvider(getResources());
        this.disableView = (CheckedTextView) this.inflater.inflate(android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.disableView.setBackgroundResource(this.selectableItemBackgroundResourceId);
        this.disableView.setText(R.string.exo_track_selection_none);
        this.disableView.setEnabled(false);
        this.disableView.setFocusable(true);
        this.disableView.setOnClickListener(this.componentListener);
        this.disableView.setVisibility(8);
        addView(this.disableView);
        addView(this.inflater.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
        this.defaultView = (CheckedTextView) this.inflater.inflate(android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.defaultView.setBackgroundResource(this.selectableItemBackgroundResourceId);
        this.defaultView.setText(R.string.exo_track_selection_auto);
        this.defaultView.setEnabled(false);
        this.defaultView.setFocusable(true);
        this.defaultView.setOnClickListener(this.componentListener);
        addView(this.defaultView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applySelection() {
        DefaultTrackSelector.ParametersBuilder parametersBuilderBuildUponParameters = this.trackSelector.buildUponParameters();
        parametersBuilderBuildUponParameters.setRendererDisabled(this.rendererIndex, this.isDisabled);
        DefaultTrackSelector.SelectionOverride selectionOverride = this.override;
        if (selectionOverride != null) {
            parametersBuilderBuildUponParameters.setSelectionOverride(this.rendererIndex, this.trackGroups, selectionOverride);
        } else {
            parametersBuilderBuildUponParameters.clearSelectionOverrides(this.rendererIndex);
        }
        this.trackSelector.setParameters(parametersBuilderBuildUponParameters);
    }

    public static Pair<AlertDialog, TrackSelectionView> getDialog(Activity activity, CharSequence charSequence, DefaultTrackSelector defaultTrackSelector, int i2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        View viewInflate = LayoutInflater.from(builder.getContext()).inflate(R.layout.exo_track_selection_dialog, (ViewGroup) null);
        final TrackSelectionView trackSelectionView = (TrackSelectionView) viewInflate.findViewById(R.id.exo_track_selection_view);
        trackSelectionView.init(defaultTrackSelector, i2);
        return Pair.create(builder.setTitle(charSequence).setView(viewInflate).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.google.android.exoplayer2.ui.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f4043b.applySelection();
            }
        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).create(), trackSelectionView);
    }

    private static int[] getTracksAdding(int[] iArr, int i2) {
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArrCopyOf.length - 1] = i2;
        return iArrCopyOf;
    }

    private static int[] getTracksRemoving(int[] iArr, int i2) {
        int[] iArr2 = new int[iArr.length - 1];
        int i3 = 0;
        for (int i4 : iArr) {
            if (i4 != i2) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(View view) {
        if (view == this.disableView) {
            onDisableViewClicked();
        } else if (view == this.defaultView) {
            onDefaultViewClicked();
        } else {
            onTrackViewClicked(view);
        }
        updateViewStates();
    }

    private void onDefaultViewClicked() {
        this.isDisabled = false;
        this.override = null;
    }

    private void onDisableViewClicked() {
        this.isDisabled = true;
        this.override = null;
    }

    private void onTrackViewClicked(View view) {
        DefaultTrackSelector.SelectionOverride selectionOverride;
        this.isDisabled = false;
        Pair pair = (Pair) view.getTag();
        int iIntValue = ((Integer) pair.first).intValue();
        int iIntValue2 = ((Integer) pair.second).intValue();
        DefaultTrackSelector.SelectionOverride selectionOverride2 = this.override;
        if (selectionOverride2 == null || selectionOverride2.groupIndex != iIntValue || !this.allowAdaptiveSelections) {
            this.override = new DefaultTrackSelector.SelectionOverride(iIntValue, iIntValue2);
            return;
        }
        int i2 = selectionOverride2.length;
        int[] iArr = selectionOverride2.tracks;
        if (!((CheckedTextView) view).isChecked()) {
            selectionOverride = new DefaultTrackSelector.SelectionOverride(iIntValue, getTracksAdding(iArr, iIntValue2));
        } else {
            if (i2 == 1) {
                this.override = null;
                this.isDisabled = true;
                return;
            }
            selectionOverride = new DefaultTrackSelector.SelectionOverride(iIntValue, getTracksRemoving(iArr, iIntValue2));
        }
        this.override = selectionOverride;
    }

    private void updateViewStates() {
        this.disableView.setChecked(this.isDisabled);
        this.defaultView.setChecked(!this.isDisabled && this.override == null);
        int i2 = 0;
        while (i2 < this.trackViews.length) {
            int i3 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.trackViews;
                if (i3 < checkedTextViewArr[i2].length) {
                    CheckedTextView checkedTextView = checkedTextViewArr[i2][i3];
                    DefaultTrackSelector.SelectionOverride selectionOverride = this.override;
                    checkedTextView.setChecked(selectionOverride != null && selectionOverride.groupIndex == i2 && selectionOverride.containsTrack(i3));
                    i3++;
                }
            }
            i2++;
        }
    }

    private void updateViews() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        DefaultTrackSelector defaultTrackSelector = this.trackSelector;
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = defaultTrackSelector == null ? null : defaultTrackSelector.getCurrentMappedTrackInfo();
        if (this.trackSelector == null || currentMappedTrackInfo == null) {
            this.disableView.setEnabled(false);
            this.defaultView.setEnabled(false);
            return;
        }
        this.disableView.setEnabled(true);
        this.defaultView.setEnabled(true);
        this.trackGroups = currentMappedTrackInfo.getTrackGroups(this.rendererIndex);
        DefaultTrackSelector.Parameters parameters = this.trackSelector.getParameters();
        this.isDisabled = parameters.getRendererDisabled(this.rendererIndex);
        this.override = parameters.getSelectionOverride(this.rendererIndex, this.trackGroups);
        this.trackViews = new CheckedTextView[this.trackGroups.length][];
        int i2 = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.trackGroups;
            if (i2 >= trackGroupArray.length) {
                updateViewStates();
                return;
            }
            TrackGroup trackGroup = trackGroupArray.get(i2);
            boolean z = this.allowAdaptiveSelections && this.trackGroups.get(i2).length > 1 && currentMappedTrackInfo.getAdaptiveSupport(this.rendererIndex, i2, false) != 0;
            this.trackViews[i2] = new CheckedTextView[trackGroup.length];
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                if (i3 == 0) {
                    addView(this.inflater.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.inflater.inflate(z ? android.R.layout.simple_list_item_multiple_choice : android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.selectableItemBackgroundResourceId);
                checkedTextView.setText(this.trackNameProvider.getTrackName(trackGroup.getFormat(i3)));
                if (currentMappedTrackInfo.getTrackSupport(this.rendererIndex, i2, i3) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setTag(Pair.create(Integer.valueOf(i2), Integer.valueOf(i3)));
                    checkedTextView.setOnClickListener(this.componentListener);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.trackViews[i2][i3] = checkedTextView;
                addView(checkedTextView);
            }
            i2++;
        }
    }

    public void init(DefaultTrackSelector defaultTrackSelector, int i2) {
        this.trackSelector = defaultTrackSelector;
        this.rendererIndex = i2;
        updateViews();
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.allowAdaptiveSelections != z) {
            this.allowAdaptiveSelections = z;
            updateViews();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.disableView.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(TrackNameProvider trackNameProvider) {
        this.trackNameProvider = (TrackNameProvider) Assertions.checkNotNull(trackNameProvider);
        updateViews();
    }
}
