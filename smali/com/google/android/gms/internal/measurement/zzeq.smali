###### Class com.google.android.gms.internal.measurement.zzeq (com.google.android.gms.internal.measurement.zzeq)
.class public Lcom/google/android/gms/internal/measurement/zzeq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzeq$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Z = false

.field private static zzb:Z = true

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzeq;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzeq;

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzeq;


# instance fields
.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzeq$zza;",
            "Lcom/google/android/gms/internal/measurement/zzfd$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzeq;->zze:Lcom/google/android/gms/internal/measurement/zzeq;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzf:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzeq;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzeq;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez v0, :cond_14

    const-class v1, Lcom/google/android/gms/internal/measurement/zzeq;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzeq;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzeq;->zze:Lcom/google/android/gms/internal/measurement/zzeq;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzeq;->zzc:Lcom/google/android/gms/internal/measurement/zzeq;

    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzeq;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzeq;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzeq;->zzd:Lcom/google/android/gms/internal/measurement/zzeq;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzeq;->zzd:Lcom/google/android/gms/internal/measurement/zzeq;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v1

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzeq;->zzd:Lcom/google/android/gms/internal/measurement/zzeq;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzgo;I)Lcom/google/android/gms/internal/measurement/zzfd$zzf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzfd$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zzf:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzeq$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq$zza;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfd$zzf;

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzeq.zza (com.google.android.gms.internal.measurement.zzeq$zza)
.class final Lcom/google/android/gms/internal/measurement/zzeq$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zza:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzeq$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzeq$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zza:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zza:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zzb:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zza:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzeq$zza;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method
