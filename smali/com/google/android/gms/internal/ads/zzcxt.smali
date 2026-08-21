###### Class com.google.android.gms.internal.ads.zzcxt (com.google.android.gms.internal.ads.zzcxt)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcxt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field static final zzgfh:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcxt;->zzgfh:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
