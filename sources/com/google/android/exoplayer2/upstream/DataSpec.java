package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DataSpec {
    public static final int FLAG_ALLOW_CACHING_UNKNOWN_LENGTH = 2;
    public static final int FLAG_ALLOW_GZIP = 1;
    public static final int HTTP_METHOD_GET = 1;
    public static final int HTTP_METHOD_HEAD = 3;
    public static final int HTTP_METHOD_POST = 2;
    public final long absoluteStreamPosition;
    public final int flags;
    public final byte[] httpBody;
    public final int httpMethod;
    public final String key;
    public final long length;
    public final long position;

    @Deprecated
    public final byte[] postBody;
    public final Uri uri;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface HttpMethod {
    }

    public DataSpec(Uri uri) {
        this(uri, 0);
    }

    public DataSpec(Uri uri, int i2) {
        this(uri, 0L, -1L, null, i2);
    }

    public DataSpec(Uri uri, int i2, byte[] bArr, long j2, long j3, long j4, String str, int i3) {
        byte[] bArr2 = bArr;
        boolean z = true;
        Assertions.checkArgument(j2 >= 0);
        Assertions.checkArgument(j3 >= 0);
        if (j4 <= 0 && j4 != -1) {
            z = false;
        }
        Assertions.checkArgument(z);
        this.uri = uri;
        this.httpMethod = i2;
        this.httpBody = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.postBody = this.httpBody;
        this.absoluteStreamPosition = j2;
        this.position = j3;
        this.length = j4;
        this.key = str;
        this.flags = i3;
    }

    public DataSpec(Uri uri, long j2, long j3, long j4, String str, int i2) {
        this(uri, null, j2, j3, j4, str, i2);
    }

    public DataSpec(Uri uri, long j2, long j3, String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    public DataSpec(Uri uri, long j2, long j3, String str, int i2) {
        this(uri, j2, j2, j3, str, i2);
    }

    public DataSpec(Uri uri, byte[] bArr, long j2, long j3, long j4, String str, int i2) {
        this(uri, bArr != null ? 2 : 1, bArr, j2, j3, j4, str, i2);
    }

    public static String getStringForHttpMethod(int i2) {
        if (i2 == 1) {
            return "GET";
        }
        if (i2 == 2) {
            return "POST";
        }
        if (i2 == 3) {
            return "HEAD";
        }
        throw new AssertionError(i2);
    }

    public final String getHttpMethodString() {
        return getStringForHttpMethod(this.httpMethod);
    }

    public boolean isFlagSet(int i2) {
        return (this.flags & i2) == i2;
    }

    public DataSpec subrange(long j2) {
        long j3 = this.length;
        return subrange(j2, j3 != -1 ? j3 - j2 : -1L);
    }

    public DataSpec subrange(long j2, long j3) {
        return (j2 == 0 && this.length == j3) ? this : new DataSpec(this.uri, this.httpMethod, this.httpBody, this.absoluteStreamPosition + j2, this.position + j2, j3, this.key, this.flags);
    }

    public String toString() {
        return "DataSpec[" + getHttpMethodString() + " " + this.uri + ", " + Arrays.toString(this.httpBody) + ", " + this.absoluteStreamPosition + ", " + this.position + ", " + this.length + ", " + this.key + ", " + this.flags + "]";
    }

    public DataSpec withUri(Uri uri) {
        return new DataSpec(uri, this.httpMethod, this.httpBody, this.absoluteStreamPosition, this.position, this.length, this.key, this.flags);
    }
}
