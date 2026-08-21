package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.f;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements IBinder.DeathRecipient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f70a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    android.support.v4.media.session.a f71b;

    private class a extends Handler {
    }

    private static class b implements f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<c> f72a;

        b(c cVar) {
            this.f72a = new WeakReference<>(cVar);
        }

        @Override // android.support.v4.media.session.f.a
        public void a() {
            c cVar = this.f72a.get();
            if (cVar != null) {
                cVar.a();
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void a(int i2, int i3, int i4, int i5, int i6) {
            c cVar = this.f72a.get();
            if (cVar != null) {
                cVar.a(new e(i2, i3, i4, i5, i6));
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void a(Bundle bundle) {
            c cVar = this.f72a.get();
            if (cVar != null) {
                cVar.a(bundle);
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void a(CharSequence charSequence) {
            c cVar = this.f72a.get();
            if (cVar != null) {
                cVar.a(charSequence);
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void a(Object obj) {
            c cVar = this.f72a.get();
            if (cVar != null) {
                cVar.a(MediaMetadataCompat.a(obj));
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void a(String str, Bundle bundle) {
            c cVar = this.f72a.get();
            if (cVar != null) {
                if (cVar.f71b == null || Build.VERSION.SDK_INT >= 23) {
                    cVar.a(str, bundle);
                }
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void a(List<?> list) {
            c cVar = this.f72a.get();
            if (cVar != null) {
                cVar.a(MediaSessionCompat.QueueItem.a(list));
            }
        }

        @Override // android.support.v4.media.session.f.a
        public void b(Object obj) {
            c cVar = this.f72a.get();
            if (cVar == null || cVar.f71b != null) {
                return;
            }
            cVar.a(PlaybackStateCompat.a(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: android.support.v4.media.session.c$c, reason: collision with other inner class name */
    static class BinderC0007c extends a.AbstractBinderC0005a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference<c> f73b;

        BinderC0007c(c cVar) {
            this.f73b = new WeakReference<>(cVar);
        }

        public void a() {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(8, null, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void a(int i2) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(12, Integer.valueOf(i2), null);
            }
        }

        public void a(Bundle bundle) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(7, bundle, null);
            }
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(3, mediaMetadataCompat, null);
            }
        }

        public void a(ParcelableVolumeInfo parcelableVolumeInfo) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(4, parcelableVolumeInfo != null ? new e(parcelableVolumeInfo.f50b, parcelableVolumeInfo.f51c, parcelableVolumeInfo.f52d, parcelableVolumeInfo.f53e, parcelableVolumeInfo.f54f) : null, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void a(PlaybackStateCompat playbackStateCompat) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(2, playbackStateCompat, null);
            }
        }

        public void a(CharSequence charSequence) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(6, charSequence, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void a(String str, Bundle bundle) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(1, str, bundle);
            }
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(5, list, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void a(boolean z) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(11, Boolean.valueOf(z), null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void b() {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(13, null, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void b(boolean z) {
        }

        @Override // android.support.v4.media.session.a
        public void onRepeatModeChanged(int i2) {
            c cVar = this.f73b.get();
            if (cVar != null) {
                cVar.a(9, Integer.valueOf(i2), null);
            }
        }
    }

    public c() {
        if (Build.VERSION.SDK_INT >= 21) {
            f.a(new b(this));
        } else {
            this.f71b = new BinderC0007c(this);
        }
    }

    public void a() {
    }

    void a(int i2, Object obj, Bundle bundle) {
        a aVar = this.f70a;
        if (aVar != null) {
            Message messageObtainMessage = aVar.obtainMessage(i2, obj);
            messageObtainMessage.setData(bundle);
            messageObtainMessage.sendToTarget();
        }
    }

    public void a(Bundle bundle) {
    }

    public void a(MediaMetadataCompat mediaMetadataCompat) {
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
    }

    public void a(e eVar) {
    }

    public void a(CharSequence charSequence) {
    }

    public void a(String str, Bundle bundle) {
    }

    public void a(List<MediaSessionCompat.QueueItem> list) {
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        a(8, null, null);
    }
}
