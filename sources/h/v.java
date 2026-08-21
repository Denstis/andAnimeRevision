package h;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f4926d = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f4927e = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4930c;

    private v(String str, String str2, String str3, String str4) {
        this.f4928a = str;
        this.f4929b = str2;
        this.f4930c = str4;
    }

    public static v a(String str) {
        Matcher matcher = f4926d.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f4927e.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String strGroup = matcher2.group(1);
            if (strGroup != null && strGroup.equalsIgnoreCase("charset")) {
                String strGroup2 = matcher2.group(2);
                if (strGroup2 == null) {
                    strGroup2 = matcher2.group(3);
                } else if (strGroup2.startsWith("'") && strGroup2.endsWith("'") && strGroup2.length() > 2) {
                    strGroup2 = strGroup2.substring(1, strGroup2.length() - 1);
                }
                if (str2 != null && !strGroup2.equalsIgnoreCase(str2)) {
                    return null;
                }
                str2 = strGroup2;
            }
        }
        return new v(str, lowerCase, lowerCase2, str2);
    }

    public String a() {
        return this.f4929b;
    }

    public Charset a(Charset charset) {
        try {
            return this.f4930c != null ? Charset.forName(this.f4930c) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof v) && ((v) obj).f4928a.equals(this.f4928a);
    }

    public int hashCode() {
        return this.f4928a.hashCode();
    }

    public String toString() {
        return this.f4928a;
    }
}
