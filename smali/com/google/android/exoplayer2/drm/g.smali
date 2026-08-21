###### Class com.google.android.exoplayer2.drm.g (com.google.android.exoplayer2.drm.g)
.class public final synthetic Lcom/google/android/exoplayer2/drm/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/EventDispatcher$Event;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/drm/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/g;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/g;->a:Lcom/google/android/exoplayer2/drm/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendTo(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmKeysRestored()V

    return-void
.end method
