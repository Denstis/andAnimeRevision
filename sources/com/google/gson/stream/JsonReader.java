package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: classes.dex */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Reader in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int stackSize;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int[] stack = new int[32];

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                int i2;
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int iDoPeek = jsonReader.peeked;
                if (iDoPeek == 0) {
                    iDoPeek = jsonReader.doPeek();
                }
                if (iDoPeek == 13) {
                    i2 = 9;
                } else if (iDoPeek == 12) {
                    i2 = 8;
                } else {
                    if (iDoPeek != 14) {
                        throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
                    }
                    i2 = 10;
                }
                jsonReader.peeked = i2;
            }
        };
    }

    public JsonReader(Reader reader) {
        this.stackSize = 0;
        int[] iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        int i2 = this.pos;
        char[] cArr = NON_EXECUTE_PREFIX;
        if (i2 + cArr.length > this.limit && !fillBuffer(cArr.length)) {
            return;
        }
        int i3 = 0;
        while (true) {
            char[] cArr2 = NON_EXECUTE_PREFIX;
            if (i3 >= cArr2.length) {
                this.pos += cArr2.length;
                return;
            } else if (this.buffer[this.pos + i3] != cArr2[i3]) {
                return;
            } else {
                i3++;
            }
        }
    }

    private boolean fillBuffer(int i2) throws IOException {
        int i3;
        char[] cArr = this.buffer;
        int i4 = this.lineStart;
        int i5 = this.pos;
        this.lineStart = i4 - i5;
        int i6 = this.limit;
        if (i6 != i5) {
            this.limit = i6 - i5;
            System.arraycopy(cArr, i5, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            int i7 = this.limit;
            int i8 = reader.read(cArr, i7, cArr.length - i7);
            if (i8 == -1) {
                return false;
            }
            this.limit += i8;
            if (this.lineNumber == 0 && (i3 = this.lineStart) == 0 && this.limit > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i3 + 1;
                i2++;
            }
        } while (this.limit < i2);
        return true;
    }

    private boolean isLiteral(char c2) throws IOException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0053, code lost:
    
        if (r1 != '/') goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        r7.pos = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        if (r4 != r2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        r7.pos--;
        r2 = fillBuffer(2);
        r7.pos++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        if (r2 != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006a, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
    
        checkLenient();
        r2 = r7.pos;
        r3 = r0[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0074, code lost:
    
        if (r3 == '*') goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if (r3 == '/') goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0078, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0079, code lost:
    
        r7.pos = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0081, code lost:
    
        r7.pos = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
    
        if (skipTo("*\/") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0098, code lost:
    
        throw syntaxError("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0099, code lost:
    
        r7.pos = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009d, code lost:
    
        if (r1 != '#') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009f, code lost:
    
        checkLenient();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a3, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int nextNonWhitespace(boolean r8) throws java.io.IOException {
        /*
            r7 = this;
            char[] r0 = r7.buffer
        L2:
            int r1 = r7.pos
        L4:
            int r2 = r7.limit
        L6:
            r3 = 1
            if (r1 != r2) goto L34
            r7.pos = r1
            boolean r1 = r7.fillBuffer(r3)
            if (r1 != 0) goto L30
            if (r8 != 0) goto L15
            r8 = -1
            return r8
        L15:
            java.io.EOFException r8 = new java.io.EOFException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "End of input"
            r0.append(r1)
            java.lang.String r1 = r7.locationString()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0)
            throw r8
        L30:
            int r1 = r7.pos
            int r2 = r7.limit
        L34:
            int r4 = r1 + 1
            char r1 = r0[r1]
            r5 = 10
            if (r1 != r5) goto L44
            int r1 = r7.lineNumber
            int r1 = r1 + r3
            r7.lineNumber = r1
            r7.lineStart = r4
            goto La4
        L44:
            r5 = 32
            if (r1 == r5) goto La4
            r5 = 13
            if (r1 == r5) goto La4
            r5 = 9
            if (r1 != r5) goto L51
            goto La4
        L51:
            r5 = 47
            if (r1 != r5) goto L99
            r7.pos = r4
            r6 = 2
            if (r4 != r2) goto L6b
            int r2 = r7.pos
            int r2 = r2 - r3
            r7.pos = r2
            boolean r2 = r7.fillBuffer(r6)
            int r4 = r7.pos
            int r4 = r4 + r3
            r7.pos = r4
            if (r2 != 0) goto L6b
            return r1
        L6b:
            r7.checkLenient()
            int r2 = r7.pos
            char r3 = r0[r2]
            r4 = 42
            if (r3 == r4) goto L81
            if (r3 == r5) goto L79
            return r1
        L79:
            int r2 = r2 + 1
            r7.pos = r2
        L7d:
            r7.skipToEndOfLine()
            goto L2
        L81:
            int r2 = r2 + 1
            r7.pos = r2
        */
        //  java.lang.String r1 = "*/"
        /*
            boolean r1 = r7.skipTo(r1)
            if (r1 == 0) goto L92
            int r1 = r7.pos
            int r1 = r1 + r6
            goto L4
        L92:
            java.lang.String r8 = "Unterminated comment"
            java.io.IOException r8 = r7.syntaxError(r8)
            throw r8
        L99:
            r2 = 35
            r7.pos = r4
            if (r1 != r2) goto La3
            r7.checkLenient()
            goto L7d
        La3:
            return r1
        La4:
            r1 = r4
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextNonWhitespace(boolean):int");
    }

    private String nextQuotedValue(char c2) throws IOException {
        char[] cArr = this.buffer;
        StringBuilder sb = null;
        while (true) {
            int i2 = this.pos;
            int i3 = this.limit;
            while (true) {
                if (i2 < i3) {
                    int i4 = i2 + 1;
                    char c3 = cArr[i2];
                    if (c3 == c2) {
                        this.pos = i4;
                        int i5 = (i4 - i2) - 1;
                        if (sb == null) {
                            return new String(cArr, i2, i5);
                        }
                        sb.append(cArr, i2, i5);
                        return sb.toString();
                    }
                    if (c3 == '\\') {
                        this.pos = i4;
                        int i6 = (i4 - i2) - 1;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max((i6 + 1) * 2, 16));
                        }
                        sb.append(cArr, i2, i6);
                        sb.append(readEscapeCharacter());
                    } else {
                        if (c3 == '\n') {
                            this.lineNumber++;
                            this.lineStart = i4;
                        }
                        i2 = i4;
                    }
                } else {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i2 - i2) * 2, 16));
                    }
                    sb.append(cArr, i2, i2 - i2);
                    this.pos = i2;
                    if (!fillBuffer(1)) {
                        throw syntaxError("Unterminated string");
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004b, code lost:
    
        checkLenient();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0045. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String nextUnquotedValue() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = r1
        L3:
            r1 = 0
        L4:
            int r3 = r6.pos
            int r4 = r3 + r1
            int r5 = r6.limit
            if (r4 >= r5) goto L4f
            char[] r4 = r6.buffer
            int r3 = r3 + r1
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5d
            r4 = 10
            if (r3 == r4) goto L5d
            r4 = 12
            if (r3 == r4) goto L5d
            r4 = 13
            if (r3 == r4) goto L5d
            r4 = 32
            if (r3 == r4) goto L5d
            r4 = 35
            if (r3 == r4) goto L4b
            r4 = 44
            if (r3 == r4) goto L5d
            r4 = 47
            if (r3 == r4) goto L4b
            r4 = 61
            if (r3 == r4) goto L4b
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5d
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5d
            r4 = 58
            if (r3 == r4) goto L5d
            r4 = 59
            if (r3 == r4) goto L4b
            switch(r3) {
                case 91: goto L5d;
                case 92: goto L4b;
                case 93: goto L5d;
                default: goto L48;
            }
        L48:
            int r1 = r1 + 1
            goto L4
        L4b:
            r6.checkLenient()
            goto L5d
        L4f:
            char[] r3 = r6.buffer
            int r3 = r3.length
            if (r1 >= r3) goto L5f
            int r3 = r1 + 1
            boolean r3 = r6.fillBuffer(r3)
            if (r3 == 0) goto L5d
            goto L4
        L5d:
            r0 = r1
            goto L7f
        L5f:
            if (r2 != 0) goto L6c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r1, r3)
            r2.<init>(r3)
        L6c:
            char[] r3 = r6.buffer
            int r4 = r6.pos
            r2.append(r3, r4, r1)
            int r3 = r6.pos
            int r3 = r3 + r1
            r6.pos = r3
            r1 = 1
            boolean r1 = r6.fillBuffer(r1)
            if (r1 != 0) goto L3
        L7f:
            if (r2 != 0) goto L8b
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.buffer
            int r3 = r6.pos
            r1.<init>(r2, r3, r0)
            goto L96
        L8b:
            char[] r1 = r6.buffer
            int r3 = r6.pos
            r2.append(r1, r3, r0)
            java.lang.String r1 = r2.toString()
        L96:
            int r2 = r6.pos
            int r2 = r2 + r0
            r6.pos = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextUnquotedValue():java.lang.String");
    }

    private int peekKeyword() {
        int i2;
        String str;
        String str2;
        char c2 = this.buffer[this.pos];
        if (c2 == 't' || c2 == 'T') {
            i2 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c2 == 'f' || c2 == 'F') {
            i2 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c2 != 'n' && c2 != 'N') {
                return 0;
            }
            i2 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i3 = 1; i3 < length; i3++) {
            if (this.pos + i3 >= this.limit && !fillBuffer(i3 + 1)) {
                return 0;
            }
            char c3 = this.buffer[this.pos + i3];
            if (c3 != str.charAt(i3) && c3 != str2.charAt(i3)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i2;
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x009a, code lost:
    
        if (isLiteral(r14) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009c, code lost:
    
        if (r9 != 2) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
    
        if (r10 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a4, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a6, code lost:
    
        if (r13 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ac, code lost:
    
        if (r11 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ae, code lost:
    
        if (r13 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b0, code lost:
    
        if (r13 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b3, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b4, code lost:
    
        r18.peekedLong = r11;
        r18.pos += r3;
        r1 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bd, code lost:
    
        r18.peeked = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00bf, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c0, code lost:
    
        if (r9 == 2) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00c3, code lost:
    
        if (r9 == 4) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00c6, code lost:
    
        if (r9 != 7) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c9, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00cb, code lost:
    
        r18.peekedNumberLength = r3;
        r1 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00d0, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int peekNumber() {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private void push(int i2) {
        int i3 = this.stackSize;
        int[] iArr = this.stack;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[i3 * 2];
            int[] iArr3 = new int[i3 * 2];
            String[] strArr = new String[i3 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            System.arraycopy(this.pathIndices, 0, iArr3, 0, this.stackSize);
            System.arraycopy(this.pathNames, 0, strArr, 0, this.stackSize);
            this.stack = iArr2;
            this.pathIndices = iArr3;
            this.pathNames = strArr;
        }
        int[] iArr4 = this.stack;
        int i4 = this.stackSize;
        this.stackSize = i4 + 1;
        iArr4[i4] = i2;
    }

    private char readEscapeCharacter() throws IOException {
        int i2;
        int i3;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i4 = this.pos;
        this.pos = i4 + 1;
        char c2 = cArr[i4];
        if (c2 == '\n') {
            this.lineNumber++;
            this.lineStart = this.pos;
        } else if (c2 != '\"' && c2 != '\'' && c2 != '/' && c2 != '\\') {
            if (c2 == 'b') {
                return '\b';
            }
            if (c2 == 'f') {
                return '\f';
            }
            if (c2 == 'n') {
                return '\n';
            }
            if (c2 == 'r') {
                return '\r';
            }
            if (c2 == 't') {
                return '\t';
            }
            if (c2 != 'u') {
                throw syntaxError("Invalid escape sequence");
            }
            if (this.pos + 4 > this.limit && !fillBuffer(4)) {
                throw syntaxError("Unterminated escape sequence");
            }
            char c3 = 0;
            int i5 = this.pos;
            int i6 = i5 + 4;
            while (i5 < i6) {
                char c4 = this.buffer[i5];
                char c5 = (char) (c3 << 4);
                if (c4 < '0' || c4 > '9') {
                    if (c4 >= 'a' && c4 <= 'f') {
                        i2 = c4 - 'a';
                    } else {
                        if (c4 < 'A' || c4 > 'F') {
                            throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                        }
                        i2 = c4 - 'A';
                    }
                    i3 = i2 + 10;
                } else {
                    i3 = c4 - '0';
                }
                c3 = (char) (c5 + i3);
                i5++;
            }
            this.pos += 4;
            return c3;
        }
        return c2;
    }

    private void skipQuotedValue(char c2) throws IOException {
        char[] cArr = this.buffer;
        while (true) {
            int i2 = this.pos;
            int i3 = this.limit;
            while (true) {
                if (i2 < i3) {
                    int i4 = i2 + 1;
                    char c3 = cArr[i2];
                    if (c3 == c2) {
                        this.pos = i4;
                        return;
                    }
                    if (c3 == '\\') {
                        this.pos = i4;
                        readEscapeCharacter();
                        break;
                    } else {
                        if (c3 == '\n') {
                            this.lineNumber++;
                            this.lineStart = i4;
                        }
                        i2 = i4;
                    }
                } else {
                    this.pos = i2;
                    if (!fillBuffer(1)) {
                        throw syntaxError("Unterminated string");
                    }
                }
            }
        }
    }

    private boolean skipTo(String str) {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int i2 = this.pos;
            if (cArr[i2] != '\n') {
                for (int i3 = 0; i3 < length; i3++) {
                    if (this.buffer[this.pos + i3] != str.charAt(i3)) {
                        break;
                    }
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = i2 + 1;
            this.pos++;
        }
    }

    private void skipToEndOfLine() {
        char c2;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i2 = this.pos;
            this.pos = i2 + 1;
            c2 = cArr[i2];
            if (c2 == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos;
                return;
            }
        } while (c2 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
    
        checkLenient();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void skipUnquotedValue() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.pos
            int r2 = r1 + r0
            int r3 = r4.limit
            if (r2 >= r3) goto L51
            char[] r2 = r4.buffer
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.checkLenient()
        L4b:
            int r1 = r4.pos
            int r1 = r1 + r0
            r4.pos = r1
            return
        L51:
            int r1 = r1 + r0
            r4.pos = r1
            r0 = 1
            boolean r0 = r4.fillBuffer(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.skipUnquotedValue():void");
    }

    private IOException syntaxError(String str) throws MalformedJsonException {
        throw new MalformedJsonException(str + locationString());
    }

    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
        }
    }

    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 1) {
            push(3);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    int doPeek() throws IOException {
        int i2;
        int iNextNonWhitespace;
        int[] iArr = this.stack;
        int i3 = this.stackSize;
        int i4 = iArr[i3 - 1];
        if (i4 == 1) {
            iArr[i3 - 1] = 2;
        } else {
            if (i4 != 2) {
                if (i4 == 3 || i4 == 5) {
                    this.stack[this.stackSize - 1] = 4;
                    if (i4 == 5 && (iNextNonWhitespace = nextNonWhitespace(true)) != 44) {
                        if (iNextNonWhitespace != 59) {
                            if (iNextNonWhitespace != 125) {
                                throw syntaxError("Unterminated object");
                            }
                            this.peeked = 2;
                            return 2;
                        }
                        checkLenient();
                    }
                    int iNextNonWhitespace2 = nextNonWhitespace(true);
                    if (iNextNonWhitespace2 == 34) {
                        i2 = 13;
                    } else if (iNextNonWhitespace2 == 39) {
                        checkLenient();
                        i2 = 12;
                    } else {
                        if (iNextNonWhitespace2 == 125) {
                            if (i4 == 5) {
                                throw syntaxError("Expected name");
                            }
                            this.peeked = 2;
                            return 2;
                        }
                        checkLenient();
                        this.pos--;
                        if (!isLiteral((char) iNextNonWhitespace2)) {
                            throw syntaxError("Expected name");
                        }
                        i2 = 14;
                    }
                } else if (i4 == 4) {
                    iArr[i3 - 1] = 5;
                    int iNextNonWhitespace3 = nextNonWhitespace(true);
                    if (iNextNonWhitespace3 != 58) {
                        if (iNextNonWhitespace3 != 61) {
                            throw syntaxError("Expected ':'");
                        }
                        checkLenient();
                        if (this.pos < this.limit || fillBuffer(1)) {
                            char[] cArr = this.buffer;
                            int i5 = this.pos;
                            if (cArr[i5] == '>') {
                                this.pos = i5 + 1;
                            }
                        }
                    }
                } else if (i4 == 6) {
                    if (this.lenient) {
                        consumeNonExecutePrefix();
                    }
                    this.stack[this.stackSize - 1] = 7;
                } else if (i4 == 7) {
                    if (nextNonWhitespace(false) == -1) {
                        i2 = 17;
                    } else {
                        checkLenient();
                        this.pos--;
                    }
                } else if (i4 == 8) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                this.peeked = i2;
                return i2;
            }
            int iNextNonWhitespace4 = nextNonWhitespace(true);
            if (iNextNonWhitespace4 != 44) {
                if (iNextNonWhitespace4 != 59) {
                    if (iNextNonWhitespace4 != 93) {
                        throw syntaxError("Unterminated array");
                    }
                    this.peeked = 4;
                    return 4;
                }
                checkLenient();
            }
        }
        int iNextNonWhitespace5 = nextNonWhitespace(true);
        if (iNextNonWhitespace5 != 34) {
            if (iNextNonWhitespace5 == 39) {
                checkLenient();
                this.peeked = 8;
                return 8;
            }
            if (iNextNonWhitespace5 != 44 && iNextNonWhitespace5 != 59) {
                if (iNextNonWhitespace5 == 91) {
                    this.peeked = 3;
                    return 3;
                }
                if (iNextNonWhitespace5 != 93) {
                    if (iNextNonWhitespace5 == 123) {
                        this.peeked = 1;
                        return 1;
                    }
                    this.pos--;
                    int iPeekKeyword = peekKeyword();
                    if (iPeekKeyword != 0) {
                        return iPeekKeyword;
                    }
                    int iPeekNumber = peekNumber();
                    if (iPeekNumber != 0) {
                        return iPeekNumber;
                    }
                    if (!isLiteral(this.buffer[this.pos])) {
                        throw syntaxError("Expected value");
                    }
                    checkLenient();
                    i2 = 10;
                } else if (i4 == 1) {
                    this.peeked = 4;
                    return 4;
                }
            }
            if (i4 != 1 && i4 != 2) {
                throw syntaxError("Unexpected value");
            }
            checkLenient();
            this.pos--;
            this.peeked = 7;
            return 7;
        }
        i2 = 9;
        this.peeked = i2;
        return i2;
    }

    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
        }
        this.stackSize--;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        this.peeked = 0;
    }

    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
        }
        this.stackSize--;
        String[] strArr = this.pathNames;
        int i2 = this.stackSize;
        strArr[i2] = null;
        int[] iArr = this.pathIndices;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.peeked = 0;
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = this.stackSize;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.stack[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.pathIndices[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String[] strArr = this.pathNames;
                if (strArr[i3] != null) {
                    sb.append(strArr[i3]);
                }
            }
        }
        return sb.toString();
    }

    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    String locationString() {
        return " at line " + (this.lineNumber + 1) + " column " + ((this.pos - this.lineStart) + 1) + " path " + getPath();
    }

    public boolean nextBoolean() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (iDoPeek == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
    }

    public double nextDouble() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek == 8 || iDoPeek == 9) {
                strNextQuotedValue = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            } else if (iDoPeek == 10) {
                strNextQuotedValue = nextUnquotedValue();
            } else if (iDoPeek != 11) {
                throw new IllegalStateException("Expected a double but was " + peek() + locationString());
            }
            this.peekedString = strNextQuotedValue;
        }
        this.peeked = 11;
        double d2 = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + d2 + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return d2;
    }

    public int nextInt() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            long j2 = this.peekedLong;
            int i2 = (int) j2;
            if (j2 == i2) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException("Expected an int but was " + peek() + locationString());
            }
            if (iDoPeek == 10) {
                strNextQuotedValue = nextUnquotedValue();
            } else {
                strNextQuotedValue = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            this.peekedString = strNextQuotedValue;
            try {
                int i4 = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i5 = this.stackSize - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return i4;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d2 = Double.parseDouble(this.peekedString);
        int i6 = (int) d2;
        if (i6 != d2) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i7 = this.stackSize - 1;
        iArr3[i7] = iArr3[i7] + 1;
        return i6;
    }

    public long nextLong() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException("Expected a long but was " + peek() + locationString());
            }
            if (iDoPeek == 10) {
                strNextQuotedValue = nextUnquotedValue();
            } else {
                strNextQuotedValue = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            this.peekedString = strNextQuotedValue;
            try {
                long j2 = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return j2;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d2 = Double.parseDouble(this.peekedString);
        long j3 = (long) d2;
        if (j3 != d2) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i4 = this.stackSize - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j3;
    }

    public String nextName() throws IOException {
        char c2;
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else {
            if (iDoPeek == 12) {
                c2 = '\'';
            } else {
                if (iDoPeek != 13) {
                    throw new IllegalStateException("Expected a name but was " + peek() + locationString());
                }
                c2 = '\"';
            }
            strNextQuotedValue = nextQuotedValue(c2);
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strNextQuotedValue;
        return strNextQuotedValue;
    }

    public void nextNull() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + locationString());
    }

    public String nextString() throws IOException {
        String str;
        char c2;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            str = nextUnquotedValue();
        } else {
            if (iDoPeek == 8) {
                c2 = '\'';
            } else if (iDoPeek == 9) {
                c2 = '\"';
            } else if (iDoPeek == 11) {
                str = this.peekedString;
                this.peekedString = null;
            } else if (iDoPeek == 15) {
                str = Long.toString(this.peekedLong);
            } else {
                if (iDoPeek != 16) {
                    throw new IllegalStateException("Expected a string but was " + peek() + locationString());
                }
                str = new String(this.buffer, this.pos, this.peekedNumberLength);
                this.pos += this.peekedNumberLength;
            }
            str = nextQuotedValue(c2);
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public JsonToken peek() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public void skipValue() throws IOException {
        char c2;
        int i2 = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            if (iDoPeek == 3) {
                push(1);
            } else if (iDoPeek == 1) {
                push(3);
            } else {
                if (iDoPeek == 4 || iDoPeek == 2) {
                    this.stackSize--;
                    i2--;
                } else if (iDoPeek == 14 || iDoPeek == 10) {
                    skipUnquotedValue();
                } else {
                    if (iDoPeek == 8 || iDoPeek == 12) {
                        c2 = '\'';
                    } else if (iDoPeek == 9 || iDoPeek == 13) {
                        c2 = '\"';
                    } else if (iDoPeek == 16) {
                        this.pos += this.peekedNumberLength;
                    }
                    skipQuotedValue(c2);
                }
                this.peeked = 0;
            }
            i2++;
            this.peeked = 0;
        } while (i2 != 0);
        int[] iArr = this.pathIndices;
        int i3 = this.stackSize;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.pathNames[i3 - 1] = "null";
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }
}
