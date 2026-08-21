package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.PlaybackPreparer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.spherical.SingleTapListener;
import com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ErrorMessageProvider;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoListener;
import com.google.android.exoplayer2.video.h;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends FrameLayout {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;
    private static final int SURFACE_TYPE_MONO360_VIEW = 3;
    private static final int SURFACE_TYPE_NONE = 0;
    private static final int SURFACE_TYPE_SURFACE_VIEW = 1;
    private static final int SURFACE_TYPE_TEXTURE_VIEW = 2;
    private final ImageView artworkView;
    private final View bufferingView;
    private final ComponentListener componentListener;
    private final AspectRatioFrameLayout contentFrame;
    private final PlayerControlView controller;
    private boolean controllerAutoShow;
    private boolean controllerHideDuringAds;
    private boolean controllerHideOnTouch;
    private int controllerShowTimeoutMs;
    private CharSequence customErrorMessage;
    private Drawable defaultArtwork;
    private ErrorMessageProvider<? super ExoPlaybackException> errorMessageProvider;
    private final TextView errorMessageView;
    private boolean keepContentOnPlayerReset;
    private final FrameLayout overlayFrameLayout;
    private Player player;
    private int showBuffering;
    private final View shutterView;
    private final SubtitleView subtitleView;
    private final View surfaceView;
    private int textureViewRotation;
    private boolean useArtwork;
    private boolean useController;

    private final class ComponentListener implements Player.EventListener, TextOutput, VideoListener, View.OnLayoutChangeListener, SphericalSurfaceView.SurfaceListener, SingleTapListener {
        private ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.text.TextOutput
        public void onCues(List<Cue> list) {
            if (PlayerView.this.subtitleView != null) {
                PlayerView.this.subtitleView.onCues(list);
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            PlayerView.applyTextureViewRotation((TextureView) view, PlayerView.this.textureViewRotation);
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
            PlayerView.this.updateBuffering();
            PlayerView.this.updateErrorMessage();
            if (PlayerView.this.isPlayingAd() && PlayerView.this.controllerHideDuringAds) {
                PlayerView.this.hideController();
            } else {
                PlayerView.this.maybeShowController(false);
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPositionDiscontinuity(int i2) {
            if (PlayerView.this.isPlayingAd() && PlayerView.this.controllerHideDuringAds) {
                PlayerView.this.hideController();
            }
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public void onRenderedFirstFrame() {
            if (PlayerView.this.shutterView != null) {
                PlayerView.this.shutterView.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onRepeatModeChanged(int i2) {
            com.google.android.exoplayer2.b.$default$onRepeatModeChanged(this, i2);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekProcessed() {
            com.google.android.exoplayer2.b.$default$onSeekProcessed(this);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            com.google.android.exoplayer2.b.$default$onShuffleModeEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.ui.spherical.SingleTapListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return PlayerView.this.toggleControllerVisibility();
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public /* synthetic */ void onSurfaceSizeChanged(int i2, int i3) {
            h.$default$onSurfaceSizeChanged(this, i2, i3);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i2) {
            com.google.android.exoplayer2.b.$default$onTimelineChanged(this, timeline, obj, i2);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            PlayerView.this.updateForCurrentTrackSelections(false);
        }

        @Override // com.google.android.exoplayer2.video.VideoListener
        public void onVideoSizeChanged(int i2, int i3, int i4, float f2) {
            float f3 = (i3 == 0 || i2 == 0) ? 1.0f : (i2 * f2) / i3;
            if (PlayerView.this.surfaceView instanceof TextureView) {
                if (i4 == 90 || i4 == 270) {
                    f3 = 1.0f / f3;
                }
                if (PlayerView.this.textureViewRotation != 0) {
                    PlayerView.this.surfaceView.removeOnLayoutChangeListener(this);
                }
                PlayerView.this.textureViewRotation = i4;
                if (PlayerView.this.textureViewRotation != 0) {
                    PlayerView.this.surfaceView.addOnLayoutChangeListener(this);
                }
                PlayerView.applyTextureViewRotation((TextureView) PlayerView.this.surfaceView, PlayerView.this.textureViewRotation);
            }
            PlayerView playerView = PlayerView.this;
            playerView.onContentAspectRatioChanged(f3, playerView.contentFrame, PlayerView.this.surfaceView);
        }

        @Override // com.google.android.exoplayer2.ui.spherical.SphericalSurfaceView.SurfaceListener
        public void surfaceChanged(Surface surface) {
            Player.VideoComponent videoComponent;
            if (PlayerView.this.player == null || (videoComponent = PlayerView.this.player.getVideoComponent()) == null) {
                return;
            }
            videoComponent.setVideoSurface(surface);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ShowBuffering {
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context, AttributeSet attributeSet, int i2) {
        boolean z;
        int integer;
        int i3;
        boolean z2;
        boolean zHasValue;
        int color;
        boolean z3;
        int resourceId;
        boolean z4;
        int i4;
        int i5;
        boolean z5;
        boolean z6;
        View textureView;
        super(context, attributeSet, i2);
        if (isInEditMode()) {
            this.contentFrame = null;
            this.shutterView = null;
            this.surfaceView = null;
            this.artworkView = null;
            this.subtitleView = null;
            this.bufferingView = null;
            this.errorMessageView = null;
            this.controller = null;
            this.componentListener = null;
            this.overlayFrameLayout = null;
            ImageView imageView = new ImageView(context);
            if (Util.SDK_INT >= 23) {
                configureEditModeLogoV23(getResources(), imageView);
            } else {
                configureEditModeLogo(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i6 = R.layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlayerView, 0, 0);
            try {
                zHasValue = typedArrayObtainStyledAttributes.hasValue(R.styleable.PlayerView_shutter_background_color);
                color = typedArrayObtainStyledAttributes.getColor(R.styleable.PlayerView_shutter_background_color, 0);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerView_player_layout_id, i6);
                z3 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_artwork, true);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerView_default_artwork, 0);
                boolean z7 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_controller, true);
                i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_surface_type, 1);
                i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_resize_mode, 0);
                int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_show_timeout, 5000);
                boolean z8 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_on_touch, true);
                boolean z9 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_auto_show, true);
                integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.PlayerView_show_buffering, 0);
                this.keepContentOnPlayerReset = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_keep_content_on_player_reset, this.keepContentOnPlayerReset);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                z2 = z9;
                z5 = z7;
                z4 = z10;
                i3 = i7;
                i6 = resourceId2;
                z = z8;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z = true;
            integer = 0;
            i3 = 5000;
            z2 = true;
            zHasValue = false;
            color = 0;
            z3 = true;
            resourceId = 0;
            z4 = true;
            i4 = 1;
            i5 = 0;
            z5 = true;
        }
        LayoutInflater.from(context).inflate(i6, this);
        this.componentListener = new ComponentListener();
        setDescendantFocusability(262144);
        this.contentFrame = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        AspectRatioFrameLayout aspectRatioFrameLayout = this.contentFrame;
        if (aspectRatioFrameLayout != null) {
            setResizeModeRaw(aspectRatioFrameLayout, i5);
        }
        this.shutterView = findViewById(R.id.exo_shutter);
        View view = this.shutterView;
        if (view != null && zHasValue) {
            view.setBackgroundColor(color);
        }
        if (this.contentFrame == null || i4 == 0) {
            this.surfaceView = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i4 == 2) {
                textureView = new TextureView(context);
            } else if (i4 != 3) {
                textureView = new SurfaceView(context);
            } else {
                Assertions.checkState(Util.SDK_INT >= 15);
                SphericalSurfaceView sphericalSurfaceView = new SphericalSurfaceView(context);
                sphericalSurfaceView.setSurfaceListener(this.componentListener);
                sphericalSurfaceView.setSingleTapListener(this.componentListener);
                textureView = sphericalSurfaceView;
            }
            this.surfaceView = textureView;
            this.surfaceView.setLayoutParams(layoutParams);
            this.contentFrame.addView(this.surfaceView, 0);
        }
        this.overlayFrameLayout = (FrameLayout) findViewById(R.id.exo_overlay);
        this.artworkView = (ImageView) findViewById(R.id.exo_artwork);
        this.useArtwork = z3 && this.artworkView != null;
        if (resourceId != 0) {
            this.defaultArtwork = androidx.core.content.a.c(getContext(), resourceId);
        }
        this.subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        SubtitleView subtitleView = this.subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            this.subtitleView.setUserDefaultTextSize();
        }
        this.bufferingView = findViewById(R.id.exo_buffering);
        View view2 = this.bufferingView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.showBuffering = integer;
        this.errorMessageView = (TextView) findViewById(R.id.exo_error_message);
        TextView textView = this.errorMessageView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(R.id.exo_controller);
        View viewFindViewById = findViewById(R.id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.controller = playerControlView;
            z6 = false;
        } else if (viewFindViewById != null) {
            z6 = false;
            this.controller = new PlayerControlView(context, null, 0, attributeSet);
            this.controller.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(this.controller, iIndexOfChild);
        } else {
            z6 = false;
            this.controller = null;
        }
        this.controllerShowTimeoutMs = this.controller == null ? 0 : i3;
        this.controllerHideOnTouch = z;
        this.controllerAutoShow = z2;
        this.controllerHideDuringAds = z4;
        if (z5 && this.controller != null) {
            z6 = true;
        }
        this.useController = z6;
        hideController();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void applyTextureViewRotation(TextureView textureView, int i2) {
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width == 0.0f || height == 0.0f || i2 == 0) {
            textureView.setTransform(null);
            return;
        }
        Matrix matrix = new Matrix();
        float f2 = width / 2.0f;
        float f3 = height / 2.0f;
        matrix.postRotate(i2, f2, f3);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        RectF rectF2 = new RectF();
        matrix.mapRect(rectF2, rectF);
        matrix.postScale(width / rectF2.width(), height / rectF2.height(), f2, f3);
        textureView.setTransform(matrix);
    }

    private void closeShutter() {
        View view = this.shutterView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void configureEditModeLogo(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color));
    }

    @TargetApi(23)
    private static void configureEditModeLogoV23(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
    }

    private void hideArtwork() {
        ImageView imageView = this.artworkView;
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
            this.artworkView.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean isDpadKey(int i2) {
        return i2 == 19 || i2 == 270 || i2 == 22 || i2 == 271 || i2 == 20 || i2 == 269 || i2 == 21 || i2 == 268 || i2 == 23;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPlayingAd() {
        Player player = this.player;
        return player != null && player.isPlayingAd() && this.player.getPlayWhenReady();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeShowController(boolean z) {
        if (!(isPlayingAd() && this.controllerHideDuringAds) && this.useController) {
            boolean z2 = this.controller.isVisible() && this.controller.getShowTimeoutMs() <= 0;
            boolean zShouldShowControllerIndefinitely = shouldShowControllerIndefinitely();
            if (z || z2 || zShouldShowControllerIndefinitely) {
                showController(zShouldShowControllerIndefinitely);
            }
        }
    }

    private boolean setArtworkFromMetadata(Metadata metadata) {
        for (int i2 = 0; i2 < metadata.length(); i2++) {
            Metadata.Entry entry = metadata.get(i2);
            if (entry instanceof ApicFrame) {
                byte[] bArr = ((ApicFrame) entry).pictureData;
                return setDrawableArtwork(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            }
        }
        return false;
    }

    private boolean setDrawableArtwork(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                onContentAspectRatioChanged(intrinsicWidth / intrinsicHeight, this.contentFrame, this.artworkView);
                this.artworkView.setImageDrawable(drawable);
                this.artworkView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void setResizeModeRaw(AspectRatioFrameLayout aspectRatioFrameLayout, int i2) {
        aspectRatioFrameLayout.setResizeMode(i2);
    }

    private boolean shouldShowControllerIndefinitely() {
        Player player = this.player;
        if (player == null) {
            return true;
        }
        int playbackState = player.getPlaybackState();
        return this.controllerAutoShow && (playbackState == 1 || playbackState == 4 || !this.player.getPlayWhenReady());
    }

    private void showController(boolean z) {
        if (this.useController) {
            this.controller.setShowTimeoutMs(z ? 0 : this.controllerShowTimeoutMs);
            this.controller.show();
        }
    }

    public static void switchTargetView(Player player, PlayerView playerView, PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(player);
        }
        if (playerView != null) {
            playerView.setPlayer(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean toggleControllerVisibility() {
        if (!this.useController || this.player == null) {
            return false;
        }
        if (!this.controller.isVisible()) {
            maybeShowController(true);
        } else if (this.controllerHideOnTouch) {
            this.controller.hide();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBuffering() {
        int i2;
        if (this.bufferingView != null) {
            Player player = this.player;
            boolean z = true;
            if (player == null || player.getPlaybackState() != 2 || ((i2 = this.showBuffering) != 2 && (i2 != 1 || !this.player.getPlayWhenReady()))) {
                z = false;
            }
            this.bufferingView.setVisibility(z ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateErrorMessage() {
        TextView textView = this.errorMessageView;
        if (textView != null) {
            CharSequence charSequence = this.customErrorMessage;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.errorMessageView.setVisibility(0);
                return;
            }
            ExoPlaybackException playbackError = null;
            Player player = this.player;
            if (player != null && player.getPlaybackState() == 1 && this.errorMessageProvider != null) {
                playbackError = this.player.getPlaybackError();
            }
            if (playbackError == null) {
                this.errorMessageView.setVisibility(8);
                return;
            }
            this.errorMessageView.setText((CharSequence) this.errorMessageProvider.getErrorMessage(playbackError).second);
            this.errorMessageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateForCurrentTrackSelections(boolean z) {
        Player player = this.player;
        if (player == null || player.getCurrentTrackGroups().isEmpty()) {
            if (this.keepContentOnPlayerReset) {
                return;
            }
            hideArtwork();
            closeShutter();
            return;
        }
        if (z && !this.keepContentOnPlayerReset) {
            closeShutter();
        }
        TrackSelectionArray currentTrackSelections = this.player.getCurrentTrackSelections();
        for (int i2 = 0; i2 < currentTrackSelections.length; i2++) {
            if (this.player.getRendererType(i2) == 2 && currentTrackSelections.get(i2) != null) {
                hideArtwork();
                return;
            }
        }
        closeShutter();
        if (this.useArtwork) {
            for (int i3 = 0; i3 < currentTrackSelections.length; i3++) {
                TrackSelection trackSelection = currentTrackSelections.get(i3);
                if (trackSelection != null) {
                    for (int i4 = 0; i4 < trackSelection.length(); i4++) {
                        Metadata metadata = trackSelection.getFormat(i4).metadata;
                        if (metadata != null && setArtworkFromMetadata(metadata)) {
                            return;
                        }
                    }
                }
            }
            if (setDrawableArtwork(this.defaultArtwork)) {
                return;
            }
        }
        hideArtwork();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.player;
        if (player != null && player.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean z = (isDpadKey(keyEvent.getKeyCode()) && this.useController && !this.controller.isVisible()) || dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        if (z) {
            maybeShowController(true);
        }
        return z;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return this.useController && this.controller.dispatchMediaKeyEvent(keyEvent);
    }

    public boolean getControllerAutoShow() {
        return this.controllerAutoShow;
    }

    public boolean getControllerHideOnTouch() {
        return this.controllerHideOnTouch;
    }

    public int getControllerShowTimeoutMs() {
        return this.controllerShowTimeoutMs;
    }

    public Drawable getDefaultArtwork() {
        return this.defaultArtwork;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.overlayFrameLayout;
    }

    public Player getPlayer() {
        return this.player;
    }

    public int getResizeMode() {
        Assertions.checkState(this.contentFrame != null);
        return this.contentFrame.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.subtitleView;
    }

    public boolean getUseArtwork() {
        return this.useArtwork;
    }

    public boolean getUseController() {
        return this.useController;
    }

    public View getVideoSurfaceView() {
        return this.surfaceView;
    }

    public void hideController() {
        PlayerControlView playerControlView = this.controller;
        if (playerControlView != null) {
            playerControlView.hide();
        }
    }

    public boolean isControllerVisible() {
        PlayerControlView playerControlView = this.controller;
        return playerControlView != null && playerControlView.isVisible();
    }

    protected void onContentAspectRatioChanged(float f2, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof SphericalSurfaceView) {
                f2 = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f2);
        }
    }

    public void onPause() {
        View view = this.surfaceView;
        if (view instanceof SphericalSurfaceView) {
            ((SphericalSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.surfaceView;
        if (view instanceof SphericalSurfaceView) {
            ((SphericalSurfaceView) view).onResume();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        return performClick();
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.useController || this.player == null) {
            return false;
        }
        maybeShowController(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return toggleControllerVisibility();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        Assertions.checkState(this.contentFrame != null);
        this.contentFrame.setAspectRatioListener(aspectRatioListener);
    }

    public void setControlDispatcher(ControlDispatcher controlDispatcher) {
        Assertions.checkState(this.controller != null);
        this.controller.setControlDispatcher(controlDispatcher);
    }

    public void setControllerAutoShow(boolean z) {
        this.controllerAutoShow = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.controllerHideDuringAds = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controllerHideOnTouch = z;
    }

    public void setControllerShowTimeoutMs(int i2) {
        Assertions.checkState(this.controller != null);
        this.controllerShowTimeoutMs = i2;
        if (this.controller.isVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.VisibilityListener visibilityListener) {
        Assertions.checkState(this.controller != null);
        this.controller.setVisibilityListener(visibilityListener);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        Assertions.checkState(this.errorMessageView != null);
        this.customErrorMessage = charSequence;
        updateErrorMessage();
    }

    @Deprecated
    public void setDefaultArtwork(Bitmap bitmap) {
        setDefaultArtwork(bitmap == null ? null : new BitmapDrawable(getResources(), bitmap));
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.defaultArtwork != drawable) {
            this.defaultArtwork = drawable;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super ExoPlaybackException> errorMessageProvider) {
        if (this.errorMessageProvider != errorMessageProvider) {
            this.errorMessageProvider = errorMessageProvider;
            updateErrorMessage();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        Assertions.checkState(this.controller != null);
        this.controller.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFastForwardIncrementMs(int i2) {
        Assertions.checkState(this.controller != null);
        this.controller.setFastForwardIncrementMs(i2);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.keepContentOnPlayerReset != z) {
            this.keepContentOnPlayerReset = z;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        Assertions.checkState(this.controller != null);
        this.controller.setPlaybackPreparer(playbackPreparer);
    }

    public void setPlayer(Player player) {
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        Assertions.checkArgument(player == null || player.getApplicationLooper() == Looper.getMainLooper());
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.componentListener);
            Player.VideoComponent videoComponent = this.player.getVideoComponent();
            if (videoComponent != null) {
                videoComponent.removeVideoListener(this.componentListener);
                View view = this.surfaceView;
                if (view instanceof TextureView) {
                    videoComponent.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SphericalSurfaceView) {
                    ((SphericalSurfaceView) view).setVideoComponent(null);
                } else if (view instanceof SurfaceView) {
                    videoComponent.clearVideoSurfaceView((SurfaceView) view);
                }
            }
            Player.TextComponent textComponent = this.player.getTextComponent();
            if (textComponent != null) {
                textComponent.removeTextOutput(this.componentListener);
            }
        }
        this.player = player;
        if (this.useController) {
            this.controller.setPlayer(player);
        }
        SubtitleView subtitleView = this.subtitleView;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        updateBuffering();
        updateErrorMessage();
        updateForCurrentTrackSelections(true);
        if (player == null) {
            hideController();
            return;
        }
        Player.VideoComponent videoComponent2 = player.getVideoComponent();
        if (videoComponent2 != null) {
            View view2 = this.surfaceView;
            if (view2 instanceof TextureView) {
                videoComponent2.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SphericalSurfaceView) {
                ((SphericalSurfaceView) view2).setVideoComponent(videoComponent2);
            } else if (view2 instanceof SurfaceView) {
                videoComponent2.setVideoSurfaceView((SurfaceView) view2);
            }
            videoComponent2.addVideoListener(this.componentListener);
        }
        Player.TextComponent textComponent2 = player.getTextComponent();
        if (textComponent2 != null) {
            textComponent2.addTextOutput(this.componentListener);
        }
        player.addListener(this.componentListener);
        maybeShowController(false);
    }

    public void setRepeatToggleModes(int i2) {
        Assertions.checkState(this.controller != null);
        this.controller.setRepeatToggleModes(i2);
    }

    public void setResizeMode(int i2) {
        Assertions.checkState(this.contentFrame != null);
        this.contentFrame.setResizeMode(i2);
    }

    public void setRewindIncrementMs(int i2) {
        Assertions.checkState(this.controller != null);
        this.controller.setRewindIncrementMs(i2);
    }

    public void setShowBuffering(int i2) {
        if (this.showBuffering != i2) {
            this.showBuffering = i2;
            updateBuffering();
        }
    }

    @Deprecated
    public void setShowBuffering(boolean z) {
        setShowBuffering(z ? 1 : 0);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controller.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controller.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i2) {
        View view = this.shutterView;
        if (view != null) {
            view.setBackgroundColor(i2);
        }
    }

    public void setUseArtwork(boolean z) {
        Assertions.checkState((z && this.artworkView == null) ? false : true);
        if (this.useArtwork != z) {
            this.useArtwork = z;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setUseController(boolean z) {
        PlayerControlView playerControlView;
        Player player;
        Assertions.checkState((z && this.controller == null) ? false : true);
        if (this.useController == z) {
            return;
        }
        this.useController = z;
        if (z) {
            playerControlView = this.controller;
            player = this.player;
        } else {
            PlayerControlView playerControlView2 = this.controller;
            if (playerControlView2 == null) {
                return;
            }
            playerControlView2.hide();
            playerControlView = this.controller;
            player = null;
        }
        playerControlView.setPlayer(player);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        View view = this.surfaceView;
        if (view instanceof SurfaceView) {
            view.setVisibility(i2);
        }
    }

    public void showController() {
        showController(shouldShowControllerIndefinitely());
    }
}
