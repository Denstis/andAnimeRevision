###### Class com.google.android.gms.measurement.internal.zzdk (com.google.android.gms.measurement.internal.zzdk)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzdk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzej;


# static fields
.field static final zza:Lcom/google/android/gms/measurement/internal/zzej;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzdk;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzdk;->zza:Lcom/google/android/gms/measurement/internal/zzej;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzap;->zzx()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
