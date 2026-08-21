package b.h.m;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final d f2515d = e.f2548c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f2516e = Character.toString(8206);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f2517f = Character.toString(8207);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final a f2518g = new a(false, 2, f2515d);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final a f2519h = new a(true, 2, f2515d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f2520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f2522c;

    /* JADX INFO: renamed from: b.h.m.a$a, reason: collision with other inner class name */
    public static final class C0102a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private d f2525c;

        public C0102a() {
            b(a.a(Locale.getDefault()));
        }

        private static a a(boolean z) {
            return z ? a.f2519h : a.f2518g;
        }

        private void b(boolean z) {
            this.f2523a = z;
            this.f2525c = a.f2515d;
            this.f2524b = 2;
        }

        public a a() {
            return (this.f2524b == 2 && this.f2525c == a.f2515d) ? a(this.f2523a) : new a(this.f2523a, this.f2524b, this.f2525c);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f2526f = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CharSequence f2527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2529c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2530d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private char f2531e;

        static {
            for (int i2 = 0; i2 < 1792; i2++) {
                f2526f[i2] = Character.getDirectionality(i2);
            }
        }

        b(CharSequence charSequence, boolean z) {
            this.f2527a = charSequence;
            this.f2528b = z;
            this.f2529c = charSequence.length();
        }

        private static byte a(char c2) {
            return c2 < 1792 ? f2526f[c2] : Character.getDirectionality(c2);
        }

        private byte e() {
            char c2;
            int i2 = this.f2530d;
            do {
                int i3 = this.f2530d;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2527a;
                int i4 = i3 - 1;
                this.f2530d = i4;
                this.f2531e = charSequence.charAt(i4);
                c2 = this.f2531e;
                if (c2 == '&') {
                    return (byte) 12;
                }
            } while (c2 != ';');
            this.f2530d = i2;
            this.f2531e = ';';
            return (byte) 13;
        }

        private byte f() {
            char cCharAt;
            do {
                int i2 = this.f2530d;
                if (i2 >= this.f2529c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f2527a;
                this.f2530d = i2 + 1;
                cCharAt = charSequence.charAt(i2);
                this.f2531e = cCharAt;
            } while (cCharAt != ';');
            return (byte) 12;
        }

        private byte g() {
            char cCharAt;
            int i2 = this.f2530d;
            while (true) {
                int i3 = this.f2530d;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2527a;
                int i4 = i3 - 1;
                this.f2530d = i4;
                this.f2531e = charSequence.charAt(i4);
                char c2 = this.f2531e;
                if (c2 == '<') {
                    return (byte) 12;
                }
                if (c2 == '>') {
                    break;
                }
                if (c2 == '\"' || c2 == '\'') {
                    char c3 = this.f2531e;
                    do {
                        int i5 = this.f2530d;
                        if (i5 > 0) {
                            CharSequence charSequence2 = this.f2527a;
                            int i6 = i5 - 1;
                            this.f2530d = i6;
                            cCharAt = charSequence2.charAt(i6);
                            this.f2531e = cCharAt;
                        }
                    } while (cCharAt != c3);
                }
            }
            this.f2530d = i2;
            this.f2531e = '>';
            return (byte) 13;
        }

        private byte h() {
            char cCharAt;
            int i2 = this.f2530d;
            while (true) {
                int i3 = this.f2530d;
                if (i3 >= this.f2529c) {
                    this.f2530d = i2;
                    this.f2531e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f2527a;
                this.f2530d = i3 + 1;
                this.f2531e = charSequence.charAt(i3);
                char c2 = this.f2531e;
                if (c2 == '>') {
                    return (byte) 12;
                }
                if (c2 == '\"' || c2 == '\'') {
                    char c3 = this.f2531e;
                    do {
                        int i4 = this.f2530d;
                        if (i4 < this.f2529c) {
                            CharSequence charSequence2 = this.f2527a;
                            this.f2530d = i4 + 1;
                            cCharAt = charSequence2.charAt(i4);
                            this.f2531e = cCharAt;
                        }
                    } while (cCharAt != c3);
                }
            }
        }

        byte a() {
            this.f2531e = this.f2527a.charAt(this.f2530d - 1);
            if (Character.isLowSurrogate(this.f2531e)) {
                int iCodePointBefore = Character.codePointBefore(this.f2527a, this.f2530d);
                this.f2530d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f2530d--;
            byte bA = a(this.f2531e);
            if (!this.f2528b) {
                return bA;
            }
            char c2 = this.f2531e;
            return c2 == '>' ? g() : c2 == ';' ? e() : bA;
        }

        byte b() {
            this.f2531e = this.f2527a.charAt(this.f2530d);
            if (Character.isHighSurrogate(this.f2531e)) {
                int iCodePointAt = Character.codePointAt(this.f2527a, this.f2530d);
                this.f2530d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f2530d++;
            byte bA = a(this.f2531e);
            if (!this.f2528b) {
                return bA;
            }
            char c2 = this.f2531e;
            return c2 == '<' ? h() : c2 == '&' ? f() : bA;
        }

        int c() {
            this.f2530d = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (this.f2530d < this.f2529c && i2 == 0) {
                byte b2 = b();
                if (b2 != 0) {
                    if (b2 == 1 || b2 == 2) {
                        if (i4 == 0) {
                            return 1;
                        }
                    } else if (b2 != 9) {
                        switch (b2) {
                            case 14:
                            case 15:
                                i4++;
                                i3 = -1;
                                continue;
                            case 16:
                            case 17:
                                i4++;
                                i3 = 1;
                                continue;
                            case 18:
                                i4--;
                                i3 = 0;
                                continue;
                        }
                    }
                } else if (i4 == 0) {
                    return -1;
                }
                i2 = i4;
            }
            if (i2 == 0) {
                return 0;
            }
            if (i3 != 0) {
                return i3;
            }
            while (this.f2530d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i2 == i4) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i2 == i4) {
                            return 1;
                        }
                        break;
                    case 18:
                        i4++;
                        continue;
                }
                i4--;
            }
            return 0;
        }

        int d() {
            this.f2530d = this.f2529c;
            int i2 = 0;
            int i3 = 0;
            while (this.f2530d > 0) {
                byte bA = a();
                if (bA == 0) {
                    if (i3 == 0) {
                        return -1;
                    }
                    if (i2 == 0) {
                        i2 = i3;
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i3 == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i3;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i2 == i3) {
                                return -1;
                            }
                            i3--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i3) {
                                return 1;
                            }
                            i3--;
                            break;
                        case 18:
                            i3++;
                            break;
                        default:
                            if (i2 == 0) {
                                i2 = i3;
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    a(boolean z, int i2, d dVar) {
        this.f2520a = z;
        this.f2521b = i2;
        this.f2522c = dVar;
    }

    private String a(CharSequence charSequence, d dVar) {
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        return (this.f2520a || !(zA || c(charSequence) == 1)) ? this.f2520a ? (!zA || c(charSequence) == -1) ? f2517f : "" : "" : f2516e;
    }

    static boolean a(Locale locale) {
        return f.b(locale) == 1;
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).c();
    }

    public static a b() {
        return new C0102a().a();
    }

    private String b(CharSequence charSequence, d dVar) {
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        return (this.f2520a || !(zA || b(charSequence) == 1)) ? this.f2520a ? (!zA || b(charSequence) == -1) ? f2517f : "" : "" : f2516e;
    }

    private static int c(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    public CharSequence a(CharSequence charSequence) {
        return a(charSequence, this.f2522c, true);
    }

    public CharSequence a(CharSequence charSequence, d dVar, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = dVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (a() && z) {
            spannableStringBuilder.append((CharSequence) b(charSequence, zA ? e.f2547b : e.f2546a));
        }
        if (zA != this.f2520a) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) a(charSequence, zA ? e.f2547b : e.f2546a));
        }
        return spannableStringBuilder;
    }

    public boolean a() {
        return (this.f2521b & 2) != 0;
    }
}
