package expo.modules.video.player;

import androidx.media3.common.Player;
import com.facebook.react.uimanager.ViewProps;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.kotlin.AppContext;
import expo.modules.video.managers.VideoManager;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: VideoPlayerKeepAwake.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u00020\u0016H\u0002J$\u0010\u001b\u001a\u00020\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001eH\u0096\u0002¢\u0006\u0002\u0010\u001fJ'\u0010 \u001a\u00020\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0096\u0002R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lexpo/modules/video/player/VideoPlayerKeepAwake;", "Lkotlin/properties/ReadWriteProperty;", "", "", "player", "Lexpo/modules/video/player/VideoPlayer;", "appContext", "Lexpo/modules/kotlin/AppContext;", "enableOnInit", "<init>", "(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/kotlin/AppContext;Z)V", "getAppContext", "()Lexpo/modules/kotlin/AppContext;", "videoPlayer", "Ljava/lang/ref/WeakReference;", RNConstants.ARG_VALUE, ViewProps.ENABLED, "getEnabled", "()Z", "setEnabled", "(Z)V", "playerListener", "Landroidx/media3/common/Player$Listener;", "enable", "", "disable", "createPlayerListener", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Boolean;", "setValue", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoPlayerKeepAwake implements ReadWriteProperty<Object, Boolean> {
    private final AppContext appContext;
    private boolean enabled;
    private Player.Listener playerListener;
    private final WeakReference<VideoPlayer> videoPlayer;

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    public /* bridge */ /* synthetic */ Object getValue(Object obj, KProperty kProperty) {
        return getValue(obj, (KProperty<?>) kProperty);
    }

    @Override // kotlin.properties.ReadWriteProperty
    public /* bridge */ /* synthetic */ void setValue(Object obj, KProperty kProperty, Boolean bool) {
        setValue(obj, (KProperty<?>) kProperty, bool.booleanValue());
    }

    public VideoPlayerKeepAwake(VideoPlayer player, AppContext appContext, boolean z) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
        this.videoPlayer = new WeakReference<>(player);
        this.enabled = z;
        if (z) {
            enable();
        }
    }

    public /* synthetic */ VideoPlayerKeepAwake(VideoPlayer videoPlayer, AppContext appContext, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(videoPlayer, appContext, (i & 4) != 0 ? true : z);
    }

    public final AppContext getAppContext() {
        return this.appContext;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final void setEnabled(boolean z) {
        if (z) {
            enable();
        } else {
            disable();
        }
        this.enabled = z;
    }

    /* JADX INFO: renamed from: expo.modules.video.player.VideoPlayerKeepAwake$enable$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: VideoPlayerKeepAwake.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.player.VideoPlayerKeepAwake$enable$1", f = "VideoPlayerKeepAwake.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07301 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C07301(Continuation<? super C07301> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return VideoPlayerKeepAwake.this.new C07301(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07301) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                VideoPlayer videoPlayer = (VideoPlayer) VideoPlayerKeepAwake.this.videoPlayer.get();
                if (videoPlayer == null) {
                    return Unit.INSTANCE;
                }
                Player.Listener listenerCreatePlayerListener = VideoPlayerKeepAwake.this.createPlayerListener();
                VideoPlayerKeepAwake.this.playerListener = listenerCreatePlayerListener;
                videoPlayer.getPlayer().addListener(listenerCreatePlayerListener);
                VideoManager.INSTANCE.requestKeepAwake(videoPlayer);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void enable() {
        BuildersKt__Builders_commonKt.launch$default(this.appContext.getMainQueue(), null, null, new C07301(null), 3, null);
    }

    /* JADX INFO: renamed from: expo.modules.video.player.VideoPlayerKeepAwake$disable$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: VideoPlayerKeepAwake.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.player.VideoPlayerKeepAwake$disable$1", f = "VideoPlayerKeepAwake.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C07291(Continuation<? super C07291> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return VideoPlayerKeepAwake.this.new C07291(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Player.Listener listener;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                VideoPlayer videoPlayer = (VideoPlayer) VideoPlayerKeepAwake.this.videoPlayer.get();
                if (videoPlayer != null && (listener = VideoPlayerKeepAwake.this.playerListener) != null) {
                    videoPlayer.getPlayer().removeListener(listener);
                    VideoPlayerKeepAwake.this.playerListener = null;
                    VideoManager.INSTANCE.releaseKeepAwake(videoPlayer);
                    return Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void disable() {
        BuildersKt__Builders_commonKt.launch$default(this.appContext.getMainQueue(), null, null, new C07291(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Player.Listener createPlayerListener() {
        return new Player.Listener() { // from class: expo.modules.video.player.VideoPlayerKeepAwake.createPlayerListener.1
            @Override // androidx.media3.common.Player.Listener
            public void onIsPlayingChanged(boolean isPlaying) {
                VideoPlayer videoPlayer = (VideoPlayer) VideoPlayerKeepAwake.this.videoPlayer.get();
                if (videoPlayer == null) {
                    return;
                }
                if (isPlaying) {
                    VideoManager.INSTANCE.requestKeepAwake(videoPlayer);
                } else {
                    VideoManager.INSTANCE.releaseKeepAwake(videoPlayer);
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int playbackState) {
                VideoPlayer videoPlayer = (VideoPlayer) VideoPlayerKeepAwake.this.videoPlayer.get();
                if (videoPlayer == null) {
                    return;
                }
                if (playbackState != 1) {
                    if (playbackState == 2 || playbackState == 3) {
                        if (videoPlayer.getPlayer().getPlayWhenReady()) {
                            VideoManager.INSTANCE.requestKeepAwake(videoPlayer);
                            return;
                        }
                        return;
                    } else if (playbackState != 4) {
                        return;
                    }
                }
                VideoManager.INSTANCE.requestKeepAwake(videoPlayer);
            }
        };
    }

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    public Boolean getValue(Object thisRef, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return Boolean.valueOf(this.enabled);
    }

    public void setValue(Object thisRef, KProperty<?> property, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        setEnabled(value);
    }
}
