###### Class com.google.android.gms.internal.ads.zzdkg (com.google.android.gms.internal.ads.zzdkg)
.class public final Lcom/google/android/gms/internal/ads/zzdkg;
.super Lcom/google/android/gms/internal/ads/zzdqw;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdkg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "Lcom/google/android/gms/internal/ads/zzdkg;",
        "Lcom/google/android/gms/internal/ads/zzdkg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdsp<",
            "Lcom/google/android/gms/internal/ads/zzdkg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;


# instance fields
.field private zzgyx:Ljava/lang/String;

.field private zzgyy:Lcom/google/android/gms/internal/ads/zzdjt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqw;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyx:Ljava/lang/String;

    return-void
.end method

.method public static zzavh()Lcom/google/android/gms/internal/ads/zzdkg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    return-object v0
.end method

.method static synthetic zzavi()Lcom/google/android/gms/internal/ads/zzdkg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    return-object v0
.end method

.method public static zzbs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdkg;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdkg;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdkh;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdkg;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzdkg;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdkg;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqw$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqw$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzdqw;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzdkg;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzgyx"

    aput-object v0, p1, p2

    const-string p2, "zzgyy"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyz:Lcom/google/android/gms/internal/ads/zzdkg;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdkg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdkg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdkh;)V

    return-object p1

    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdkg;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzavf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzavg()Lcom/google/android/gms/internal/ads/zzdjt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzgyy:Lcom/google/android/gms/internal/ads/zzdjt;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdjt;->zzaua()Lcom/google/android/gms/internal/ads/zzdjt;

    move-result-object v0

    :cond_8
    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdkg.zza (com.google.android.gms.internal.ads.zzdkg$zza)
.class public final Lcom/google/android/gms/internal/ads/zzdkg$zza;
.super Lcom/google/android/gms/internal/ads/zzdqw$zza;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqw$zza<",
        "Lcom/google/android/gms/internal/ads/zzdkg;",
        "Lcom/google/android/gms/internal/ads/zzdkg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdkg;->zzavi()Lcom/google/android/gms/internal/ads/zzdkg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdkh;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkg$zza;-><init>()V

    return-void
.end method
