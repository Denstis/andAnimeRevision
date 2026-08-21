package com.google.firebase.storage.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.storage.network.NetworkRequest;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ExponentialBackoffSender {
    private static final int MAXIMUM_WAIT_TIME_MILLI = 30000;
    private static final int NETWORK_STATUS_POLL_INTERVAL = 1000;
    public static final int RND_MAX = 250;
    private static final String TAG = "ExponenentialBackoff";
    private final InternalAuthProvider authProvider;
    private volatile boolean canceled;
    private final Context context;
    private long retryTime;
    private static final Random random = new Random();
    static Sleeper sleeper = new SleeperImpl();
    static Clock clock = DefaultClock.getInstance();

    public ExponentialBackoffSender(Context context, InternalAuthProvider internalAuthProvider, long j2) {
        this.context = context;
        this.authProvider = internalAuthProvider;
        this.retryTime = j2;
    }

    public void cancel() {
        this.canceled = true;
    }

    public boolean isRetryableError(int i2) {
        return (i2 >= 500 && i2 < 600) || i2 == -2 || i2 == 429 || i2 == 408;
    }

    public void reset() {
        this.canceled = false;
    }

    public void sendWithExponentialBackoff(NetworkRequest networkRequest) {
        sendWithExponentialBackoff(networkRequest, true);
    }

    public void sendWithExponentialBackoff(NetworkRequest networkRequest, boolean z) {
        Preconditions.checkNotNull(networkRequest);
        long jElapsedRealtime = clock.elapsedRealtime() + this.retryTime;
        String currentAuthToken = Util.getCurrentAuthToken(this.authProvider);
        if (z) {
            networkRequest.performRequest(currentAuthToken, this.context);
        } else {
            networkRequest.performRequestStart(currentAuthToken);
        }
        int i2 = NETWORK_STATUS_POLL_INTERVAL;
        while (clock.elapsedRealtime() + ((long) i2) <= jElapsedRealtime && !networkRequest.isResultSuccess() && isRetryableError(networkRequest.getResultCode())) {
            try {
                sleeper.sleep(random.nextInt(RND_MAX) + i2);
                if (i2 < MAXIMUM_WAIT_TIME_MILLI) {
                    if (networkRequest.getResultCode() != -2) {
                        i2 *= 2;
                        Log.w(TAG, "network error occurred, backing off/sleeping.");
                    } else {
                        Log.w(TAG, "network unavailable, sleeping.");
                        i2 = NETWORK_STATUS_POLL_INTERVAL;
                    }
                }
                if (this.canceled) {
                    return;
                }
                networkRequest.reset();
                String currentAuthToken2 = Util.getCurrentAuthToken(this.authProvider);
                if (z) {
                    networkRequest.performRequest(currentAuthToken2, this.context);
                } else {
                    networkRequest.performRequestStart(currentAuthToken2);
                }
            } catch (InterruptedException unused) {
                Log.w(TAG, "thread interrupted during exponential backoff.");
                Thread.currentThread().interrupt();
                return;
            }
        }
    }
}
