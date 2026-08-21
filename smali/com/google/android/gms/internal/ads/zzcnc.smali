###### Class com.google.android.gms.internal.ads.zzcnc (com.google.android.gms.internal.ads.zzcnc)
.class public Lcom/google/android/gms/internal/ads/zzcnc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcnc$zza;
    }
.end annotation


# instance fields
.field private zzgdm:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc$zza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc$zza;->zza(Lcom/google/android/gms/internal/ads/zzcnc$zza;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgdm:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc$zza;Lcom/google/android/gms/internal/ads/zzcne;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcnc;-><init>(Lcom/google/android/gms/internal/ads/zzcnc$zza;)V

    return-void
.end method


# virtual methods
.method public final zzals()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgdm:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final zzalt()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgdm:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzalu()I
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnc;->zzgdm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_46

    goto :goto_36

    :sswitch_e
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    goto :goto_37

    :sswitch_18
    const-string v1, "REWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x3

    goto :goto_37

    :sswitch_22
    const-string v1, "INTERSTITIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :sswitch_2c
    const-string v1, "NATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, -0x1

    :goto_37
    if-eqz v0, :cond_45

    if-eq v0, v5, :cond_44

    if-eq v0, v3, :cond_42

    if-eq v0, v4, :cond_40

    return v2

    :cond_40
    const/4 v0, 0x7

    return v0

    :cond_42
    const/4 v0, 0x6

    return v0

    :cond_44
    return v4

    :cond_45
    return v5

    :sswitch_data_46
    .sparse-switch
        -0x772abbe9 -> :sswitch_2c
        -0x51d5b0d4 -> :sswitch_22
        0x205e3c0e -> :sswitch_18
        0x7458732c -> :sswitch_e
    .end sparse-switch
.end method

###### Class com.google.android.gms.internal.ads.zzcnc.zza (com.google.android.gms.internal.ads.zzcnc$zza)
.class public final Lcom/google/android/gms/internal/ads/zzcnc$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcnc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzgdm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcnc$zza;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnc$zza;->zzgdm:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcnc$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnc$zza;->zzgdm:Ljava/lang/String;

    return-object p0
.end method
