###### Class com.google.android.gms.internal.ads.zzfl (com.google.android.gms.internal.ads.zzfl)
.class public abstract Lcom/google/android/gms/internal/ads/zzfl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field protected final zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

.field private final zzaaj:Ljava/lang/String;

.field protected zzaal:Ljava/lang/reflect/Method;

.field private final zzaap:I

.field private final zzaaq:I

.field protected final zzvo:Lcom/google/android/gms/internal/ads/zzdx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfl;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaap:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaq:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzcw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzcu()V
.end method

.method public zzcw()Ljava/lang/Void;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfl;->className:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaj:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    if-nez v3, :cond_16

    return-object v0

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfl;->zzcu()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzcj()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v3

    if-eqz v3, :cond_36

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaap:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_36

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaq:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaap:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJ)V
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_36} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-object v0
.end method
