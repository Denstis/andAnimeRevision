###### Class com.google.android.material.shape.EdgeTreatment (com.google.android.material.shape.EdgeTreatment)
.class public Lcom/google/android/material/shape/EdgeTreatment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .registers 4

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
