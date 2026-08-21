package com.google.firebase.storage.network;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.StorageException;
import com.google.firebase.storage.network.connection.HttpURLConnectionFactory;
import com.google.firebase.storage.network.connection.HttpURLConnectionFactoryImpl;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class NetworkRequest {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String APPLICATION_JSON = "application/json";
    private static final String CONTENT_LENGTH = "Content-Length";
    private static final String CONTENT_TYPE = "Content-Type";
    static final String DELETE = "DELETE";
    static final String GET = "GET";
    public static final int INITIALIZATION_EXCEPTION = -1;
    private static final int MAXIMUM_TOKEN_WAIT_TIME_MS = 30000;
    public static final int NETWORK_UNAVAILABLE = -2;
    static final String PATCH = "PATCH";
    static final String POST = "POST";
    static final String PUT = "PUT";
    private static final String TAG = "NetworkRequest";
    private static final String UTF_8 = "UTF-8";
    private static final String X_FIREBASE_GMPID = "x-firebase-gmpid";
    private static String gmsCoreVersion;
    private HttpURLConnection connection;
    private Context context;
    protected Exception mException;
    protected final Uri mGsUri;
    private String rawStringResponse;
    private Map<String, String> requestHeaders = new HashMap();
    private int resultCode;
    private Map<String, List<String>> resultHeaders;
    private InputStream resultInputStream;
    private int resultingContentLength;
    static Uri sNetworkRequestUrl = Uri.parse("https://firebasestorage.googleapis.com/v0");
    static HttpURLConnectionFactory connectionFactory = new HttpURLConnectionFactoryImpl();

    public NetworkRequest(Uri uri, FirebaseApp firebaseApp) {
        Preconditions.checkNotNull(uri);
        Preconditions.checkNotNull(firebaseApp);
        this.mGsUri = uri;
        this.context = firebaseApp.getApplicationContext();
        setCustomHeader(X_FIREBASE_GMPID, firebaseApp.getOptions().getApplicationId());
    }

    private void constructMessage(HttpURLConnection httpURLConnection, String str) throws UnsupportedEncodingException {
        byte[] outputRaw;
        int outputRawSize;
        String string;
        Preconditions.checkNotNull(httpURLConnection);
        if (TextUtils.isEmpty(str)) {
            Log.w(TAG, "no auth token for request");
        } else {
            httpURLConnection.setRequestProperty("Authorization", "Firebase " + str);
        }
        StringBuilder sb = new StringBuilder("Android/");
        String gmsCoreVersion2 = getGmsCoreVersion(this.context);
        if (!TextUtils.isEmpty(gmsCoreVersion2)) {
            sb.append(gmsCoreVersion2);
        }
        httpURLConnection.setRequestProperty("X-Firebase-Storage-Version", sb.toString());
        for (Map.Entry<String, String> entry : this.requestHeaders.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        JSONObject outputJSON = getOutputJSON();
        if (outputJSON != null) {
            outputRaw = outputJSON.toString().getBytes("UTF-8");
            outputRawSize = outputRaw.length;
        } else {
            outputRaw = getOutputRaw();
            outputRawSize = getOutputRawSize();
            if (outputRawSize == 0 && outputRaw != null) {
                outputRawSize = outputRaw.length;
            }
        }
        if (outputRaw == null || outputRaw.length <= 0) {
            string = "0";
        } else {
            if (outputJSON != null) {
                httpURLConnection.setRequestProperty(CONTENT_TYPE, APPLICATION_JSON);
            }
            httpURLConnection.setDoOutput(true);
            string = Integer.toString(outputRawSize);
        }
        httpURLConnection.setRequestProperty(CONTENT_LENGTH, string);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if (outputRaw == null || outputRaw.length <= 0) {
            return;
        }
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream == null) {
            Log.e(TAG, "Unable to write to the http request!");
            return;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        try {
            bufferedOutputStream.write(outputRaw, 0, outputRawSize);
        } finally {
            bufferedOutputStream.close();
        }
    }

    private HttpURLConnection createConnection() {
        Uri url = getURL();
        Map<String, String> queryParameters = getQueryParameters();
        if (queryParameters != null) {
            Uri.Builder builderBuildUpon = url.buildUpon();
            for (Map.Entry<String, String> entry : queryParameters.entrySet()) {
                builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
            }
            url = builderBuildUpon.build();
        }
        return connectionFactory.createInstance(new URL(url.toString()));
    }

    private boolean ensureNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        this.mException = new SocketException("Network subsystem is unavailable");
        this.resultCode = -2;
        return false;
    }

    public static String getAuthority() {
        return sNetworkRequestUrl.getAuthority();
    }

    public static Uri getDefaultURL(Uri uri) {
        Preconditions.checkNotNull(uri);
        String pathWithoutBucket = getPathWithoutBucket(uri);
        Uri.Builder builderBuildUpon = sNetworkRequestUrl.buildUpon();
        builderBuildUpon.appendPath("b");
        builderBuildUpon.appendPath(uri.getAuthority());
        builderBuildUpon.appendPath("o");
        builderBuildUpon.appendPath(pathWithoutBucket);
        return builderBuildUpon.build();
    }

    private static String getGmsCoreVersion(Context context) {
        if (gmsCoreVersion == null) {
            try {
                gmsCoreVersion = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionName;
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e(TAG, "Unable to find gmscore in package manager", e2);
            }
            if (gmsCoreVersion == null) {
                gmsCoreVersion = "[No Gmscore]";
            }
        }
        return gmsCoreVersion;
    }

    private static String getPathWithoutBucket(Uri uri) {
        String path = uri.getPath();
        return path == null ? "" : path.startsWith("/") ? path.substring(1) : path;
    }

    private void parseResponse(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (inputStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                } finally {
                    bufferedReader.close();
                }
            }
        }
        this.rawStringResponse = sb.toString();
        if (isResultSuccess()) {
            return;
        }
        this.mException = new IOException(this.rawStringResponse);
    }

    private void parseResponse(HttpURLConnection httpURLConnection) {
        Preconditions.checkNotNull(httpURLConnection);
        this.resultCode = httpURLConnection.getResponseCode();
        this.resultHeaders = httpURLConnection.getHeaderFields();
        this.resultingContentLength = httpURLConnection.getContentLength();
        this.resultInputStream = isResultSuccess() ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
    }

    private final void performRequest(String str) {
        performRequestStart(str);
        try {
            processResponseStream();
        } catch (IOException e2) {
            Log.w(TAG, "error sending network request " + getAction() + " " + getURL(), e2);
            this.mException = e2;
            this.resultCode = -2;
        }
        performRequestEnd();
    }

    private void processResponseStream() throws IOException {
        if (isResultSuccess()) {
            parseSuccessulResponse(this.resultInputStream);
        } else {
            parseErrorResponse(this.resultInputStream);
        }
    }

    public <TResult> void completeTask(TaskCompletionSource<TResult> taskCompletionSource, TResult tresult) {
        Exception exception = getException();
        if (isResultSuccess() && exception == null) {
            taskCompletionSource.setResult(tresult);
        } else {
            taskCompletionSource.setException(StorageException.fromExceptionAndHttpCode(exception, getResultCode()));
        }
    }

    protected abstract String getAction();

    public Exception getException() {
        return this.mException;
    }

    protected JSONObject getOutputJSON() {
        return null;
    }

    protected byte[] getOutputRaw() {
        return null;
    }

    protected int getOutputRawSize() {
        return 0;
    }

    String getPathWithoutBucket() {
        return getPathWithoutBucket(this.mGsUri);
    }

    protected Map<String, String> getQueryParameters() {
        return null;
    }

    public String getRawResult() {
        return this.rawStringResponse;
    }

    public JSONObject getResultBody() {
        if (TextUtils.isEmpty(this.rawStringResponse)) {
            return new JSONObject();
        }
        try {
            return new JSONObject(this.rawStringResponse);
        } catch (JSONException e2) {
            Log.e(TAG, "error parsing result into JSON:" + this.rawStringResponse, e2);
            return new JSONObject();
        }
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public Map<String, String> getResultHeaders() {
        return this.requestHeaders;
    }

    public Map<String, List<String>> getResultHeadersImpl() {
        return this.resultHeaders;
    }

    public String getResultString(String str) {
        List<String> list;
        Map<String, List<String>> resultHeadersImpl = getResultHeadersImpl();
        if (resultHeadersImpl == null || (list = resultHeadersImpl.get(str)) == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public int getResultingContentLength() {
        return this.resultingContentLength;
    }

    public InputStream getStream() {
        return this.resultInputStream;
    }

    protected Uri getURL() {
        return getDefaultURL(this.mGsUri);
    }

    public boolean isResultSuccess() {
        int i2 = this.resultCode;
        return i2 >= 200 && i2 < 300;
    }

    protected void parseErrorResponse(InputStream inputStream) throws IOException {
        parseResponse(inputStream);
    }

    protected void parseSuccessulResponse(InputStream inputStream) throws IOException {
        parseResponse(inputStream);
    }

    public void performRequest(String str, Context context) {
        if (ensureNetworkAvailable(context)) {
            performRequest(str);
        }
    }

    public void performRequestEnd() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public void performRequestStart(String str) {
        if (this.mException != null) {
            this.resultCode = -1;
            return;
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "sending network request " + getAction() + " " + getURL());
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            this.resultCode = -2;
            this.mException = new SocketException("Network subsystem is unavailable");
            return;
        }
        try {
            this.connection = createConnection();
            this.connection.setRequestMethod(getAction());
            constructMessage(this.connection, str);
            parseResponse(this.connection);
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "network request result " + this.resultCode);
            }
        } catch (IOException e2) {
            Log.w(TAG, "error sending network request " + getAction() + " " + getURL(), e2);
            this.mException = e2;
            this.resultCode = -2;
        }
    }

    public final void reset() {
        this.mException = null;
        this.resultCode = 0;
    }

    public void setCustomHeader(String str, String str2) {
        this.requestHeaders.put(str, str2);
    }
}
