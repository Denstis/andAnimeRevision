###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager (com.google.android.exoplayer2.ui.PlayerNotificationManager)
.class public Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Priority;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Visibility;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;,
        Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:Ljava/lang/String; = "com.google.android.exoplayer.ffwd"

.field public static final ACTION_NEXT:Ljava/lang/String; = "com.google.android.exoplayer.next"

.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.google.android.exoplayer.pause"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.google.android.exoplayer.play"

.field public static final ACTION_PREVIOUS:Ljava/lang/String; = "com.google.android.exoplayer.prev"

.field public static final ACTION_REWIND:Ljava/lang/String; = "com.google.android.exoplayer.rewind"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.google.android.exoplayer.stop"

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final EXTRA_INSTANCE_ID:Ljava/lang/String; = "INSTANCE_ID"

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field private static instanceIdCounter:I


# instance fields
.field private badgeIconType:I

.field private final channelId:Ljava/lang/String;

.field private color:I

.field private colorized:Z

.field private final context:Landroid/content/Context;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

.field private currentNotificationTag:I

.field private final customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

.field private final customActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private defaults:I

.field private fastForwardMs:J

.field private final instanceId:I

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isNotificationStarted:Z

.field private lastPlaybackState:I

.field private final mainHandler:Landroid/os/Handler;

.field private final mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

.field private mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

.field private final notificationId:I

.field private notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

.field private final notificationManager:Landroidx/core/app/k;

.field private ongoing:Z

.field private final playbackActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private priority:I

.field private rewindMs:J

.field private smallIconResourceId:I

.field private stopAction:Ljava/lang/String;

.field private stopPendingIntent:Landroid/app/PendingIntent;

.field private useChronometer:Z

.field private useNavigationActions:Z

.field private usePlayPauseActions:Z

.field private visibility:I

.field private wasPlayWhenReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->channelId:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    iput-object p5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    new-instance p2, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceIdCounter:I

    add-int/lit8 p3, p2, 0x1

    sput p3, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceIdCounter:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/core/app/k;->a(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/k;

    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->ongoing:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    sget p4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_small_icon:I

    iput p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    const-string p3, "com.google.android.exoplayer.stop"

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopAction:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createPlaybackActions(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_80
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_92

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_80

    :cond_92
    if-eqz p5, :cond_9b

    iget p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    invoke-interface {p5, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->createCustomActions(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    goto :goto_9f

    :cond_9b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_9f
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ab
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_ab

    :cond_bd
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/h$a;

    iget-object p1, p1, Landroidx/core/app/h$a;->i:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->instanceId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->updateNotification(Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->wasPlayWhenReady:Z

    return p0
.end method

.method static synthetic access$702(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->wasPlayWhenReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->lastPlaybackState:I

    return p0
.end method

.method static synthetic access$802(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->lastPlaybackState:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->startOrUpdateNotification()V

    return-void
.end method

.method private static createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "INSTANCE_ID"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static createPlaybackActions(Landroid/content/Context;I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_play:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.play"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_pause:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.pause"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_stop:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_stop_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.stop"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_rewind:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.rewind"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_fastforward:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.ffwd"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_previous:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.prev"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/app/h$a;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_notification_next:I

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.exoplayer.next"

    invoke-static {v4, p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createBroadcastIntent(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithNotificationChannel(Landroid/content/Context;Ljava/lang/String;IILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
    .registers 6

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V

    return-object p2
.end method

.method private startOrUpdateNotification()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->updateNotification(Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    if-eqz v1, :cond_22

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationStarted(ILandroid/app/Notification;)V

    :cond_22
    return-void
.end method

.method private stopNotification()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/k;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/k;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationBroadcastReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;->onNotificationCancelled(I)V

    :cond_1e
    return-void
.end method

.method private updateNotification(Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->createNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationManager:Landroidx/core/app/k;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationId:I

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/k;->a(ILandroid/app/Notification;)V

    return-object p1
.end method


# virtual methods
.method protected createNotification(Lcom/google/android/exoplayer2/Player;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .registers 10

    new-instance v0, Landroidx/core/app/h$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->channelId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    goto :goto_28

    :cond_26
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    :goto_28
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/h$a;

    if-eqz v4, :cond_33

    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$a;)Landroidx/core/app/h$d;

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_36
    new-instance v3, Landroidx/media/g/a;

    invoke-direct {v3}, Landroidx/media/g/a;-><init>()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v4, :cond_42

    invoke-virtual {v3, v4}, Landroidx/media/g/a;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/g/a;

    :cond_42
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->getActionIndicesForCompactView(Ljava/util/List;Lcom/google/android/exoplayer2/Player;)[I

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/media/g/a;->a([I)Landroidx/media/g/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopAction:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    invoke-virtual {v3, v1}, Landroidx/media/g/a;->a(Z)Landroidx/media/g/a;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_62

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->b(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v1}, Landroidx/media/g/a;->a(Landroid/app/PendingIntent;)Landroidx/media/g/a;

    :cond_62
    invoke-virtual {v0, v3}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->ongoing:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->b(I)Landroidx/core/app/h$d;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->b(Z)Landroidx/core/app/h$d;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->g(I)Landroidx/core/app/h$d;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->e(I)Landroidx/core/app/h$d;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    if-eqz v1, :cond_bd

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowDynamic()Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_bd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/h$d;->a(J)Landroidx/core/app/h$d;

    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->e(Z)Landroidx/core/app/h$d;

    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->f(Z)Landroidx/core/app/h$d;

    goto :goto_c3

    :cond_bd
    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->e(Z)Landroidx/core/app/h$d;

    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->f(Z)Landroidx/core/app/h$d;

    :goto_c3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentContentTitle(Lcom/google/android/exoplayer2/Player;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentContentText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentSubText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->c(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    if-nez p2, :cond_f1

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    new-instance v1, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->currentNotificationTag:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->getCurrentLargeIcon(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_f1
    if-eqz p2, :cond_f6

    invoke-virtual {v0, p2}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    :cond_f6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaDescriptionAdapter:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;->createCurrentContentIntent(Lcom/google/android/exoplayer2/Player;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_101

    invoke-virtual {v0, p1}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    :cond_101
    invoke-virtual {v0}, Landroidx/core/app/h$d;->a()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method protected getActionIndicesForCompactView(Ljava/util/List;Lcom/google/android/exoplayer2/Player;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/Player;",
            ")[I"
        }
    .end annotation

    const-string p2, "com.google.android.exoplayer.pause"

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const-string v0, "com.google.android.exoplayer.play"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_16

    new-array p1, v0, [I

    aput p2, p1, v2

    goto :goto_20

    :cond_16
    if-eq p1, v1, :cond_1e

    new-array p2, v0, [I

    aput p1, p2, v2

    move-object p1, p2

    goto :goto_20

    :cond_1e
    new-array p1, v2, [I

    :goto_20
    return-object p1
.end method

.method protected getActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    if-nez v0, :cond_21

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    if-eqz v4, :cond_16

    const-string v4, "com.google.android.exoplayer.prev"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_21

    const-string v4, "com.google.android.exoplayer.rewind"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    if-eqz v4, :cond_33

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "com.google.android.exoplayer.pause"

    goto :goto_30

    :cond_2e
    const-string v4, "com.google.android.exoplayer.play"

    :goto_30
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    if-nez v0, :cond_50

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_40

    const-string v0, "com.google.android.exoplayer.ffwd"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    if-eqz v0, :cond_50

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_50

    const-string v0, "com.google.android.exoplayer.next"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActionReceiver:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    if-eqz v0, :cond_5b

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->getCustomActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5b
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopAction:Ljava/lang/String;

    const-string v0, "com.google.android.exoplayer.stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopAction:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6a
    return-object v1
.end method

.method public invalidate()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->isNotificationStarted:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->updateNotification(Landroid/graphics/Bitmap;)Landroid/app/Notification;

    :cond_c
    return-void
.end method

.method public final setBadgeIconType(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    goto :goto_14

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_14
    :goto_14
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->badgeIconType:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setColor(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->color:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setColorized(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->colorized:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_8

    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/DefaultControlDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>()V

    :goto_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->controlDispatcher:Lcom/google/android/exoplayer2/ControlDispatcher;

    return-void
.end method

.method public final setDefaults(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->defaults:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setFastForwardIncrementMs(J)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    return-void

    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->fastForwardMs:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setMediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->mediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_d
    return-void
.end method

.method public final setNotificationListener(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->notificationListener:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;

    return-void
.end method

.method public final setOngoing(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->ongoing:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->ongoing:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    :cond_1f
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_27

    return-void

    :cond_27
    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    if-nez p1, :cond_33

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopNotification()V

    :cond_33
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->wasPlayWhenReady:Z

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->lastPlaybackState:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playerListener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->lastPlaybackState:I

    if-eq p1, v3, :cond_4f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->startOrUpdateNotification()V

    :cond_4f
    return-void
.end method

.method public final setPriority(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1a
    :goto_1a
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->priority:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setRewindIncrementMs(J)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    return-void

    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->rewindMs:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setSmallIcon(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->smallIconResourceId:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setStopAction(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopAction:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopAction:Ljava/lang/String;

    const-string v0, "com.google.android.exoplayer.stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->playbackActions:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_19
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/h$a;

    iget-object p1, p1, Landroidx/core/app/h$a;->i:Landroid/app/PendingIntent;

    :goto_21
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->stopPendingIntent:Landroid/app/PendingIntent;

    goto :goto_2f

    :cond_24
    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->customActions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_19

    :cond_2d
    const/4 p1, 0x0

    goto :goto_21

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

.method public final setUseChronometer(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useChronometer:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setUseNavigationActions(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->useNavigationActions:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setUsePlayPauseActions(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->usePlayPauseActions:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setVisibility(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_14

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_14
    :goto_14
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->visibility:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->invalidate()V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.AnonymousClass1 (com.google.android.exoplayer2.ui.PlayerNotificationManager$1)
.class synthetic Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.BitmapCallback (com.google.android.exoplayer2.ui.PlayerNotificationManager$BitmapCallback)
.class public final Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BitmapCallback"
.end annotation


# instance fields
.field private final notificationTag:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->notificationTag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;ILcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->notificationTag:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$200(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I

    move-result v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$300(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    :cond_1f
    return-void
.end method

.method public onBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ui/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ui/d;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.d (com.google.android.exoplayer2.ui.d)
.class public final synthetic Lcom/google/android/exoplayer2/ui/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

.field private final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/d;->b:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/d;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d;->b:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.CustomActionReceiver (com.google.android.exoplayer2.ui.PlayerNotificationManager$CustomActionReceiver)
.class public interface abstract Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomActionReceiver"
.end annotation


# virtual methods
.method public abstract createCustomActions(Landroid/content/Context;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomActions(Lcom/google/android/exoplayer2/Player;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onCustomAction(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/content/Intent;)V
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.MediaDescriptionAdapter (com.google.android.exoplayer2.ui.PlayerNotificationManager$MediaDescriptionAdapter)
.class public interface abstract Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaDescriptionAdapter"
.end annotation


# virtual methods
.method public abstract createCurrentContentIntent(Lcom/google/android/exoplayer2/Player;)Landroid/app/PendingIntent;
.end method

.method public abstract getCurrentContentText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/String;
.end method

.method public abstract getCurrentContentTitle(Lcom/google/android/exoplayer2/Player;)Ljava/lang/String;
.end method

.method public abstract getCurrentLargeIcon(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback;)Landroid/graphics/Bitmap;
.end method

.method public abstract getCurrentSubText(Lcom/google/android/exoplayer2/Player;)Ljava/lang/String;
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.NotificationBroadcastReceiver (com.google.android.exoplayer2.ui.PlayerNotificationManager$NotificationBroadcastReceiver)
.class Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_115

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$300(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z

    move-result v0

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I

    move-result v0

    const-string v1, "INSTANCE_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I

    move-result v1

    if-eq v0, v1, :cond_26

    goto/16 :goto_115

    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.exoplayer.play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    const-string v2, "com.google.android.exoplayer.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto/16 :goto_108

    :cond_3c
    const-string v1, "com.google.android.exoplayer.ffwd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "com.google.android.exoplayer.rewind"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    goto/16 :goto_e1

    :cond_4e
    const-string v1, "com.google.android.exoplayer.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_6d

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result p2

    if-eq p2, v2, :cond_115

    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    goto/16 :goto_115

    :cond_6d
    const-string v1, "com.google.android.exoplayer.prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result p2

    if-eq p2, v2, :cond_9d

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v5, 0xbb8

    cmp-long v2, v0, v5

    if-lez v2, :cond_62

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_9d

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v0, :cond_9d

    goto :goto_62

    :cond_9d
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    goto :goto_115

    :cond_ab
    const-string v1, "com.google.android.exoplayer.stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchStop(Lcom/google/android/exoplayer2/Player;Z)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1400(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    goto :goto_115

    :cond_c3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    move-result-object v1

    if-eqz v1, :cond_115

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1600(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1500(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver;->onCustomAction(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_115

    :cond_e1
    :goto_e1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ee

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)J

    move-result-wide v0

    goto :goto_f5

    :cond_ee
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1300(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)J

    move-result-wide v0

    neg-long v0, v0

    :goto_f5
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-interface {p2, p1, v2, v3, v4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    goto :goto_115

    :cond_108
    :goto_108
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    :cond_115
    :goto_115
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.NotificationListener (com.google.android.exoplayer2.ui.PlayerNotificationManager$NotificationListener)
.class public interface abstract Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationListener"
.end annotation


# virtual methods
.method public abstract onNotificationCancelled(I)V
.end method

.method public abstract onNotificationStarted(ILandroid/app/Notification;)V
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.PlayerListener (com.google.android.exoplayer2.ui.PlayerNotificationManager$PlayerListener)
.class Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    return-void
.end method


# virtual methods
.method public synthetic onLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$700(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Z

    move-result v0

    if-eq v0, p1, :cond_b

    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$800(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)I

    move-result v0

    if-eq v0, p2, :cond_18

    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$702(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;Z)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$802(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;I)I

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public synthetic onSeekProcessed()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/b;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/b;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$100(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_16

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$PlayerListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;->access$900(Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/b;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.Priority (com.google.android.exoplayer2.ui.PlayerNotificationManager$Priority)
.class public interface abstract annotation Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Priority;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Priority"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.exoplayer2.ui.PlayerNotificationManager.Visibility (com.google.android.exoplayer2.ui.PlayerNotificationManager$Visibility)
.class public interface abstract annotation Lcom/google/android/exoplayer2/ui/PlayerNotificationManager$Visibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Visibility"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
