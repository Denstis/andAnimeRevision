###### Class com.google.android.gms.internal.ads.zzdis (com.google.android.gms.internal.ads.zzdis)
.class public final Lcom/google/android/gms/internal/ads/zzdis;
.super Lcom/google/android/gms/internal/ads/zzdqw;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdis$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "Lcom/google/android/gms/internal/ads/zzdis;",
        "Lcom/google/android/gms/internal/ads/zzdis$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdsp<",
            "Lcom/google/android/gms/internal/ads/zzdis;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgwh:Lcom/google/android/gms/internal/ads/zzdis;


# instance fields
.field private zzgtt:I

.field private zzgub:Lcom/google/android/gms/internal/ads/zzdpm;

.field private zzgwg:Lcom/google/android/gms/internal/ads/zzdit;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqw;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpm;->zzhgb:Lcom/google/android/gms/internal/ads/zzdpm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgub:Lcom/google/android/gms/internal/ads/zzdpm;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgtt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdis;I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdis;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdis;Lcom/google/android/gms/internal/ads/zzdit;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdis;->zza(Lcom/google/android/gms/internal/ads/zzdit;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdis;Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdis;->zzw(Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdit;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgwg:Lcom/google/android/gms/internal/ads/zzdit;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static zzasw()Lcom/google/android/gms/internal/ads/zzdis$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzazt()Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdis$zza;

    return-object v0
.end method

.method static synthetic zzasx()Lcom/google/android/gms/internal/ads/zzdis;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    return-object v0
.end method

.method public static zzba(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdis;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdis;

    return-object p0
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgub:Lcom/google/android/gms/internal/ads/zzdpm;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgtt:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdir;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdis;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzdis;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdis;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqw$zzc;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdqw$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzdqw;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzdis;->zzdv:Lcom/google/android/gms/internal/ads/zzdsp;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzgtt"

    aput-object v0, p1, p2

    const-string p2, "zzgwg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzgub"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdis;->zzgwh:Lcom/google/android/gms/internal/ads/zzdis;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdis$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdis$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdir;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdis;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgub:Lcom/google/android/gms/internal/ads/zzdpm;

    return-object v0
.end method

.method public final zzasv()Lcom/google/android/gms/internal/ads/zzdit;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->zzgwg:Lcom/google/android/gms/internal/ads/zzdit;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdit;->zzasz()Lcom/google/android/gms/internal/ads/zzdit;

    move-result-object v0

    :cond_8
    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdis.zza (com.google.android.gms.internal.ads.zzdis$zza)
.class public final Lcom/google/android/gms/internal/ads/zzdis$zza;
.super Lcom/google/android/gms/internal/ads/zzdqw$zza;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqw$zza<",
        "Lcom/google/android/gms/internal/ads/zzdis;",
        "Lcom/google/android/gms/internal/ads/zzdis$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdis;->zzasx()Lcom/google/android/gms/internal/ads/zzdis;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdir;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdis$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdit;)Lcom/google/android/gms/internal/ads/zzdis$zza;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdis;->zza(Lcom/google/android/gms/internal/ads/zzdis;Lcom/google/android/gms/internal/ads/zzdit;)V

    return-object p0
.end method

.method public final zzbc(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdis$zza;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdis;->zza(Lcom/google/android/gms/internal/ads/zzdis;Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-object p0
.end method

.method public final zzeg(I)Lcom/google/android/gms/internal/ads/zzdis$zza;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazn()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdis;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdis;->zza(Lcom/google/android/gms/internal/ads/zzdis;I)V

    return-object p0
.end method
