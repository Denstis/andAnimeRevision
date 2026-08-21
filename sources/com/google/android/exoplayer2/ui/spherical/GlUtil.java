package com.google.android.exoplayer2.ui.spherical;

import android.annotation.TargetApi;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
final class GlUtil {
    private static final String TAG = "Spherical.Utils";

    private GlUtil() {
    }

    public static void checkGlError() {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            do {
                Log.e(TAG, "glError " + GLU.gluErrorString(iGlGetError));
                iGlGetError = GLES20.glGetError();
            } while (iGlGetError != 0);
        }
    }

    public static int compileProgram(String[] strArr, String[] strArr2) {
        checkGlError();
        int iGlCreateShader = GLES20.glCreateShader(35633);
        GLES20.glShaderSource(iGlCreateShader, TextUtils.join("\n", strArr));
        GLES20.glCompileShader(iGlCreateShader);
        checkGlError();
        int iGlCreateShader2 = GLES20.glCreateShader(35632);
        GLES20.glShaderSource(iGlCreateShader2, TextUtils.join("\n", strArr2));
        GLES20.glCompileShader(iGlCreateShader2);
        checkGlError();
        int iGlCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(iGlCreateProgram, iGlCreateShader);
        GLES20.glAttachShader(iGlCreateProgram, iGlCreateShader2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            Log.e(TAG, "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        }
        checkGlError();
        return iGlCreateProgram;
    }

    public static FloatBuffer createBuffer(float[] fArr) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.position(0);
        return floatBufferAsFloatBuffer;
    }

    @TargetApi(15)
    public static int createExternalTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError();
        return iArr[0];
    }
}
