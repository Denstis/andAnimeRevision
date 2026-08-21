package com.google.android.exoplayer2.video.spherical;

import com.google.android.exoplayer2.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DrawMode {
    }

    public static final class Mesh {
        private final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public SubMesh getSubMesh(int i2) {
            return this.subMeshes[i2];
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }
    }

    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i2, float[] fArr, float[] fArr2, int i3) {
            this.textureId = i2;
            Assertions.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i3;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public Projection(Mesh mesh, int i2) {
        this(mesh, mesh, i2);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i2) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i2;
        this.singleMesh = mesh == mesh2;
    }

    public static Projection createEquirectangular(float f2, int i2, int i3, float f3, float f4, int i4) {
        int i5;
        int i6;
        int i7;
        float f5 = f2;
        int i8 = i2;
        int i9 = i3;
        Assertions.checkArgument(f5 > 0.0f);
        Assertions.checkArgument(i8 >= 1);
        Assertions.checkArgument(i9 >= 1);
        Assertions.checkArgument(f3 > 0.0f && f3 <= 180.0f);
        Assertions.checkArgument(f4 > 0.0f && f4 <= 360.0f);
        float radians = (float) Math.toRadians(f3);
        float radians2 = (float) Math.toRadians(f4);
        float f6 = radians / i8;
        float f7 = radians2 / i9;
        int i10 = i9 + 1;
        int i11 = ((i10 * 2) + 2) * i8;
        float[] fArr = new float[i11 * 3];
        float[] fArr2 = new float[i11 * 2];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i8) {
            float f8 = radians / 2.0f;
            float f9 = (i12 * f6) - f8;
            int i15 = i12 + 1;
            float f10 = (i15 * f6) - f8;
            int i16 = i14;
            int i17 = i13;
            int i18 = 0;
            while (i18 < i10) {
                int i19 = i16;
                int i20 = 2;
                int i21 = i17;
                int i22 = 0;
                while (i22 < i20) {
                    float f11 = f9;
                    float f12 = i22 == 0 ? f11 : f10;
                    float f13 = i18 * f7;
                    int i23 = i15;
                    int i24 = i21 + 1;
                    float f14 = f7;
                    int i25 = i10;
                    double d2 = f5;
                    float f15 = radians;
                    double d3 = (f13 + 3.1415927f) - (radians2 / 2.0f);
                    double dSin = Math.sin(d3);
                    Double.isNaN(d2);
                    double d4 = f12;
                    int i26 = i12;
                    int i27 = i18;
                    fArr[i21] = -((float) (dSin * d2 * Math.cos(d4)));
                    int i28 = i24 + 1;
                    double dSin2 = Math.sin(d4);
                    Double.isNaN(d2);
                    int i29 = i22;
                    fArr[i24] = (float) (d2 * dSin2);
                    int i30 = i28 + 1;
                    double dCos = Math.cos(d3);
                    Double.isNaN(d2);
                    fArr[i28] = (float) (d2 * dCos * Math.cos(d4));
                    int i31 = i19 + 1;
                    fArr2[i19] = f13 / radians2;
                    int i32 = i31 + 1;
                    fArr2[i31] = ((i26 + i29) * f6) / f15;
                    if (i27 == 0 && i29 == 0) {
                        i5 = i3;
                        i7 = i29;
                        i6 = i27;
                    } else {
                        i5 = i3;
                        i6 = i27;
                        i7 = i29;
                        if (i6 != i5 || i7 != 1) {
                        }
                        i19 = i32;
                        i21 = i30;
                        i22 = i7 + 1;
                        f9 = f11;
                        i18 = i6;
                        i12 = i26;
                        f7 = f14;
                        i15 = i23;
                        i10 = i25;
                        radians = f15;
                        i20 = 2;
                        i9 = i5;
                        f5 = f2;
                    }
                    System.arraycopy(fArr, i30 - 3, fArr, i30, 3);
                    i30 += 3;
                    System.arraycopy(fArr2, i32 - 2, fArr2, i32, 2);
                    i32 += 2;
                    i19 = i32;
                    i21 = i30;
                    i22 = i7 + 1;
                    f9 = f11;
                    i18 = i6;
                    i12 = i26;
                    f7 = f14;
                    i15 = i23;
                    i10 = i25;
                    radians = f15;
                    i20 = 2;
                    i9 = i5;
                    f5 = f2;
                }
                i18++;
                i9 = i9;
                i17 = i21;
                i16 = i19;
                f7 = f7;
                i15 = i15;
                f5 = f2;
            }
            f5 = f2;
            i8 = i2;
            i13 = i17;
            i14 = i16;
            i12 = i15;
        }
        return new Projection(new Mesh(new SubMesh(0, fArr, fArr2, 1)), i4);
    }

    public static Projection createEquirectangular(int i2) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i2);
    }
}
