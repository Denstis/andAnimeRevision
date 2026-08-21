package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.core.app.h;
import androidx.core.app.k;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.NotificationUtil;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PlayerNotificationManager {
    public static final String ACTION_FAST_FORWARD = "com.google.android.exoplayer.ffwd";
    public static final String ACTION_NEXT = "com.google.android.exoplayer.next";
    public static final String ACTION_PAUSE = "com.google.android.exoplayer.pause";
    public static final String ACTION_PLAY = "com.google.android.exoplayer.play";
    public static final String ACTION_PREVIOUS = "com.google.android.exoplayer.prev";
    public static final String ACTION_REWIND = "com.google.android.exoplayer.rewind";
    public static final String ACTION_STOP = "com.google.android.exoplayer.stop";
    public static final int DEFAULT_FAST_FORWARD_MS = 15000;
    public static final int DEFAULT_REWIND_MS = 5000;
    public static final String EXTRA_INSTANCE_ID = "INSTANCE_ID";
    private static final long MAX_POSITION_FOR_SEEK_TO_PREVIOUS = 3000;
    private static int instanceIdCounter;
    private int badgeIconType;
    private final String channelId;
    private int color;
    private boolean colorized;
    private final Context context;
    private ControlDispatcher controlDispatcher;
    private int currentNotificationTag;
    private final CustomActionReceiver customActionReceiver;
    private final Map<String, h.a> customActions;
    private int defaults;
    private long fastForwardMs;
    private final int instanceId;
    private final IntentFilter intentFilter;
    private boolean isNotificationStarted;
    private int lastPlaybackState;
    private final Handler mainHandler;
    private final MediaDescriptionAdapter mediaDescriptionAdapter;
    private MediaSessionCompat.Token mediaSessionToken;
    private final NotificationBroadcastReceiver notificationBroadcastReceiver;
    private final int notificationId;
    private NotificationListener notificationListener;
    private final k notificationManager;
    private boolean ongoing;
    private final Map<String, h.a> playbackActions;
    private Player player;
    private final Player.EventListener playerListener;
    private int priority;
    private long rewindMs;
    private int smallIconResourceId;
    private String stopAction;
    private PendingIntent stopPendingIntent;
    private boolean useChronometer;
    private boolean useNavigationActions;
    private boolean usePlayPauseActions;
    private int visibility;
    private boolean wasPlayWhenReady;

    public final class BitmapCallback {
        private final int notificationTag;

        private BitmapCallback(int i2) {
            this.notificationTag = i2;
        }

        public /* synthetic */ void a(Bitmap bitmap) {
            if (PlayerNotificationManager.this.player != null && this.notificationTag == PlayerNotificationManager.this.currentNotificationTag && PlayerNotificationManager.this.isNotificationStarted) {
                PlayerNotificationManager.this.updateNotification(bitmap);
            }
        }

        public void onBitmap(final Bitmap bitmap) {
            if (bitmap != null) {
                PlayerNotificationManager.this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4041b.a(bitmap);
                    }
                });
            }
        }
    }

    public interface CustomActionReceiver {
        Map<String, h.a> createCustomActions(Context context, int i2);

        List<String> getCustomActions(Player player);

        void onCustomAction(Player player, String str, Intent intent);
    }

    public interface MediaDescriptionAdapter {
        PendingIntent createCurrentContentIntent(Player player);

        String getCurrentContentText(Player player);

        String getCurrentContentTitle(Player player);

        Bitmap getCurrentLargeIcon(Player player, BitmapCallback bitmapCallback);

        String getCurrentSubText(Player player);
    }

    private class NotificationBroadcastReceiver extends BroadcastReceiver {
        private final Timeline.Window window = new Timeline.Window();

        public NotificationBroadcastReceiver() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x009a, code lost:
        
            if (r0.isSeekable == false) goto L23;
         */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onReceive(android.content.Context r8, android.content.Intent r9) {
            /*
                Method dump skipped, instruction units count: 278
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.PlayerNotificationManager.NotificationBroadcastReceiver.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public interface NotificationListener {
        void onNotificationCancelled(int i2);

        void onNotificationStarted(int i2, Notification notification);
    }

    private class PlayerListener implements Player.EventListener {
        private PlayerListener() {
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onLoadingChanged(boolean z) {
            com.google.android.exoplayer2.b.$default$onLoadingChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            if (PlayerNotificationManager.this.player == null || PlayerNotificationManager.this.player.getPlaybackState() == 1) {
                return;
            }
            PlayerNotificationManager.this.startOrUpdateNotification();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            com.google.android.exoplayer2.b.$default$onPlayerError(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i2) {
            if ((PlayerNotificationManager.this.wasPlayWhenReady != z && i2 != 1) || PlayerNotificationManager.this.lastPlaybackState != i2) {
                PlayerNotificationManager.this.startOrUpdateNotification();
            }
            PlayerNotificationManager.this.wasPlayWhenReady = z;
            PlayerNotificationManager.this.lastPlaybackState = i2;
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPositionDiscontinuity(int i2) {
            PlayerNotificationManager.this.startOrUpdateNotification();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onRepeatModeChanged(int i2) {
            if (PlayerNotificationManager.this.player == null || PlayerNotificationManager.this.player.getPlaybackState() == 1) {
                return;
            }
            PlayerNotificationManager.this.startOrUpdateNotification();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekProcessed() {
            com.google.android.exoplayer2.b.$default$onSeekProcessed(this);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            com.google.android.exoplayer2.b.$default$onShuffleModeEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onTimelineChanged(Timeline timeline, Object obj, int i2) {
            if (PlayerNotificationManager.this.player == null || PlayerNotificationManager.this.player.getPlaybackState() == 1) {
                return;
            }
            PlayerNotificationManager.this.startOrUpdateNotification();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            com.google.android.exoplayer2.b.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Visibility {
    }

    public PlayerNotificationManager(Context context, String str, int i2, MediaDescriptionAdapter mediaDescriptionAdapter) {
        this(context, str, i2, mediaDescriptionAdapter, null);
    }

    public PlayerNotificationManager(Context context, String str, int i2, MediaDescriptionAdapter mediaDescriptionAdapter, CustomActionReceiver customActionReceiver) {
        this.context = context.getApplicationContext();
        this.channelId = str;
        this.notificationId = i2;
        this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        this.customActionReceiver = customActionReceiver;
        this.controlDispatcher = new DefaultControlDispatcher();
        int i3 = instanceIdCounter;
        instanceIdCounter = i3 + 1;
        this.instanceId = i3;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.notificationManager = k.a(context);
        this.playerListener = new PlayerListener();
        this.notificationBroadcastReceiver = new NotificationBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.useNavigationActions = true;
        this.usePlayPauseActions = true;
        this.ongoing = true;
        this.colorized = true;
        this.useChronometer = true;
        this.color = 0;
        this.smallIconResourceId = R.drawable.exo_notification_small_icon;
        this.defaults = 0;
        this.priority = -1;
        this.fastForwardMs = 15000L;
        this.rewindMs = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
        this.stopAction = ACTION_STOP;
        this.badgeIconType = 1;
        this.visibility = 1;
        this.playbackActions = createPlaybackActions(context, this.instanceId);
        Iterator<String> it = this.playbackActions.keySet().iterator();
        while (it.hasNext()) {
            this.intentFilter.addAction(it.next());
        }
        this.customActions = customActionReceiver != null ? customActionReceiver.createCustomActions(context, this.instanceId) : Collections.emptyMap();
        Iterator<String> it2 = this.customActions.keySet().iterator();
        while (it2.hasNext()) {
            this.intentFilter.addAction(it2.next());
        }
        this.stopPendingIntent = ((h.a) Assertions.checkNotNull(this.playbackActions.get(ACTION_STOP))).f838i;
    }

    private static PendingIntent createBroadcastIntent(String str, Context context, int i2) {
        Intent intent = new Intent(str).setPackage(context.getPackageName());
        intent.putExtra(EXTRA_INSTANCE_ID, i2);
        return PendingIntent.getBroadcast(context, i2, intent, C.ENCODING_PCM_MU_LAW);
    }

    private static Map<String, h.a> createPlaybackActions(Context context, int i2) {
        HashMap map = new HashMap();
        map.put(ACTION_PLAY, new h.a(R.drawable.exo_notification_play, context.getString(R.string.exo_controls_play_description), createBroadcastIntent(ACTION_PLAY, context, i2)));
        map.put(ACTION_PAUSE, new h.a(R.drawable.exo_notification_pause, context.getString(R.string.exo_controls_pause_description), createBroadcastIntent(ACTION_PAUSE, context, i2)));
        map.put(ACTION_STOP, new h.a(R.drawable.exo_notification_stop, context.getString(R.string.exo_controls_stop_description), createBroadcastIntent(ACTION_STOP, context, i2)));
        map.put(ACTION_REWIND, new h.a(R.drawable.exo_notification_rewind, context.getString(R.string.exo_controls_rewind_description), createBroadcastIntent(ACTION_REWIND, context, i2)));
        map.put(ACTION_FAST_FORWARD, new h.a(R.drawable.exo_notification_fastforward, context.getString(R.string.exo_controls_fastforward_description), createBroadcastIntent(ACTION_FAST_FORWARD, context, i2)));
        map.put(ACTION_PREVIOUS, new h.a(R.drawable.exo_notification_previous, context.getString(R.string.exo_controls_previous_description), createBroadcastIntent(ACTION_PREVIOUS, context, i2)));
        map.put(ACTION_NEXT, new h.a(R.drawable.exo_notification_next, context.getString(R.string.exo_controls_next_description), createBroadcastIntent(ACTION_NEXT, context, i2)));
        return map;
    }

    public static PlayerNotificationManager createWithNotificationChannel(Context context, String str, int i2, int i3, MediaDescriptionAdapter mediaDescriptionAdapter) {
        NotificationUtil.createNotificationChannel(context, str, i2, 2);
        return new PlayerNotificationManager(context, str, i3, mediaDescriptionAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOrUpdateNotification() {
        if (this.player != null) {
            Notification notificationUpdateNotification = updateNotification(null);
            if (this.isNotificationStarted) {
                return;
            }
            this.isNotificationStarted = true;
            this.context.registerReceiver(this.notificationBroadcastReceiver, this.intentFilter);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener != null) {
                notificationListener.onNotificationStarted(this.notificationId, notificationUpdateNotification);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopNotification() {
        if (this.isNotificationStarted) {
            this.notificationManager.a(this.notificationId);
            this.isNotificationStarted = false;
            this.context.unregisterReceiver(this.notificationBroadcastReceiver);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener != null) {
                notificationListener.onNotificationCancelled(this.notificationId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Notification updateNotification(Bitmap bitmap) {
        Notification notificationCreateNotification = createNotification(this.player, bitmap);
        this.notificationManager.a(this.notificationId, notificationCreateNotification);
        return notificationCreateNotification;
    }

    protected Notification createNotification(Player player, Bitmap bitmap) {
        PendingIntent pendingIntent;
        h.d dVar = new h.d(this.context, this.channelId);
        List<String> actions = getActions(player);
        for (int i2 = 0; i2 < actions.size(); i2++) {
            String str = actions.get(i2);
            h.a aVar = (this.playbackActions.containsKey(str) ? this.playbackActions : this.customActions).get(str);
            if (aVar != null) {
                dVar.a(aVar);
            }
        }
        androidx.media.g.a aVar2 = new androidx.media.g.a();
        MediaSessionCompat.Token token = this.mediaSessionToken;
        if (token != null) {
            aVar2.a(token);
        }
        aVar2.a(getActionIndicesForCompactView(actions, player));
        boolean z = this.stopAction != null;
        aVar2.a(z);
        if (z && (pendingIntent = this.stopPendingIntent) != null) {
            dVar.b(pendingIntent);
            aVar2.a(this.stopPendingIntent);
        }
        dVar.a(aVar2);
        dVar.a(this.badgeIconType);
        dVar.d(this.ongoing);
        dVar.b(this.color);
        dVar.b(this.colorized);
        dVar.f(this.smallIconResourceId);
        dVar.g(this.visibility);
        dVar.e(this.priority);
        dVar.c(this.defaults);
        if (this.useChronometer && !player.isPlayingAd() && !player.isCurrentWindowDynamic() && player.getPlayWhenReady() && player.getPlaybackState() == 3) {
            dVar.a(System.currentTimeMillis() - player.getContentPosition());
            dVar.e(true);
            dVar.f(true);
        } else {
            dVar.e(false);
            dVar.f(false);
        }
        dVar.b(this.mediaDescriptionAdapter.getCurrentContentTitle(player));
        dVar.a((CharSequence) this.mediaDescriptionAdapter.getCurrentContentText(player));
        dVar.c(this.mediaDescriptionAdapter.getCurrentSubText(player));
        if (bitmap == null) {
            MediaDescriptionAdapter mediaDescriptionAdapter = this.mediaDescriptionAdapter;
            int i3 = this.currentNotificationTag + 1;
            this.currentNotificationTag = i3;
            bitmap = mediaDescriptionAdapter.getCurrentLargeIcon(player, new BitmapCallback(i3));
        }
        if (bitmap != null) {
            dVar.a(bitmap);
        }
        PendingIntent pendingIntentCreateCurrentContentIntent = this.mediaDescriptionAdapter.createCurrentContentIntent(player);
        if (pendingIntentCreateCurrentContentIntent != null) {
            dVar.a(pendingIntentCreateCurrentContentIntent);
        }
        return dVar.a();
    }

    protected int[] getActionIndicesForCompactView(List<String> list, Player player) {
        int iIndexOf = list.indexOf(ACTION_PAUSE);
        int iIndexOf2 = list.indexOf(ACTION_PLAY);
        return iIndexOf != -1 ? new int[]{iIndexOf} : iIndexOf2 != -1 ? new int[]{iIndexOf2} : new int[0];
    }

    protected List<String> getActions(Player player) {
        boolean zIsPlayingAd = player.isPlayingAd();
        ArrayList arrayList = new ArrayList();
        if (!zIsPlayingAd) {
            if (this.useNavigationActions) {
                arrayList.add(ACTION_PREVIOUS);
            }
            if (this.rewindMs > 0) {
                arrayList.add(ACTION_REWIND);
            }
        }
        if (this.usePlayPauseActions) {
            arrayList.add(player.getPlayWhenReady() ? ACTION_PAUSE : ACTION_PLAY);
        }
        if (!zIsPlayingAd) {
            if (this.fastForwardMs > 0) {
                arrayList.add(ACTION_FAST_FORWARD);
            }
            if (this.useNavigationActions && player.getNextWindowIndex() != -1) {
                arrayList.add(ACTION_NEXT);
            }
        }
        CustomActionReceiver customActionReceiver = this.customActionReceiver;
        if (customActionReceiver != null) {
            arrayList.addAll(customActionReceiver.getCustomActions(player));
        }
        if (ACTION_STOP.equals(this.stopAction)) {
            arrayList.add(this.stopAction);
        }
        return arrayList;
    }

    public void invalidate() {
        if (!this.isNotificationStarted || this.player == null) {
            return;
        }
        updateNotification(null);
    }

    public final void setBadgeIconType(int i2) {
        if (this.badgeIconType == i2) {
            return;
        }
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException();
        }
        this.badgeIconType = i2;
        invalidate();
    }

    public final void setColor(int i2) {
        if (this.color != i2) {
            this.color = i2;
            invalidate();
        }
    }

    public final void setColorized(boolean z) {
        if (this.colorized != z) {
            this.colorized = z;
            invalidate();
        }
    }

    public final void setControlDispatcher(ControlDispatcher controlDispatcher) {
        if (controlDispatcher == null) {
            controlDispatcher = new DefaultControlDispatcher();
        }
        this.controlDispatcher = controlDispatcher;
    }

    public final void setDefaults(int i2) {
        if (this.defaults != i2) {
            this.defaults = i2;
            invalidate();
        }
    }

    public final void setFastForwardIncrementMs(long j2) {
        if (this.fastForwardMs == j2) {
            return;
        }
        this.fastForwardMs = j2;
        invalidate();
    }

    public final void setMediaSessionToken(MediaSessionCompat.Token token) {
        if (Util.areEqual(this.mediaSessionToken, token)) {
            return;
        }
        this.mediaSessionToken = token;
        invalidate();
    }

    public final void setNotificationListener(NotificationListener notificationListener) {
        this.notificationListener = notificationListener;
    }

    public final void setOngoing(boolean z) {
        if (this.ongoing != z) {
            this.ongoing = z;
            invalidate();
        }
    }

    public final void setPlayer(Player player) {
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        Assertions.checkArgument(player == null || player.getApplicationLooper() == Looper.getMainLooper());
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.playerListener);
            if (player == null) {
                stopNotification();
            }
        }
        this.player = player;
        if (player != null) {
            this.wasPlayWhenReady = player.getPlayWhenReady();
            this.lastPlaybackState = player.getPlaybackState();
            player.addListener(this.playerListener);
            if (this.lastPlaybackState != 1) {
                startOrUpdateNotification();
            }
        }
    }

    public final void setPriority(int i2) {
        if (this.priority == i2) {
            return;
        }
        if (i2 != -2 && i2 != -1 && i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException();
        }
        this.priority = i2;
        invalidate();
    }

    public final void setRewindIncrementMs(long j2) {
        if (this.rewindMs == j2) {
            return;
        }
        this.rewindMs = j2;
        invalidate();
    }

    public final void setSmallIcon(int i2) {
        if (this.smallIconResourceId != i2) {
            this.smallIconResourceId = i2;
            invalidate();
        }
    }

    public final void setStopAction(String str) {
        PendingIntent pendingIntent;
        h.a aVar;
        if (Util.areEqual(str, this.stopAction)) {
            return;
        }
        this.stopAction = str;
        if (ACTION_STOP.equals(str)) {
            aVar = this.playbackActions.get(ACTION_STOP);
        } else {
            if (str == null) {
                pendingIntent = null;
                this.stopPendingIntent = pendingIntent;
                invalidate();
            }
            aVar = this.customActions.get(str);
        }
        pendingIntent = ((h.a) Assertions.checkNotNull(aVar)).f838i;
        this.stopPendingIntent = pendingIntent;
        invalidate();
    }

    public final void setUseChronometer(boolean z) {
        if (this.useChronometer != z) {
            this.useChronometer = z;
            invalidate();
        }
    }

    public final void setUseNavigationActions(boolean z) {
        if (this.useNavigationActions != z) {
            this.useNavigationActions = z;
            invalidate();
        }
    }

    public final void setUsePlayPauseActions(boolean z) {
        if (this.usePlayPauseActions != z) {
            this.usePlayPauseActions = z;
            invalidate();
        }
    }

    public final void setVisibility(int i2) {
        if (this.visibility == i2) {
            return;
        }
        if (i2 != -1 && i2 != 0 && i2 != 1) {
            throw new IllegalStateException();
        }
        this.visibility = i2;
        invalidate();
    }
}
