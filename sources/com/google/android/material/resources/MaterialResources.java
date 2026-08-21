package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import b.a.k.a.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialResources {
    private MaterialResources() {
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        ColorStateList colorStateListB;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateListB = a.b(context, resourceId)) == null) ? typedArray.getColorStateList(i2) : colorStateListB;
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        Drawable drawableC;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (drawableC = a.c(context, resourceId)) == null) ? typedArray.getDrawable(i2) : drawableC;
    }

    static int getIndexWithValue(TypedArray typedArray, int i2, int i3) {
        return typedArray.hasValue(i2) ? i2 : i3;
    }

    public static TextAppearance getTextAppearance(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return new TextAppearance(context, resourceId);
    }
}
