###### Class com.google.android.gms.internal.ads.zzdwe (com.google.android.gms.internal.ads.zzdwe)
.class public final Lcom/google/android/gms/internal/ads/zzdwe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvv;
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvv<",
        "TT;>;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzhxr:Lcom/google/android/gms/internal/ads/zzdwe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwe<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzduz:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwe;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdwe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzduz:Ljava/lang/Object;

    return-void
.end method

.method public static zzbb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzdwb<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwe;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwe;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzdwb<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzhxr:Lcom/google/android/gms/internal/ads/zzdwe;

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwe;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzduz:Ljava/lang/Object;

    return-object v0
.end method
