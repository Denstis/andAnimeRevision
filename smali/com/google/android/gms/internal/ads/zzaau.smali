###### Class com.google.android.gms.internal.ads.zzaau (com.google.android.gms.internal.ads.zzaau)
.class public final Lcom/google/android/gms/internal/ads/zzaau;
.super Lcom/google/android/gms/internal/ads/zzabl;
.source ""


# instance fields
.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I

.field private final zzcvx:Landroid/graphics/drawable/Drawable;

.field private final zzcvy:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzcvx:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->uri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzcvy:D

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaau;->width:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaau;->height:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->height:I

    return v0
.end method

.method public final getScale()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzcvy:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->width:I

    return v0
.end method

.method public final zzqi()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzcvx:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
