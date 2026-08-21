package animebestapp.com.models;

import androidx.annotation.Keep;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AdBanner {

    @SerializedName("isEnabled")
    private final boolean isEnabled;

    @SerializedName(ImagesContract.URL)
    private final String url;

    public AdBanner(boolean z, String str) {
        g.p.b.f.b(str, ImagesContract.URL);
        this.isEnabled = z;
        this.url = str;
    }

    public static /* synthetic */ AdBanner copy$default(AdBanner adBanner, boolean z, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = adBanner.isEnabled;
        }
        if ((i2 & 2) != 0) {
            str = adBanner.url;
        }
        return adBanner.copy(z, str);
    }

    public final boolean component1() {
        return this.isEnabled;
    }

    public final String component2() {
        return this.url;
    }

    public final AdBanner copy(boolean z, String str) {
        g.p.b.f.b(str, ImagesContract.URL);
        return new AdBanner(z, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AdBanner) {
                AdBanner adBanner = (AdBanner) obj;
                if (!(this.isEnabled == adBanner.isEnabled) || !g.p.b.f.a((Object) this.url, (Object) adBanner.url)) {
                }
            }
            return false;
        }
        return true;
    }

    public final String getUrl() {
        return this.url;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.isEnabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i2 = r0 * 31;
        String str = this.url;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public String toString() {
        return "AdBanner(isEnabled=" + this.isEnabled + ", url=" + this.url + ")";
    }
}
