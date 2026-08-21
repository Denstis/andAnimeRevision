package animebestapp.com.external;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import androidx.core.app.h;
import animebestapp.com.R;
import animebestapp.com.ui.nav.NavActivity;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import g.j;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public final class MessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        f.b(remoteMessage, "remoteMessage");
        super.onMessageReceived(remoteMessage);
        h.d dVar = new h.d(this);
        dVar.f(R.mipmap.ic_launcher);
        RemoteMessage.Notification notification = remoteMessage.getNotification();
        dVar.b(notification != null ? notification.getTitle() : null);
        RemoteMessage.Notification notification2 = remoteMessage.getNotification();
        dVar.a((CharSequence) (notification2 != null ? notification2.getBody() : null));
        dVar.a(true);
        dVar.a(PendingIntent.getActivity(getBaseContext(), 200, new Intent(getBaseContext(), (Class<?>) NavActivity.class), 134217728));
        Object systemService = getSystemService("notification");
        if (systemService == null) {
            throw new j("null cannot be cast to non-null type android.app.NotificationManager");
        }
        ((NotificationManager) systemService).notify(1, dVar.a());
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        f.b(str, "token");
        super.onNewToken(str);
    }
}
