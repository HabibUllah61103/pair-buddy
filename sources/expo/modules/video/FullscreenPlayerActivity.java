package expo.modules.video;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.Rational;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.CaptioningManager;
import android.widget.ImageButton;
import androidx.media3.common.Player;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerView;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.video.listeners.VideoManagerListener;
import expo.modules.video.managers.VideoManager;
import expo.modules.video.player.VideoPlayer;
import expo.modules.video.records.ButtonOptions;
import expo.modules.video.records.FullscreenOptions;
import expo.modules.video.utils.FullscreenActivityOrientationHelper;
import expo.modules.video.utils.PictureInPictureUtilsKt;
import expo.modules.video.utils.SubtitleUtils;
import java.io.Serializable;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FullscreenPlayerActivity.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\b\u0010\u001e\u001a\u00020\u001aH\u0016J\b\u0010\u001f\u001a\u00020\u001aH\u0014J\b\u0010 \u001a\u00020\u001aH\u0014J\b\u0010!\u001a\u00020\u001aH\u0014J\b\u0010\"\u001a\u00020\u001aH\u0014J\b\u0010#\u001a\u00020\u001aH\u0014J\b\u0010$\u001a\u00020\u001aH\u0016J\b\u0010%\u001a\u00020\u001aH\u0002J\u001a\u0010&\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020\u00102\b\u0010(\u001a\u0004\u0018\u00010)H\u0016J\b\u0010*\u001a\u00020\u001aH\u0002J\b\u0010+\u001a\u00020\u001aH\u0002J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020)H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lexpo/modules/video/FullscreenPlayerActivity;", "Landroid/app/Activity;", "Lexpo/modules/video/listeners/VideoManagerListener;", "<init>", "()V", "mContentView", "Landroid/view/View;", "videoViewId", "", "videoPlayer", "Lexpo/modules/video/player/VideoPlayer;", "playerView", "Landroidx/media3/ui/PlayerView;", "videoView", "Lexpo/modules/video/VideoView;", "didFinish", "", "wasAutoPaused", "isStopped", "options", "Lexpo/modules/video/records/FullscreenOptions;", "orientationHelper", "Lexpo/modules/video/utils/FullscreenActivityOrientationHelper;", "captioningChangeListener", "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onPostCreate", "finish", "onResume", "onPause", "onStop", "onStart", "onDestroy", "onAppForegrounded", "setupFullscreenButton", "onPictureInPictureModeChanged", "isInPictureInPictureMode", "newConfig", "Landroid/content/res/Configuration;", "hideStatusBar", "setupCaptioningChangeListener", "onConfigurationChanged", "Companion", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FullscreenPlayerActivity extends Activity implements VideoManagerListener {
    public static final String INTENT_FULLSCREEN_OPTIONS_KEY = "fullscreen_options";
    private CaptioningManager.CaptioningChangeListener captioningChangeListener;
    private boolean didFinish;
    private boolean isStopped;
    private View mContentView;
    private FullscreenOptions options;
    private FullscreenActivityOrientationHelper orientationHelper;
    private PlayerView playerView;
    private VideoPlayer videoPlayer;
    private VideoView videoView;
    private String videoViewId;
    private boolean wasAutoPaused;

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onAppBackgrounded() {
        VideoManagerListener.DefaultImpls.onAppBackgrounded(this);
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onVideoViewRegistered(VideoView videoView, Collection<? extends VideoView> collection) {
        VideoManagerListener.DefaultImpls.onVideoViewRegistered(this, videoView, collection);
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onVideoViewUnregistered(VideoView videoView, Collection<? extends VideoView> collection) {
        VideoManagerListener.DefaultImpls.onVideoViewUnregistered(this, videoView, collection);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        FullscreenOptions fullscreenOptions;
        VideoView videoView;
        ExoPlayer player;
        super.onCreate(savedInstanceState);
        try {
            String stringExtra = getIntent().getStringExtra(VideoManager.INTENT_PLAYER_KEY);
            if (stringExtra == null) {
                throw new FullScreenVideoViewNotFoundException();
            }
            this.videoViewId = stringExtra;
            VideoView videoView2 = null;
            if (Build.VERSION.SDK_INT >= 33) {
                fullscreenOptions = (FullscreenOptions) getIntent().getSerializableExtra(INTENT_FULLSCREEN_OPTIONS_KEY, FullscreenOptions.class);
                if (fullscreenOptions == null) {
                    throw new FullScreenOptionsNotFoundException();
                }
            } else {
                Serializable serializableExtra = getIntent().getSerializableExtra(INTENT_FULLSCREEN_OPTIONS_KEY);
                fullscreenOptions = serializableExtra instanceof FullscreenOptions ? (FullscreenOptions) serializableExtra : null;
                if (fullscreenOptions == null) {
                    throw new FullScreenOptionsNotFoundException();
                }
            }
            this.options = fullscreenOptions;
            String str = this.videoViewId;
            if (str == null || (videoView = VideoManager.INSTANCE.getVideoView(str)) == null) {
                throw new FullScreenVideoViewNotFoundException();
            }
            this.videoView = videoView;
            FullscreenPlayerActivity fullscreenPlayerActivity = this;
            FullscreenOptions fullscreenOptions2 = this.options;
            if (fullscreenOptions2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("options");
                fullscreenOptions2 = null;
            }
            FullscreenActivityOrientationHelper fullscreenActivityOrientationHelper = new FullscreenActivityOrientationHelper(fullscreenPlayerActivity, fullscreenOptions2, new Function0() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FullscreenPlayerActivity.onCreate$lambda$1(this.f$0);
                }
            }, new Function0() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FullscreenPlayerActivity.onCreate$lambda$2(this.f$0);
                }
            });
            this.orientationHelper = fullscreenActivityOrientationHelper;
            fullscreenActivityOrientationHelper.startOrientationEventListener();
            setContentView(R.layout.fullscreen_player_activity);
            this.mContentView = findViewById(R.id.enclosing_layout);
            this.playerView = (PlayerView) findViewById(R.id.player_view);
            FullscreenOptions fullscreenOptions3 = this.options;
            if (fullscreenOptions3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("options");
                fullscreenOptions3 = null;
            }
            setRequestedOrientation(fullscreenOptions3.getOrientation().toActivityOrientation());
            VideoView videoView3 = this.videoView;
            if (videoView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoView");
                videoView3 = null;
            }
            VideoPlayer videoPlayer = videoView3.getVideoPlayer();
            this.videoPlayer = videoPlayer;
            if (videoPlayer != null && (player = videoPlayer.getPlayer()) != null) {
                ExoPlayer exoPlayer = player;
                VideoView videoView4 = this.videoView;
                if (videoView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoView");
                    videoView4 = null;
                }
                PlayerView playerView = videoView4.getPlayerView();
                PlayerView playerView2 = this.playerView;
                if (playerView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView2 = null;
                }
                PlayerView.switchTargetView(exoPlayer, playerView, playerView2);
                VideoPlayer videoPlayer2 = this.videoPlayer;
                if (videoPlayer2 != null) {
                    videoPlayer2.hasBeenDisconnectedFromVideoView();
                }
            }
            VideoManager.INSTANCE.registerFullscreenPlayerActivity(String.valueOf(hashCode()), this);
            VideoManager.INSTANCE.registerListener(this);
            PlayerView playerView3 = this.playerView;
            if (playerView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
                playerView3 = null;
            }
            Player player2 = playerView3.getPlayer();
            if (player2 != null) {
                VideoSize videoSize = player2.getVideoSize();
                Intrinsics.checkNotNullExpressionValue(videoSize, "getVideoSize(...)");
                PlayerView playerView4 = this.playerView;
                if (playerView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView4 = null;
                }
                int width = playerView4.getWidth();
                PlayerView playerView5 = this.playerView;
                if (playerView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView5 = null;
                }
                int height = playerView5.getHeight();
                VideoView videoView5 = this.videoView;
                if (videoView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoView");
                    videoView5 = null;
                }
                Rational rationalCalculatePiPAspectRatio = PictureInPictureUtilsKt.calculatePiPAspectRatio(videoSize, width, height, videoView5.getContentFit());
                FullscreenPlayerActivity fullscreenPlayerActivity2 = this;
                VideoView videoView6 = this.videoView;
                if (videoView6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoView");
                } else {
                    videoView2 = videoView6;
                }
                PictureInPictureUtilsKt.applyPiPParams(fullscreenPlayerActivity2, videoView2.getAutoEnterPiP(), rationalCalculatePiPAspectRatio);
            }
        } catch (CodedException e) {
            Log.e("ExpoVideo", String.valueOf(e.getMessage()), e);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$1(FullscreenPlayerActivity fullscreenPlayerActivity) {
        fullscreenPlayerActivity.finish();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$2(FullscreenPlayerActivity fullscreenPlayerActivity) {
        fullscreenPlayerActivity.setRequestedOrientation(-1);
        return Unit.INSTANCE;
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle savedInstanceState) {
        boolean currentTrackHasSubtitles;
        super.onPostCreate(savedInstanceState);
        hideStatusBar();
        setupFullscreenButton();
        VideoPlayer videoPlayer = this.videoPlayer;
        final boolean requiresLinearPlayback = videoPlayer != null ? videoPlayer.getRequiresLinearPlayback() : false;
        VideoView videoView = this.videoView;
        PlayerView playerView = null;
        if (videoView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
            videoView = null;
        }
        ButtonOptions buttonOptionsCopy$default = ButtonOptions.copy$default(videoView.getButtonOptions(), false, false, false, false, null, false, false, true, 127, null);
        PlayerView playerView2 = this.playerView;
        if (playerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView2 = null;
        }
        PlayerViewExtensionKt.applyButtonOptions(playerView2, buttonOptionsCopy$default, requiresLinearPlayback);
        PlayerView playerView3 = this.playerView;
        if (playerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView3 = null;
        }
        PlayerViewExtensionKt.setTimeBarInteractive(playerView3, requiresLinearPlayback);
        PlayerView playerView4 = this.playerView;
        if (playerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView4 = null;
        }
        playerView4.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                FullscreenPlayerActivity.onPostCreate$lambda$5(this.f$0, requiresLinearPlayback, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        PlayerView playerView5 = this.playerView;
        if (playerView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView5 = null;
        }
        VideoView videoView2 = this.videoView;
        if (videoView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
            videoView2 = null;
        }
        Boolean showSubtitles = videoView2.getButtonOptions().getShowSubtitles();
        if (showSubtitles != null) {
            currentTrackHasSubtitles = showSubtitles.booleanValue();
        } else {
            VideoView videoView3 = this.videoView;
            if (videoView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoView");
                videoView3 = null;
            }
            currentTrackHasSubtitles = videoView3.getCurrentTrackHasSubtitles();
        }
        playerView5.setShowSubtitleButton(currentTrackHasSubtitles);
        SubtitleUtils subtitleUtils = SubtitleUtils.INSTANCE;
        PlayerView playerView6 = this.playerView;
        if (playerView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView6 = null;
        }
        subtitleUtils.configureSubtitleView(playerView6, this);
        setupCaptioningChangeListener();
        PlayerView playerView7 = this.playerView;
        if (playerView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView = playerView7;
        }
        playerView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                FullscreenPlayerActivity.onPostCreate$lambda$6(this.f$0, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostCreate$lambda$5(FullscreenPlayerActivity fullscreenPlayerActivity, boolean z, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        PlayerView playerView = fullscreenPlayerActivity.playerView;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        PlayerViewExtensionKt.setTimeBarInteractive(playerView, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostCreate$lambda$6(FullscreenPlayerActivity fullscreenPlayerActivity, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        FullscreenPlayerActivity fullscreenPlayerActivity2 = fullscreenPlayerActivity;
        PlayerView playerView = fullscreenPlayerActivity.playerView;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        PictureInPictureUtilsKt.applyRectHint(fullscreenPlayerActivity2, PictureInPictureUtilsKt.calculateRectHint(playerView));
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        this.didFinish = true;
        String str = this.videoViewId;
        if (str != null) {
            VideoManager.INSTANCE.getVideoView(str).attachPlayer();
        }
        if (Build.VERSION.SDK_INT >= 34) {
            overrideActivityTransition(1, 0, 0);
        } else {
            overridePendingTransition(0, 0);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        FullscreenActivityOrientationHelper fullscreenActivityOrientationHelper = this.orientationHelper;
        if (fullscreenActivityOrientationHelper != null) {
            fullscreenActivityOrientationHelper.startOrientationEventListener();
        }
        PlayerView playerView = this.playerView;
        PlayerView playerView2 = null;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        playerView.setUseController(true);
        SubtitleUtils subtitleUtils = SubtitleUtils.INSTANCE;
        PlayerView playerView3 = this.playerView;
        if (playerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView2 = playerView3;
        }
        subtitleUtils.configureSubtitleView(playerView2, this);
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        ExoPlayer player;
        ExoPlayer player2;
        VideoPlayer videoPlayer = this.videoPlayer;
        if ((videoPlayer == null || !videoPlayer.getStaysActiveInBackground()) && !this.didFinish) {
            VideoPlayer videoPlayer2 = this.videoPlayer;
            boolean z = (videoPlayer2 == null || (player2 = videoPlayer2.getPlayer()) == null || !player2.isPlaying()) ? false : true;
            this.wasAutoPaused = z;
            if (z) {
                PlayerView playerView = this.playerView;
                if (playerView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView = null;
                }
                playerView.setUseController(false);
                VideoPlayer videoPlayer3 = this.videoPlayer;
                if (videoPlayer3 != null && (player = videoPlayer3.getPlayer()) != null) {
                    player.pause();
                }
            }
        }
        FullscreenActivityOrientationHelper fullscreenActivityOrientationHelper = this.orientationHelper;
        if (fullscreenActivityOrientationHelper != null) {
            fullscreenActivityOrientationHelper.stopOrientationEventListener();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.isStopped = true;
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onStart() {
        this.isStopped = false;
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        CaptioningManager.CaptioningChangeListener captioningChangeListener = this.captioningChangeListener;
        VideoView videoView = null;
        if (captioningChangeListener != null) {
            Object systemService = getSystemService("captioning");
            CaptioningManager captioningManager = systemService instanceof CaptioningManager ? (CaptioningManager) systemService : null;
            if (captioningManager != null) {
                captioningManager.removeCaptioningChangeListener(captioningChangeListener);
            }
            this.captioningChangeListener = null;
        }
        VideoView videoView2 = this.videoView;
        if (videoView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
        } else {
            videoView = videoView2;
        }
        videoView.exitFullscreen();
        VideoManager.INSTANCE.unregisterListener(this);
        VideoManager.INSTANCE.unregisterFullscreenPlayerActivity(String.valueOf(hashCode()));
        FullscreenActivityOrientationHelper fullscreenActivityOrientationHelper = this.orientationHelper;
        if (fullscreenActivityOrientationHelper != null) {
            fullscreenActivityOrientationHelper.stopOrientationEventListener();
        }
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onAppForegrounded() {
        if (this.isStopped || isInPictureInPictureMode()) {
            finish();
        }
    }

    private final void setupFullscreenButton() {
        PlayerView playerView = this.playerView;
        PlayerView playerView2 = null;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        playerView.setFullscreenButtonClickListener(new PlayerView.FullscreenButtonClickListener() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda2
            @Override // androidx.media3.ui.PlayerView.FullscreenButtonClickListener
            public final void onFullscreenButtonClick(boolean z) {
                this.f$0.finish();
            }
        });
        PlayerView playerView3 = this.playerView;
        if (playerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView2 = playerView3;
        }
        View viewFindViewById = playerView2.findViewById(androidx.media3.ui.R.id.exo_fullscreen);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        ((ImageButton) viewFindViewById).setImageResource(androidx.media3.ui.R.drawable.exo_icon_fullscreen_exit);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode, Configuration newConfig) {
        VideoPlayer videoPlayer;
        ExoPlayer player;
        PlayerView playerView = null;
        VideoView videoView = null;
        if (!isInPictureInPictureMode) {
            PlayerView playerView2 = this.playerView;
            if (playerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
                playerView2 = null;
            }
            VideoView videoView2 = this.videoView;
            if (videoView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoView");
            } else {
                videoView = videoView2;
            }
            playerView2.setUseController(videoView.getUseNativeControls());
        } else {
            PlayerView playerView3 = this.playerView;
            if (playerView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
            } else {
                playerView = playerView3;
            }
            playerView.setUseController(false);
        }
        if (this.wasAutoPaused && isInPictureInPictureMode && (videoPlayer = this.videoPlayer) != null && (player = videoPlayer.getPlayer()) != null) {
            player.play();
        }
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig);
    }

    private final void hideStatusBar() {
        View view = null;
        if (Build.VERSION.SDK_INT >= 30) {
            View view2 = this.mContentView;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContentView");
            } else {
                view = view2;
            }
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.setSystemBarsBehavior(2);
                windowInsetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                return;
            }
            return;
        }
        View view3 = this.mContentView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContentView");
        } else {
            view = view3;
        }
        view.setSystemUiVisibility(4871);
    }

    private final void setupCaptioningChangeListener() {
        Object systemService = getSystemService("captioning");
        PlayerView playerView = null;
        CaptioningManager captioningManager = systemService instanceof CaptioningManager ? (CaptioningManager) systemService : null;
        SubtitleUtils subtitleUtils = SubtitleUtils.INSTANCE;
        PlayerView playerView2 = this.playerView;
        if (playerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView = playerView2;
        }
        CaptioningManager.CaptioningChangeListener captioningChangeListenerCreateCaptioningChangeListener = subtitleUtils.createCaptioningChangeListener(playerView, this);
        this.captioningChangeListener = captioningChangeListenerCreateCaptioningChangeListener;
        if (captioningChangeListenerCreateCaptioningChangeListener == null || captioningManager == null) {
            return;
        }
        captioningManager.addCaptioningChangeListener(captioningChangeListenerCreateCaptioningChangeListener);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        FullscreenActivityOrientationHelper fullscreenActivityOrientationHelper = this.orientationHelper;
        if (fullscreenActivityOrientationHelper != null) {
            fullscreenActivityOrientationHelper.onConfigurationChanged(newConfig);
        }
    }
}
