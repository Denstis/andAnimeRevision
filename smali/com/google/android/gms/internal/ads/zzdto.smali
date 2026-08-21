###### Class com.google.android.gms.internal.ads.zzdto (com.google.android.gms.internal.ads.zzdto)
.class public final Lcom/google/android/gms/internal/ads/zzdto;
.super Ljava/lang/RuntimeException;
.source ""


# instance fields
.field private final zzhoo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 2

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzhoo:Ljava/util/List;

    return-void
.end method
