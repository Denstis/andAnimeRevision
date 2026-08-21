package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.h;
import com.google.android.gms.ads.AdRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class i implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Notification.Builder f858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h.d f859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RemoteViews f860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteViews f861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Bundle> f862e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Bundle f863f = new Bundle();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f864g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RemoteViews f865h;

    i(h.d dVar) {
        ArrayList<String> arrayList;
        Bundle bundle;
        String str;
        this.f859b = dVar;
        this.f858a = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(dVar.f843a, dVar.I) : new Notification.Builder(dVar.f843a);
        Notification notification = dVar.N;
        this.f858a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, dVar.f850h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(dVar.f846d).setContentText(dVar.f847e).setContentInfo(dVar.f852j).setContentIntent(dVar.f848f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(dVar.f849g, (notification.flags & 128) != 0).setLargeIcon(dVar.f851i).setNumber(dVar.f853k).setProgress(dVar.r, dVar.s, dVar.t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f858a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f858a.setSubText(dVar.p).setUsesChronometer(dVar.n).setPriority(dVar.l);
            Iterator<h.a> it = dVar.f844b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            Bundle bundle2 = dVar.B;
            if (bundle2 != null) {
                this.f863f.putAll(bundle2);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (dVar.x) {
                    this.f863f.putBoolean("android.support.localOnly", true);
                }
                String str2 = dVar.u;
                if (str2 != null) {
                    this.f863f.putString("android.support.groupKey", str2);
                    if (dVar.v) {
                        bundle = this.f863f;
                        str = "android.support.isGroupSummary";
                    } else {
                        bundle = this.f863f;
                        str = "android.support.useSideChannel";
                    }
                    bundle.putBoolean(str, true);
                }
                String str3 = dVar.w;
                if (str3 != null) {
                    this.f863f.putString("android.support.sortKey", str3);
                }
            }
            this.f860c = dVar.F;
            this.f861d = dVar.G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f858a.setShowWhen(dVar.m);
            if (Build.VERSION.SDK_INT < 21 && (arrayList = dVar.O) != null && !arrayList.isEmpty()) {
                Bundle bundle3 = this.f863f;
                ArrayList<String> arrayList2 = dVar.O;
                bundle3.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f858a.setLocalOnly(dVar.x).setGroup(dVar.u).setGroupSummary(dVar.v).setSortKey(dVar.w);
            this.f864g = dVar.M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f858a.setCategory(dVar.A).setColor(dVar.C).setVisibility(dVar.D).setPublicVersion(dVar.E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = dVar.O.iterator();
            while (it2.hasNext()) {
                this.f858a.addPerson(it2.next());
            }
            this.f865h = dVar.H;
            if (dVar.f845c.size() > 0) {
                Bundle bundle4 = dVar.c().getBundle("android.car.EXTENSIONS");
                bundle4 = bundle4 == null ? new Bundle() : bundle4;
                Bundle bundle5 = new Bundle();
                for (int i2 = 0; i2 < dVar.f845c.size(); i2++) {
                    bundle5.putBundle(Integer.toString(i2), j.a(dVar.f845c.get(i2)));
                }
                bundle4.putBundle("invisible_actions", bundle5);
                dVar.c().putBundle("android.car.EXTENSIONS", bundle4);
                this.f863f.putBundle("android.car.EXTENSIONS", bundle4);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f858a.setExtras(dVar.B).setRemoteInputHistory(dVar.q);
            RemoteViews remoteViews = dVar.F;
            if (remoteViews != null) {
                this.f858a.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = dVar.G;
            if (remoteViews2 != null) {
                this.f858a.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = dVar.H;
            if (remoteViews3 != null) {
                this.f858a.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f858a.setBadgeIconType(dVar.J).setShortcutId(dVar.K).setTimeoutAfter(dVar.L).setGroupAlertBehavior(dVar.M);
            if (dVar.z) {
                this.f858a.setColorized(dVar.y);
            }
            if (TextUtils.isEmpty(dVar.I)) {
                return;
            }
            this.f858a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
    }

    private void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    private void a(h.a aVar) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 20) {
            if (i2 >= 16) {
                this.f862e.add(j.a(this.f858a, aVar));
                return;
            }
            return;
        }
        Notification.Action.Builder builder = new Notification.Action.Builder(aVar.e(), aVar.i(), aVar.a());
        if (aVar.f() != null) {
            for (RemoteInput remoteInput : l.a(aVar.f())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = aVar.d() != null ? new Bundle(aVar.d()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(aVar.b());
        }
        bundle.putInt("android.support.action.semanticAction", aVar.g());
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(aVar.g());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", aVar.h());
        builder.addExtras(bundle);
        this.f858a.addAction(builder.build());
    }

    @Override // androidx.core.app.g
    public Notification.Builder a() {
        return this.f858a;
    }

    public Notification b() {
        Bundle bundleA;
        RemoteViews remoteViewsD;
        RemoteViews remoteViewsB;
        h.e eVar = this.f859b.o;
        if (eVar != null) {
            eVar.a(this);
        }
        RemoteViews remoteViewsC = eVar != null ? eVar.c(this) : null;
        Notification notificationC = c();
        if (remoteViewsC != null || (remoteViewsC = this.f859b.F) != null) {
            notificationC.contentView = remoteViewsC;
        }
        if (Build.VERSION.SDK_INT >= 16 && eVar != null && (remoteViewsB = eVar.b(this)) != null) {
            notificationC.bigContentView = remoteViewsB;
        }
        if (Build.VERSION.SDK_INT >= 21 && eVar != null && (remoteViewsD = this.f859b.o.d(this)) != null) {
            notificationC.headsUpContentView = remoteViewsD;
        }
        if (Build.VERSION.SDK_INT >= 16 && eVar != null && (bundleA = h.a(notificationC)) != null) {
            eVar.a(bundleA);
        }
        return notificationC;
    }

    protected Notification c() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return this.f858a.build();
        }
        if (i2 >= 24) {
            Notification notificationBuild = this.f858a.build();
            if (this.f864g != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 && this.f864g == 2) {
                    a(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 && this.f864g == 1) {
                    a(notificationBuild);
                }
            }
            return notificationBuild;
        }
        if (i2 >= 21) {
            this.f858a.setExtras(this.f863f);
            Notification notificationBuild2 = this.f858a.build();
            RemoteViews remoteViews = this.f860c;
            if (remoteViews != null) {
                notificationBuild2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f861d;
            if (remoteViews2 != null) {
                notificationBuild2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f865h;
            if (remoteViews3 != null) {
                notificationBuild2.headsUpContentView = remoteViews3;
            }
            if (this.f864g != 0) {
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 && this.f864g == 2) {
                    a(notificationBuild2);
                }
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 && this.f864g == 1) {
                    a(notificationBuild2);
                }
            }
            return notificationBuild2;
        }
        if (i2 >= 20) {
            this.f858a.setExtras(this.f863f);
            Notification notificationBuild3 = this.f858a.build();
            RemoteViews remoteViews4 = this.f860c;
            if (remoteViews4 != null) {
                notificationBuild3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f861d;
            if (remoteViews5 != null) {
                notificationBuild3.bigContentView = remoteViews5;
            }
            if (this.f864g != 0) {
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 && this.f864g == 2) {
                    a(notificationBuild3);
                }
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 && this.f864g == 1) {
                    a(notificationBuild3);
                }
            }
            return notificationBuild3;
        }
        if (i2 >= 19) {
            SparseArray<Bundle> sparseArrayA = j.a(this.f862e);
            if (sparseArrayA != null) {
                this.f863f.putSparseParcelableArray("android.support.actionExtras", sparseArrayA);
            }
            this.f858a.setExtras(this.f863f);
            Notification notificationBuild4 = this.f858a.build();
            RemoteViews remoteViews6 = this.f860c;
            if (remoteViews6 != null) {
                notificationBuild4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f861d;
            if (remoteViews7 != null) {
                notificationBuild4.bigContentView = remoteViews7;
            }
            return notificationBuild4;
        }
        if (i2 < 16) {
            return this.f858a.getNotification();
        }
        Notification notificationBuild5 = this.f858a.build();
        Bundle bundleA = h.a(notificationBuild5);
        Bundle bundle = new Bundle(this.f863f);
        for (String str : this.f863f.keySet()) {
            if (bundleA.containsKey(str)) {
                bundle.remove(str);
            }
        }
        bundleA.putAll(bundle);
        SparseArray<Bundle> sparseArrayA2 = j.a(this.f862e);
        if (sparseArrayA2 != null) {
            h.a(notificationBuild5).putSparseParcelableArray("android.support.actionExtras", sparseArrayA2);
        }
        RemoteViews remoteViews8 = this.f860c;
        if (remoteViews8 != null) {
            notificationBuild5.contentView = remoteViews8;
        }
        RemoteViews remoteViews9 = this.f861d;
        if (remoteViews9 != null) {
            notificationBuild5.bigContentView = remoteViews9;
        }
        return notificationBuild5;
    }
}
