package com.google.android.material.shape;

import com.google.android.material.internal.Experimental;

/* JADX INFO: loaded from: classes.dex */
@Experimental("The shapes API is currently experimental and subject to change")
public class CutCornerTreatment extends CornerTreatment {
    private final float size;

    public CutCornerTreatment(float f2) {
        this.size = f2;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(float f2, float f3, ShapePath shapePath) {
        shapePath.reset(0.0f, this.size * f3);
        double d2 = f2;
        double dSin = Math.sin(d2);
        double d3 = this.size;
        Double.isNaN(d3);
        double d4 = f3;
        Double.isNaN(d4);
        double dCos = Math.cos(d2);
        double d5 = this.size;
        Double.isNaN(d5);
        Double.isNaN(d4);
        shapePath.lineTo((float) (dSin * d3 * d4), (float) (dCos * d5 * d4));
    }
}
