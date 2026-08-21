###### Class com.google.android.gms.internal.measurement.zzlz (com.google.android.gms.internal.measurement.zzlz)
.class public final Lcom/google/android/gms/internal/measurement/zzlz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzma;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcr;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcm;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzlz;->zza:Lcom/google/android/gms/internal/measurement/zzcl;

    const-string v1, "measurement.test.double_flag"

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:Lcom/google/android/gms/internal/measurement/zzcl;

    const-string v1, "measurement.test.int_flag"

    const-wide/16 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:Lcom/google/android/gms/internal/measurement/zzcl;

    const-string v1, "measurement.test.long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:Lcom/google/android/gms/internal/measurement/zzcl;

    const-string v1, "measurement.test.string_flag"

    const-string v2, "---"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:Lcom/google/android/gms/internal/measurement/zzcl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()D
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zzb:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zzc:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zzd:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlz;->zze:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
