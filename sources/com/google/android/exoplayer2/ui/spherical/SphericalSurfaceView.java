package com.google.android.exoplayer2.ui.spherical;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.ui.spherical.TouchTracker;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(15)
public final class SphericalSurfaceView extends GLSurfaceView {
    private static final int FIELD_OF_VIEW_DEGREES = 90;
    private static final float PX_PER_DEGREES = 25.0f;
    static final float UPRIGHT_ROLL = 3.1415927f;
    private static final float Z_FAR = 100.0f;
    private static final float Z_NEAR = 0.1f;
    private final Handler mainHandler;
    private final Sensor orientationSensor;
    private final PhoneOrientationListener phoneOrientationListener;
    private final Renderer renderer;
    private final SceneRenderer scene;
    private final SensorManager sensorManager;
    private Surface surface;
    private SurfaceListener surfaceListener;
    private SurfaceTexture surfaceTexture;
    private final TouchTracker touchTracker;
    private Player.VideoComponent videoComponent;

    private static class PhoneOrientationListener implements SensorEventListener {
        private final Display display;
        private final Renderer renderer;
        private final TouchTracker touchTracker;
        private final float[] phoneInWorldSpaceMatrix = new float[16];
        private final float[] remappedPhoneMatrix = new float[16];
        private final float[] angles = new float[3];

        public PhoneOrientationListener(Display display, TouchTracker touchTracker, Renderer renderer) {
            this.display = display;
            this.touchTracker = touchTracker;
            this.renderer = renderer;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            SensorManager.getRotationMatrixFromVector(this.remappedPhoneMatrix, sensorEvent.values);
            int rotation = this.display.getRotation();
            int i2 = TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
            int i3 = TsExtractor.TS_STREAM_TYPE_AC3;
            if (rotation == 1) {
                i2 = 2;
            } else if (rotation == 2) {
                i2 = TsExtractor.TS_STREAM_TYPE_AC3;
                i3 = TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
            } else if (rotation != 3) {
                i2 = 1;
                i3 = 2;
            } else {
                i3 = 1;
            }
            SensorManager.remapCoordinateSystem(this.remappedPhoneMatrix, i2, i3, this.phoneInWorldSpaceMatrix);
            SensorManager.remapCoordinateSystem(this.phoneInWorldSpaceMatrix, 1, 131, this.remappedPhoneMatrix);
            SensorManager.getOrientation(this.remappedPhoneMatrix, this.angles);
            float f2 = this.angles[2];
            this.touchTracker.setRoll(f2);
            Matrix.rotateM(this.phoneInWorldSpaceMatrix, 0, 90.0f, 1.0f, 0.0f, 0.0f);
            this.renderer.setDeviceOrientation(this.phoneInWorldSpaceMatrix, f2);
        }
    }

    class Renderer implements GLSurfaceView.Renderer, TouchTracker.Listener {
        private float deviceRoll;
        private final SceneRenderer scene;
        private float touchPitch;
        private final float[] projectionMatrix = new float[16];
        private final float[] viewProjectionMatrix = new float[16];
        private final float[] deviceOrientationMatrix = new float[16];
        private final float[] touchPitchMatrix = new float[16];
        private final float[] touchYawMatrix = new float[16];
        private final float[] viewMatrix = new float[16];
        private final float[] tempMatrix = new float[16];

        public Renderer(SceneRenderer sceneRenderer) {
            this.scene = sceneRenderer;
            Matrix.setIdentityM(this.deviceOrientationMatrix, 0);
            Matrix.setIdentityM(this.touchPitchMatrix, 0);
            Matrix.setIdentityM(this.touchYawMatrix, 0);
            this.deviceRoll = SphericalSurfaceView.UPRIGHT_ROLL;
        }

        private float calculateFieldOfViewInYDirection(float f2) {
            if (!(f2 > 1.0f)) {
                return 90.0f;
            }
            double dTan = Math.tan(Math.toRadians(45.0d));
            double d2 = f2;
            Double.isNaN(d2);
            return (float) (Math.toDegrees(Math.atan(dTan / d2)) * 2.0d);
        }

        private void updatePitchMatrix() {
            Matrix.setRotateM(this.touchPitchMatrix, 0, -this.touchPitch, (float) Math.cos(this.deviceRoll), (float) Math.sin(this.deviceRoll), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.tempMatrix, 0, this.deviceOrientationMatrix, 0, this.touchYawMatrix, 0);
                Matrix.multiplyMM(this.viewMatrix, 0, this.touchPitchMatrix, 0, this.tempMatrix, 0);
            }
            Matrix.multiplyMM(this.viewProjectionMatrix, 0, this.projectionMatrix, 0, this.viewMatrix, 0);
            this.scene.drawFrame(this.viewProjectionMatrix, 0);
        }

        @Override // com.google.android.exoplayer2.ui.spherical.TouchTracker.Listener
        public synchronized void onScrollChange(PointF pointF) {
            this.touchPitch = pointF.y;
            updatePitchMatrix();
            Matrix.setRotateM(this.touchYawMatrix, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            GLES20.glViewport(0, 0, i2, i3);
            float f2 = i2 / i3;
            Matrix.perspectiveM(this.projectionMatrix, 0, calculateFieldOfViewInYDirection(f2), f2, 0.1f, SphericalSurfaceView.Z_FAR);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalSurfaceView.this.onSurfaceTextureAvailable(this.scene.init());
        }

        public synchronized void setDeviceOrientation(float[] fArr, float f2) {
            System.arraycopy(fArr, 0, this.deviceOrientationMatrix, 0, this.deviceOrientationMatrix.length);
            this.deviceRoll = -f2;
            updatePitchMatrix();
        }
    }

    public interface SurfaceListener {
        void surfaceChanged(Surface surface);
    }

    public SphericalSurfaceView(Context context) {
        this(context, null);
    }

    public SphericalSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.sensorManager = (SensorManager) Assertions.checkNotNull(context.getSystemService("sensor"));
        Sensor defaultSensor = Util.SDK_INT >= 18 ? this.sensorManager.getDefaultSensor(15) : null;
        this.orientationSensor = defaultSensor == null ? this.sensorManager.getDefaultSensor(11) : defaultSensor;
        this.scene = new SceneRenderer();
        this.renderer = new Renderer(this.scene);
        this.touchTracker = new TouchTracker(context, this.renderer, PX_PER_DEGREES);
        this.phoneOrientationListener = new PhoneOrientationListener(((WindowManager) Assertions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), this.touchTracker, this.renderer);
        setEGLContextClientVersion(2);
        setRenderer(this.renderer);
        setOnTouchListener(this.touchTracker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSurfaceTextureAvailable(final SurfaceTexture surfaceTexture) {
        this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f4045b.a(surfaceTexture);
            }
        });
    }

    private static void releaseSurface(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    public /* synthetic */ void a() {
        if (this.surface != null) {
            SurfaceListener surfaceListener = this.surfaceListener;
            if (surfaceListener != null) {
                surfaceListener.surfaceChanged(null);
            }
            releaseSurface(this.surfaceTexture, this.surface);
            this.surfaceTexture = null;
            this.surface = null;
        }
    }

    public /* synthetic */ void a(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.surfaceTexture;
        Surface surface = this.surface;
        this.surfaceTexture = surfaceTexture;
        this.surface = new Surface(surfaceTexture);
        SurfaceListener surfaceListener = this.surfaceListener;
        if (surfaceListener != null) {
            surfaceListener.surfaceChanged(this.surface);
        }
        releaseSurface(surfaceTexture2, surface);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f4047b.a();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        if (this.orientationSensor != null) {
            this.sensorManager.unregisterListener(this.phoneOrientationListener);
        }
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        Sensor sensor = this.orientationSensor;
        if (sensor != null) {
            this.sensorManager.registerListener(this.phoneOrientationListener, sensor, 0);
        }
    }

    public void setDefaultStereoMode(int i2) {
        this.scene.setDefaultStereoMode(i2);
    }

    public void setSingleTapListener(SingleTapListener singleTapListener) {
        this.touchTracker.setSingleTapListener(singleTapListener);
    }

    public void setSurfaceListener(SurfaceListener surfaceListener) {
        this.surfaceListener = surfaceListener;
    }

    public void setVideoComponent(Player.VideoComponent videoComponent) {
        Player.VideoComponent videoComponent2 = this.videoComponent;
        if (videoComponent == videoComponent2) {
            return;
        }
        if (videoComponent2 != null) {
            Surface surface = this.surface;
            if (surface != null) {
                videoComponent2.clearVideoSurface(surface);
            }
            this.videoComponent.clearVideoFrameMetadataListener(this.scene);
            this.videoComponent.clearCameraMotionListener(this.scene);
        }
        this.videoComponent = videoComponent;
        Player.VideoComponent videoComponent3 = this.videoComponent;
        if (videoComponent3 != null) {
            videoComponent3.setVideoFrameMetadataListener(this.scene);
            this.videoComponent.setCameraMotionListener(this.scene);
            this.videoComponent.setVideoSurface(this.surface);
        }
    }
}
