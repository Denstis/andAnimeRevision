package androidx.media.g;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.core.app.g;
import androidx.core.app.h;
import androidx.media.d;
import androidx.media.e;
import androidx.media.f;

/* JADX INFO: loaded from: classes.dex */
public class a extends h.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f1087e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    MediaSessionCompat.Token f1088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1089g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PendingIntent f1090h;

    private RemoteViews a(h.a aVar) {
        boolean z = aVar.a() == null;
        RemoteViews remoteViews = new RemoteViews(this.f854a.f843a.getPackageName(), f.notification_media_action);
        remoteViews.setImageViewResource(d.action0, aVar.e());
        if (!z) {
            remoteViews.setOnClickPendingIntent(d.action0, aVar.a());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(d.action0, aVar.i());
        }
        return remoteViews;
    }

    int a(int i2) {
        return i2 <= 3 ? f.notification_template_big_media_narrow : f.notification_template_big_media;
    }

    Notification.MediaStyle a(Notification.MediaStyle mediaStyle) {
        int[] iArr = this.f1087e;
        if (iArr != null) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f1088f;
        if (token != null) {
            mediaStyle.setMediaSession((MediaSession.Token) token.b());
        }
        return mediaStyle;
    }

    RemoteViews a() {
        int iMin = Math.min(this.f854a.f844b.size(), 5);
        RemoteViews remoteViewsA = a(false, a(iMin), false);
        remoteViewsA.removeAllViews(d.media_actions);
        if (iMin > 0) {
            for (int i2 = 0; i2 < iMin; i2++) {
                remoteViewsA.addView(d.media_actions, a(this.f854a.f844b.get(i2)));
            }
        }
        if (this.f1089g) {
            remoteViewsA.setViewVisibility(d.cancel_action, 0);
            remoteViewsA.setInt(d.cancel_action, "setAlpha", this.f854a.f843a.getResources().getInteger(e.cancel_button_image_alpha));
            remoteViewsA.setOnClickPendingIntent(d.cancel_action, this.f1090h);
        } else {
            remoteViewsA.setViewVisibility(d.cancel_action, 8);
        }
        return remoteViewsA;
    }

    public a a(PendingIntent pendingIntent) {
        this.f1090h = pendingIntent;
        return this;
    }

    public a a(MediaSessionCompat.Token token) {
        this.f1088f = token;
        return this;
    }

    public a a(boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            this.f1089g = z;
        }
        return this;
    }

    public a a(int... iArr) {
        this.f1087e = iArr;
        return this;
    }

    @Override // androidx.core.app.h.e
    public void a(g gVar) {
        if (Build.VERSION.SDK_INT < 21) {
            if (this.f1089g) {
                gVar.a().setOngoing(true);
            }
        } else {
            Notification.Builder builderA = gVar.a();
            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
            a(mediaStyle);
            builderA.setStyle(mediaStyle);
        }
    }

    RemoteViews b() {
        RemoteViews remoteViewsA = a(false, c(), true);
        int size = this.f854a.f844b.size();
        int[] iArr = this.f1087e;
        int iMin = iArr == null ? 0 : Math.min(iArr.length, 3);
        remoteViewsA.removeAllViews(d.media_actions);
        if (iMin > 0) {
            for (int i2 = 0; i2 < iMin; i2++) {
                if (i2 >= size) {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i2), Integer.valueOf(size - 1)));
                }
                remoteViewsA.addView(d.media_actions, a(this.f854a.f844b.get(this.f1087e[i2])));
            }
        }
        if (this.f1089g) {
            remoteViewsA.setViewVisibility(d.end_padder, 8);
            remoteViewsA.setViewVisibility(d.cancel_action, 0);
            remoteViewsA.setOnClickPendingIntent(d.cancel_action, this.f1090h);
            remoteViewsA.setInt(d.cancel_action, "setAlpha", this.f854a.f843a.getResources().getInteger(e.cancel_button_image_alpha));
        } else {
            remoteViewsA.setViewVisibility(d.end_padder, 0);
            remoteViewsA.setViewVisibility(d.cancel_action, 8);
        }
        return remoteViewsA;
    }

    @Override // androidx.core.app.h.e
    public RemoteViews b(g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return a();
    }

    int c() {
        return f.notification_template_media;
    }

    @Override // androidx.core.app.h.e
    public RemoteViews c(g gVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return b();
    }
}
