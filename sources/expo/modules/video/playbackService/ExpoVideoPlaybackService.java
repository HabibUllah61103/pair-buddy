package expo.modules.video.playbackService;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.session.CommandButton;
import androidx.media3.session.MediaSession;
import androidx.media3.session.MediaSessionService;
import androidx.media3.session.MediaStyleNotificationHelper;
import androidx.media3.session.SessionCommand;
import com.google.common.collect.ImmutableList;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.core.logging.Logger;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.notifications.service.NotificationsService;
import expo.modules.video.R;
import expo.modules.video.VideoExceptionsKt;
import expo.modules.video.player.VideoPlayer;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 82\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u000fJ\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000fJ\u0012\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0018\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\u0015H\u0016J\u0012\u0010+\u001a\u00020\u001d2\b\u0010)\u001a\u0004\u0018\u00010\u0010H\u0003J\n\u0010,\u001a\u0004\u0018\u00010\u0010H\u0003J\u0012\u0010-\u001a\u00020\u001d2\b\u0010.\u001a\u0004\u0018\u00010'H\u0016J\u0012\u0010/\u001a\u0004\u0018\u00010\u00102\u0006\u00100\u001a\u000201H\u0016J\b\u00102\u001a\u00020\u001dH\u0016J\u001a\u00103\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u00102\b\b\u0002\u0010*\u001a\u00020\u0015H\u0003J\b\u00104\u001a\u00020\u001dH\u0002J\u0010\u00105\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000fH\u0003J\b\u00106\u001a\u00020\u001dH\u0003J\f\u00107\u001a\u00020\u0015*\u00020\u0010H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;", "Landroidx/media3/session/MediaSessionService;", "<init>", "()V", "weakContext", "Ljava/lang/ref/WeakReference;", "Lexpo/modules/kotlin/AppContext;", RNConstants.ARG_VALUE, "appContext", "getAppContext", "()Lexpo/modules/kotlin/AppContext;", "setAppContext", "(Lexpo/modules/kotlin/AppContext;)V", "mediaSessions", "", "Landroidx/media3/exoplayer/ExoPlayer;", "Landroidx/media3/session/MediaSession;", "binder", "Lexpo/modules/video/playbackService/PlaybackServiceBinder;", "mostRecentInteractionSession", "isForeground", "", "commandSeekForward", "Landroidx/media3/session/SessionCommand;", "commandSeekBackward", "seekForwardButton", "Landroidx/media3/session/CommandButton;", "seekBackwardButton", "setShowNotification", "", ExpoVideoPlaybackService.SESSION_SHOW_NOTIFICATION, "player", "registerPlayer", "videoPlayer", "Lexpo/modules/video/player/VideoPlayer;", "unregisterPlayer", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onUpdateNotification", "session", "startInForegroundRequired", "setMostRecentInteractionSession", "findMostRecentInteractionSession", "onTaskRemoved", "rootIntent", "onGetSession", "controllerInfo", "Landroidx/media3/session/MediaSession$ControllerInfo;", "onDestroy", "createNotification", "cleanup", "hidePlayerNotification", "hideAllNotifications", "wantsToShowNotification", "Companion", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExpoVideoPlaybackService extends MediaSessionService {
    public static final String CHANNEL_ID = "PlaybackService";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String SEEK_BACKWARD_COMMAND = "SEEK_REWIND";
    public static final String SEEK_FORWARD_COMMAND = "SEEK_FORWARD";
    public static final long SEEK_INTERVAL_MS = 10000;
    public static final String SESSION_SHOW_NOTIFICATION = "showNotification";
    private final SessionCommand commandSeekBackward;
    private final SessionCommand commandSeekForward;
    private boolean isForeground;
    private MediaSession mostRecentInteractionSession;
    private final CommandButton seekBackwardButton;
    private final CommandButton seekForwardButton;
    private WeakReference<AppContext> weakContext;
    private final Map<ExoPlayer, MediaSession> mediaSessions = new LinkedHashMap();
    private final PlaybackServiceBinder binder = new PlaybackServiceBinder(this);

    @Override // androidx.media3.session.MediaSessionService
    public MediaSession onGetSession(MediaSession.ControllerInfo controllerInfo) {
        Intrinsics.checkNotNullParameter(controllerInfo, "controllerInfo");
        return null;
    }

    public ExpoVideoPlaybackService() {
        SessionCommand sessionCommand = new SessionCommand(SEEK_FORWARD_COMMAND, Bundle.EMPTY);
        this.commandSeekForward = sessionCommand;
        SessionCommand sessionCommand2 = new SessionCommand(SEEK_BACKWARD_COMMAND, Bundle.EMPTY);
        this.commandSeekBackward = sessionCommand2;
        CommandButton commandButtonBuild = new CommandButton.Builder().setDisplayName("rewind").setSessionCommand(sessionCommand).setIconResId(R.drawable.seek_forwards_10s).build();
        Intrinsics.checkNotNullExpressionValue(commandButtonBuild, "build(...)");
        this.seekForwardButton = commandButtonBuild;
        CommandButton commandButtonBuild2 = new CommandButton.Builder().setDisplayName("forward").setSessionCommand(sessionCommand2).setIconResId(R.drawable.seek_backwards_10s).build();
        Intrinsics.checkNotNullExpressionValue(commandButtonBuild2, "build(...)");
        this.seekBackwardButton = commandButtonBuild2;
    }

    public final AppContext getAppContext() throws Exceptions.AppContextLost {
        WeakReference<AppContext> weakReference = this.weakContext;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("weakContext");
            weakReference = null;
        }
        AppContext appContext = weakReference.get();
        if (appContext != null) {
            return appContext;
        }
        throw new Exceptions.AppContextLost();
    }

    public final void setAppContext(AppContext value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.weakContext = new WeakReference<>(value);
    }

    /* JADX INFO: renamed from: expo.modules.video.playbackService.ExpoVideoPlaybackService$setShowNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$setShowNotification$1", f = "ExpoVideoPlaybackService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ExoPlayer $player;
        final /* synthetic */ boolean $showNotification;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07261(ExoPlayer exoPlayer, boolean z, Continuation<? super C07261> continuation) {
            super(2, continuation);
            this.$player = exoPlayer;
            this.$showNotification = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ExpoVideoPlaybackService.this.new C07261(this.$player, this.$showNotification, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Bundle bundle;
            Bundle sessionExtras;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MediaSession mediaSession = (MediaSession) ExpoVideoPlaybackService.this.mediaSessions.get(this.$player);
                if (mediaSession == null || (sessionExtras = mediaSession.getSessionExtras()) == null || (bundle = sessionExtras.deepCopy()) == null) {
                    bundle = new Bundle();
                }
                bundle.putBoolean(ExpoVideoPlaybackService.SESSION_SHOW_NOTIFICATION, this.$showNotification);
                MediaSession mediaSession2 = (MediaSession) ExpoVideoPlaybackService.this.mediaSessions.get(this.$player);
                if (mediaSession2 != null) {
                    ExpoVideoPlaybackService expoVideoPlaybackService = ExpoVideoPlaybackService.this;
                    boolean z = this.$showNotification;
                    ExoPlayer exoPlayer = this.$player;
                    mediaSession2.setSessionExtras(bundle);
                    expoVideoPlaybackService.onUpdateNotification(mediaSession2, z && exoPlayer.getPlayWhenReady());
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void setShowNotification(boolean showNotification, ExoPlayer player) {
        Intrinsics.checkNotNullParameter(player, "player");
        BuildersKt__Builders_commonKt.launch$default(getAppContext().getMainQueue(), null, null, new C07261(player, showNotification, null), 3, null);
    }

    /* JADX INFO: renamed from: expo.modules.video.playbackService.ExpoVideoPlaybackService$registerPlayer$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$registerPlayer$1", f = "ExpoVideoPlaybackService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ VideoPlayer $videoPlayer;
        int label;
        final /* synthetic */ ExpoVideoPlaybackService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07251(VideoPlayer videoPlayer, ExpoVideoPlaybackService expoVideoPlaybackService, Continuation<? super C07251> continuation) {
            super(2, continuation);
            this.$videoPlayer = videoPlayer;
            this.this$0 = expoVideoPlaybackService;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07251(this.$videoPlayer, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ExoPlayer player = this.$videoPlayer.getPlayer();
            if (this.this$0.mediaSessions.get(player) != null) {
                return Unit.INSTANCE;
            }
            MediaSession mediaSessionBuild = new MediaSession.Builder(this.this$0, player).setId("ExpoVideoPlaybackService_" + player.hashCode()).setCallback((MediaSession.Callback) new VideoMediaSessionCallback()).setCustomLayout((List<CommandButton>) ImmutableList.of(this.this$0.seekBackwardButton, this.this$0.seekForwardButton)).build();
            Intrinsics.checkNotNullExpressionValue(mediaSessionBuild, "build(...)");
            this.$videoPlayer.getMediaSession().release();
            this.$videoPlayer.setMediaSession(mediaSessionBuild);
            this.this$0.mediaSessions.put(player, mediaSessionBuild);
            this.this$0.addSession(mediaSessionBuild);
            this.this$0.setShowNotification(this.$videoPlayer.getShowNowPlayingNotification(), player);
            return Unit.INSTANCE;
        }
    }

    public final void registerPlayer(VideoPlayer videoPlayer) {
        Intrinsics.checkNotNullParameter(videoPlayer, "videoPlayer");
        BuildersKt__Builders_commonKt.launch$default(getAppContext().getMainQueue(), null, null, new C07251(videoPlayer, this, null), 3, null);
    }

    /* JADX INFO: renamed from: expo.modules.video.playbackService.ExpoVideoPlaybackService$unregisterPlayer$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$unregisterPlayer$1", f = "ExpoVideoPlaybackService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ExoPlayer $player;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07271(ExoPlayer exoPlayer, Continuation<? super C07271> continuation) {
            super(2, continuation);
            this.$player = exoPlayer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ExpoVideoPlaybackService.this.new C07271(this.$player, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                ExpoVideoPlaybackService.this.hidePlayerNotification(this.$player);
                MediaSession mediaSession = (MediaSession) ExpoVideoPlaybackService.this.mediaSessions.remove(this.$player);
                if (mediaSession != null) {
                    mediaSession.release();
                }
                if (ExpoVideoPlaybackService.this.mediaSessions.isEmpty()) {
                    ExpoVideoPlaybackService.this.cleanup();
                    ExpoVideoPlaybackService.this.stopSelf();
                } else {
                    ExpoVideoPlaybackService expoVideoPlaybackService = ExpoVideoPlaybackService.this;
                    expoVideoPlaybackService.setMostRecentInteractionSession(expoVideoPlaybackService.findMostRecentInteractionSession());
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void unregisterPlayer(ExoPlayer player) {
        Intrinsics.checkNotNullParameter(player, "player");
        BuildersKt__Builders_commonKt.launch$default(getAppContext().getMainQueue(), null, null, new C07271(player, null), 3, null);
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public IBinder onBind(Intent intent) {
        super.onBind(intent);
        return this.binder;
    }

    /* JADX INFO: renamed from: expo.modules.video.playbackService.ExpoVideoPlaybackService$onUpdateNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$onUpdateNotification$1", f = "ExpoVideoPlaybackService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C07241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MediaSession $session;
        final /* synthetic */ boolean $startInForegroundRequired;
        int label;
        final /* synthetic */ ExpoVideoPlaybackService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07241(boolean z, ExpoVideoPlaybackService expoVideoPlaybackService, MediaSession mediaSession, Continuation<? super C07241> continuation) {
            super(2, continuation);
            this.$startInForegroundRequired = z;
            this.this$0 = expoVideoPlaybackService;
            this.$session = mediaSession;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07241(this.$startInForegroundRequired, this.this$0, this.$session, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (this.$startInForegroundRequired && this.this$0.wantsToShowNotification(this.$session)) {
                this.this$0.setMostRecentInteractionSession(this.$session);
            } else {
                ExpoVideoPlaybackService expoVideoPlaybackService = this.this$0;
                expoVideoPlaybackService.setMostRecentInteractionSession(expoVideoPlaybackService.findMostRecentInteractionSession());
            }
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.media3.session.MediaSessionService
    public void onUpdateNotification(MediaSession session, boolean startInForegroundRequired) {
        Intrinsics.checkNotNullParameter(session, "session");
        BuildersKt__Builders_commonKt.launch$default(getAppContext().getMainQueue(), null, null, new C07241(startInForegroundRequired, this, session, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setMostRecentInteractionSession(MediaSession session) {
        Player player;
        if (session != null && (player = session.getPlayer()) != null && !player.getPlayWhenReady()) {
            stopForeground(2);
            this.isForeground = false;
        }
        if (!Intrinsics.areEqual(this.mostRecentInteractionSession, session)) {
            hideAllNotifications();
        }
        this.mostRecentInteractionSession = session;
        if (session != null) {
            createNotification(session, session.getPlayer().getPlayWhenReady());
        } else {
            stopForeground(1);
            this.isForeground = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MediaSession findMostRecentInteractionSession() {
        Object obj;
        Object next;
        List listDistinct = CollectionsKt.distinct(CollectionsKt.plus((Collection) CollectionsKt.listOfNotNull(this.mostRecentInteractionSession), (Iterable) CollectionsKt.toList(this.mediaSessions.values())));
        Iterator it = listDistinct.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            MediaSession mediaSession = (MediaSession) next;
            if (wantsToShowNotification(mediaSession) && mediaSession.getPlayer().getPlayWhenReady()) {
                break;
            }
        }
        MediaSession mediaSession2 = (MediaSession) next;
        if (mediaSession2 != null) {
            return mediaSession2;
        }
        for (Object obj2 : listDistinct) {
            if (wantsToShowNotification((MediaSession) obj2)) {
                obj = obj2;
                break;
            }
        }
        return (MediaSession) obj;
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        cleanup();
        stopSelf();
    }

    @Override // androidx.media3.session.MediaSessionService, android.app.Service
    public void onDestroy() {
        cleanup();
        super.onDestroy();
    }

    static /* synthetic */ void createNotification$default(ExpoVideoPlaybackService expoVideoPlaybackService, MediaSession mediaSession, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        expoVideoPlaybackService.createNotification(mediaSession, z);
    }

    private final void createNotification(MediaSession session, boolean startInForegroundRequired) {
        String str;
        MediaMetadata mediaMetadata;
        if (session.getPlayer().getCurrentMediaItem() == null) {
            return;
        }
        Object systemService = getSystemService(NotificationsService.NOTIFICATION_KEY);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        notificationManager.createNotificationChannel(new NotificationChannel(CHANNEL_ID, CHANNEL_ID, 2));
        MediaItem currentMediaItem = session.getPlayer().getCurrentMediaItem();
        if (currentMediaItem == null || (mediaMetadata = currentMediaItem.mediaMetadata) == null || (str = mediaMetadata.title) == null) {
        }
        Notification notificationBuild = new NotificationCompat.Builder(this, CHANNEL_ID).setSmallIcon(androidx.media3.session.R.drawable.media3_icon_circular_play).setContentTitle(str).setStyle(new MediaStyleNotificationHelper.MediaStyle(session)).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        int iHashCode = session.getPlayer().hashCode();
        if (startInForegroundRequired) {
            try {
                startForeground(iHashCode, notificationBuild);
                this.isForeground = true;
                Unit unit = Unit.INSTANCE;
                return;
            } catch (Exception e) {
                Logger jsLogger = getAppContext().getJsLogger();
                if (jsLogger != null) {
                    jsLogger.error(VideoExceptionsKt.getPlaybackServiceErrorMessage$default("Failed to start the expo-video foreground service", null, 2, null), e);
                    Unit unit2 = Unit.INSTANCE;
                    return;
                }
                return;
            }
        }
        notificationManager.notify(iHashCode, notificationBuild);
    }

    /* JADX INFO: renamed from: expo.modules.video.playbackService.ExpoVideoPlaybackService$cleanup$1, reason: invalid class name */
    /* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.playbackService.ExpoVideoPlaybackService$cleanup$1", f = "ExpoVideoPlaybackService.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ExpoVideoPlaybackService.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ExpoVideoPlaybackService.this.stopForeground(1);
            ExpoVideoPlaybackService.this.isForeground = false;
            ExpoVideoPlaybackService.this.hideAllNotifications();
            List list = CollectionsKt.toList(ExpoVideoPlaybackService.this.mediaSessions.values());
            ExpoVideoPlaybackService.this.mediaSessions.clear();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((MediaSession) it.next()).release();
            }
            Object systemService = ExpoVideoPlaybackService.this.getSystemService(NotificationsService.NOTIFICATION_KEY);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).deleteNotificationChannel(ExpoVideoPlaybackService.CHANNEL_ID);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanup() {
        BuildersKt__Builders_commonKt.launch$default(getAppContext().getMainQueue(), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hidePlayerNotification(ExoPlayer player) {
        Object systemService = getSystemService(NotificationsService.NOTIFICATION_KEY);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(player.hashCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideAllNotifications() {
        Object systemService = getSystemService(NotificationsService.NOTIFICATION_KEY);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancelAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean wantsToShowNotification(MediaSession mediaSession) {
        return mediaSession.getSessionExtras().getBoolean(SESSION_SHOW_NOTIFICATION, false);
    }

    /* JADX INFO: compiled from: ExpoVideoPlaybackService.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;", "", "<init>", "()V", "SEEK_FORWARD_COMMAND", "", "SEEK_BACKWARD_COMMAND", "CHANNEL_ID", "SESSION_SHOW_NOTIFICATION", "SEEK_INTERVAL_MS", "", "startService", "", "appContext", "Lexpo/modules/kotlin/AppContext;", "context", "Landroid/content/Context;", "serviceConnection", "Lexpo/modules/video/playbackService/PlaybackServiceConnection;", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean startService(AppContext appContext, Context context, PlaybackServiceConnection serviceConnection) {
            Intrinsics.checkNotNullParameter(appContext, "appContext");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(serviceConnection, "serviceConnection");
            Context reactContext = appContext.getReactContext();
            if (reactContext == null) {
                return false;
            }
            Intent intent = new Intent(context, (Class<?>) ExpoVideoPlaybackService.class);
            intent.setAction(MediaSessionService.SERVICE_INTERFACE);
            reactContext.startService(intent);
            return reactContext.bindService(intent, serviceConnection, Build.VERSION.SDK_INT >= 29 ? FragmentTransaction.TRANSIT_FRAGMENT_OPEN : 1);
        }
    }
}
