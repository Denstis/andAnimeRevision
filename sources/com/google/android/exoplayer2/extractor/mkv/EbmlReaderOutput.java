package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
interface EbmlReaderOutput {
    public static final int TYPE_BINARY = 4;
    public static final int TYPE_FLOAT = 5;
    public static final int TYPE_MASTER = 1;
    public static final int TYPE_STRING = 3;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_UNSIGNED_INT = 2;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ElementType {
    }

    void binaryElement(int i2, int i3, ExtractorInput extractorInput);

    void endMasterElement(int i2);

    void floatElement(int i2, double d2);

    int getElementType(int i2);

    void integerElement(int i2, long j2);

    boolean isLevel1Element(int i2);

    void startMasterElement(int i2, long j2, long j3);

    void stringElement(int i2, String str);
}
