###### Class com.google.android.gms.internal.ads.zzcwa (com.google.android.gms.internal.ads.zzcwa)
.class public final Lcom/google/android/gms/internal/ads/zzcwa;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public name:Ljava/lang/String;

.field public zzgkc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwa;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgkc:Ljava/util/Map;

    return-void
.end method
