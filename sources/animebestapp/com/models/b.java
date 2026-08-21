package animebestapp.com.models;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("list_type")
    private final int f1597a;

    public final int a() {
        return this.f1597a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof b) {
                if (this.f1597a == ((b) obj).f1597a) {
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f1597a;
    }

    public String toString() {
        return "CheckFavorite(listType=" + this.f1597a + ")";
    }
}
