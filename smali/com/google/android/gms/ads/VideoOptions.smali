###### Class com.google.android.gms.ads.VideoOptions (com.google.android.gms.ads.VideoOptions)
.class public final Lcom/google/android/gms/ads/VideoOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzabp:Z

.field private final zzabq:Z

.field private final zzabr:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabp:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabq:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabr:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzyj;->zzabp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzyj;->zzabq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabq:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzyj;->zzabr:Z

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabr:Z

    return-void
.end method


# virtual methods
.method public final getClickToExpandRequested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabr:Z

    return v0
.end method

.method public final getCustomControlsRequested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabq:Z

    return v0
.end method

.method public final getStartMuted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzabp:Z

    return v0
.end method

###### Class com.google.android.gms.ads.VideoOptions.Builder (com.google.android.gms.ads.VideoOptions$Builder)
.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzabp:Z

.field private zzabq:Z

.field private zzabr:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabr:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabp:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabq:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabr:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/VideoOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/zzd;)V

    return-object v0
.end method

.method public final setClickToExpandRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabr:Z

    return-object p0
.end method

.method public final setCustomControlsRequested(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabq:Z

    return-object p0
.end method

.method public final setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzabp:Z

    return-object p0
.end method
