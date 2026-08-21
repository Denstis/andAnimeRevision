###### Class com.google.android.gms.internal.ads.zzdhr (com.google.android.gms.internal.ads.zzdhr)
.class public final Lcom/google/android/gms/internal/ads/zzdhr;
.super Lcom/google/android/gms/internal/ads/zzdqw;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdhr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "Lcom/google/android/gms/internal/ads/zzdhr;",
        "Lcom/google/android/gms/internal/ads/zzdhr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdsp<",
            "Lcom/google/android/gms/internal/ads/zzdhr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzguy:Lcom/google/android/gms/internal/ads/zzdhr;


# instance fields
.field private zzgud:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhr;->zzguy:Lcom/google/android/gms/internal/ads/zzdhr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqw;-><init>()V

    return-void
.end method

.method public static zzak(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhr;->zzguy:Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdhr;

    return-object p0
.end method

.method static synthetic zzarq()Lcom/google/android/gms/internal/ads/zzdhr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhr;->zzguy:Lcom/google/android/gms/internal/ads/zzdhr;

    return-object v0
.end method


# virtual methods
.method public final getKeySize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zzgud:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhs;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_50

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhr;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzdhr;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhr;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqw$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdhr;->zzguy:Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqw$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzdqw;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzdhr;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhr;->zzguy:Lcom/google/android/gms/internal/ads/zzdhr;

    return-object p1

    :pswitch_33
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzgud"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhr;->zzguy:Lcom/google/android/gms/internal/ads/zzdhr;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_43
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhr$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdhr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdhs;)V

    return-object p1

    :pswitch_49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdhr;-><init>()V

    return-object p1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.ads.zzdhr.zza (com.google.android.gms.internal.ads.zzdhr$zza)
.class public final Lcom/google/android/gms/internal/ads/zzdhr$zza;
.super Lcom/google/android/gms/internal/ads/zzdqw$zza;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdhr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqw$zza<",
        "Lcom/google/android/gms/internal/ads/zzdhr;",
        "Lcom/google/android/gms/internal/ads/zzdhr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhr;->zzarq()Lcom/google/android/gms/internal/ads/zzdhr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhs;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdhr$zza;-><init>()V

    return-void
.end method
