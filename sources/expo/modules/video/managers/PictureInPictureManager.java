package expo.modules.video.managers;

import android.R;
import android.app.Activity;
import android.app.PictureInPictureParams;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerView;
import com.reactcommunity.rndatetimepicker.RNConstants;
import expo.modules.core.logging.Logger;
import expo.modules.kotlin.AppContext;
import expo.modules.video.PictureInPictureFragmentListener;
import expo.modules.video.PictureInPictureHelperFragment;
import expo.modules.video.VideoView;
import expo.modules.video.listeners.VideoManagerListener;
import expo.modules.video.listeners.VideoViewListener;
import expo.modules.video.player.VideoPlayer;
import expo.modules.video.records.PiPParams;
import expo.modules.video.utils.PictureInPictureUtilsKt;
import expo.modules.video.utils.ViewVisibilityUtilsKt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PictureInPictureManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\"\u001a\u00020#J\b\u0010$\u001a\u00020#H\u0002J\u000e\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0012J\u0010\u0010'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0012H\u0002J \u0010)\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010-\u001a\u00020\r2\u0006\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u00020+H\u0002J\b\u00100\u001a\u00020#H\u0016J\b\u00101\u001a\u00020#H\u0016J\u001e\u00102\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00122\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001204H\u0016J\u001e\u00105\u001a\u00020#2\u0006\u0010&\u001a\u00020\u00122\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001204H\u0016J\b\u00106\u001a\u00020#H\u0016J\b\u00107\u001a\u00020#H\u0016J\b\u00108\u001a\u00020#H\u0002J\b\u00109\u001a\u00020#H\u0002J\b\u0010:\u001a\u00020#H\u0002J\u0018\u0010;\u001a\u0004\u0018\u00010\u00122\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u001bH\u0002J\b\u0010<\u001a\u00020#H\u0002J\u0010\u0010=\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0012H\u0002J\u0012\u0010>\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010\u0012H\u0002J\u0018\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020+2\u0006\u0010/\u001a\u00020+H\u0002J\u0010\u0010A\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0012H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00050\u00050\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R*\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00120\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00120\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Lexpo/modules/video/managers/PictureInPictureManager;", "Lexpo/modules/video/PictureInPictureFragmentListener;", "Lexpo/modules/video/listeners/VideoManagerListener;", "Lexpo/modules/video/listeners/VideoViewListener;", "appContext", "Lexpo/modules/kotlin/AppContext;", "<init>", "(Lexpo/modules/kotlin/AppContext;)V", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "mainActivity", "Landroid/app/Activity;", RNConstants.ARG_VALUE, "", "autoEnterPiP", "getAutoEnterPiP", "()Z", "isInPiP", "Lexpo/modules/video/VideoView;", "currentPiPViewCandidate", "getCurrentPiPViewCandidate", "()Ljava/lang/ref/WeakReference;", "pipHelperFragment", "Lexpo/modules/video/PictureInPictureHelperFragment;", "videoViews", "", "strongVideoViews", "", "getStrongVideoViews", "()Ljava/util/List;", "rootViewChildrenOriginalVisibility", "", "", "isReleased", "release", "", "findAndSetupPipCandidate", "enterPictureInPicture", "videoView", "applyPipParamsForView", "view", "onPiPParamsChanged", "oldPiPParams", "Lexpo/modules/video/records/PiPParams;", "newPiPParams", "pipParamChangeInfluenceRectHint", "old", "new", "onPictureInPictureStart", "onPictureInPictureStop", "onVideoViewRegistered", "allVideoViews", "", "onVideoViewUnregistered", "onAppBackgrounded", "onAppForegrounded", "addPiPHelperFragment", "removePiPHelperFragment", "electAutoPipViewCandidate", "findAutoPiPViewCandidate", "maybeWarnAboutAutoEnterViews", "layoutForPiPEnter", "layoutForPiPExit", "paramChangeInfluencesAutoEnter", "previous", "shouldPauseOnBackground", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PictureInPictureManager implements PictureInPictureFragmentListener, VideoManagerListener, VideoViewListener {
    private final WeakReference<AppContext> appContext;
    private boolean autoEnterPiP;
    private WeakReference<VideoView> currentPiPViewCandidate;
    private boolean isInPiP;
    private boolean isReleased;
    private final WeakReference<Activity> mainActivity;
    private PictureInPictureHelperFragment pipHelperFragment;
    private final Map<Integer, Integer> rootViewChildrenOriginalVisibility;
    private final List<WeakReference<VideoView>> videoViews;

    public PictureInPictureManager(AppContext appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = new WeakReference<>(appContext);
        this.mainActivity = new WeakReference<>(appContext.getCurrentActivity());
        this.currentPiPViewCandidate = new WeakReference<>(null);
        this.videoViews = new ArrayList();
        this.rootViewChildrenOriginalVisibility = new LinkedHashMap();
        VideoManager.INSTANCE.registerListener(this);
    }

    public final boolean getAutoEnterPiP() {
        return this.autoEnterPiP;
    }

    /* JADX INFO: renamed from: isInPiP, reason: from getter */
    public final boolean getIsInPiP() {
        return this.isInPiP;
    }

    public final WeakReference<VideoView> getCurrentPiPViewCandidate() {
        return this.currentPiPViewCandidate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<VideoView> getStrongVideoViews() {
        List<WeakReference<VideoView>> list = this.videoViews;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            VideoView videoView = (VideoView) ((WeakReference) it.next()).get();
            if (videoView != null) {
                arrayList.add(videoView);
            }
        }
        return arrayList;
    }

    public final void release() {
        if (this.isInPiP) {
            layoutForPiPExit(null);
        }
        this.videoViews.clear();
        removePiPHelperFragment();
        this.isReleased = true;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0052  */
    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0056 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private final void findAndSetupPipCandidate() {
        boolean z;
        Activity activity;
        List<VideoView> strongVideoViews;
        Iterator<T> it;
        VideoView videoView;
        VideoView videoViewFindAutoPiPViewCandidate = findAutoPiPViewCandidate(getStrongVideoViews());
        this.currentPiPViewCandidate = new WeakReference<>(videoViewFindAutoPiPViewCandidate);
        List<VideoView> strongVideoViews2 = getStrongVideoViews();
        if ((strongVideoViews2 instanceof Collection) && strongVideoViews2.isEmpty()) {
            strongVideoViews = getStrongVideoViews();
            if (strongVideoViews instanceof Collection) {
                it = strongVideoViews.iterator();
                while (true) {
                    if (it.hasNext()) {
                        z = false;
                        break;
                    } else {
                        videoView = (VideoView) it.next();
                        if (!videoView.getPipParams().getAutoEnter()) {
                        }
                    }
                }
            } else {
                it = strongVideoViews.iterator();
                while (true) {
                    if (it.hasNext()) {
                        z = false;
                        break;
                    } else {
                        videoView = (VideoView) it.next();
                        if (!videoView.getPipParams().getAutoEnter()) {
                        }
                    }
                }
            }
        } else {
            Iterator<T> it2 = strongVideoViews2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((VideoView) it2.next()).getPipParams().getBlocksAppFromEntering()) {
                    }
                } else {
                    strongVideoViews = getStrongVideoViews();
                    if ((strongVideoViews instanceof Collection) || !strongVideoViews.isEmpty()) {
                        it = strongVideoViews.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                videoView = (VideoView) it.next();
                                if (!videoView.getPipParams().getAutoEnter() && videoView.getPipParams().getCanEnter()) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                    }
                }
                z = false;
                break;
            }
        }
        this.autoEnterPiP = z;
        if (!z && (activity = this.mainActivity.get()) != null) {
            PictureInPictureUtilsKt.applyPiPParams$default(activity, this.autoEnterPiP, null, 4, null);
        }
        if (videoViewFindAutoPiPViewCandidate != null) {
            applyPipParamsForView(videoViewFindAutoPiPViewCandidate);
        }
    }

    public final void enterPictureInPicture(VideoView videoView) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        Activity activity = this.mainActivity.get();
        if (activity == null) {
            return;
        }
        this.currentPiPViewCandidate = new WeakReference<>(videoView);
        applyPipParamsForView(videoView);
        activity.enterPictureInPictureMode(new PictureInPictureParams.Builder().build());
    }

    private final void applyPipParamsForView(VideoView view) {
        Activity activity = this.mainActivity.get();
        if (activity != null) {
            PictureInPictureUtilsKt.applyRectHint(activity, PictureInPictureUtilsKt.calculateRectHint(view.getPlayerView()));
            PictureInPictureUtilsKt.applyPiPParams(activity, this.autoEnterPiP, view.getPipParams().getAspectRatio());
        }
    }

    @Override // expo.modules.video.listeners.VideoViewListener
    public void onPiPParamsChanged(VideoView videoView, PiPParams oldPiPParams, PiPParams newPiPParams) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        Intrinsics.checkNotNullParameter(oldPiPParams, "oldPiPParams");
        Intrinsics.checkNotNullParameter(newPiPParams, "newPiPParams");
        boolean zPipParamChangeInfluenceRectHint = pipParamChangeInfluenceRectHint(oldPiPParams, newPiPParams);
        if (paramChangeInfluencesAutoEnter(oldPiPParams, newPiPParams)) {
            findAndSetupPipCandidate();
        } else if (Intrinsics.areEqual(videoView, this.currentPiPViewCandidate.get()) && zPipParamChangeInfluenceRectHint) {
            applyPipParamsForView(videoView);
        }
    }

    private final boolean pipParamChangeInfluenceRectHint(PiPParams old, PiPParams piPParams) {
        return (Intrinsics.areEqual(old.getRectHint(), piPParams.getRectHint()) && Intrinsics.areEqual(old.getAspectRatio(), piPParams.getAspectRatio())) ? false : true;
    }

    @Override // expo.modules.video.PictureInPictureFragmentListener
    public void onPictureInPictureStart() {
        maybeWarnAboutAutoEnterViews();
        VideoView videoView = this.currentPiPViewCandidate.get();
        if (videoView != null) {
            layoutForPiPEnter(videoView);
        }
        Iterator<T> it = getStrongVideoViews().iterator();
        while (it.hasNext()) {
            ((VideoView) it.next()).onStartPictureInPicture(videoView);
        }
        this.isInPiP = true;
    }

    @Override // expo.modules.video.PictureInPictureFragmentListener
    public void onPictureInPictureStop() {
        if (this.isInPiP) {
            VideoView videoView = this.currentPiPViewCandidate.get();
            if (videoView != null) {
                layoutForPiPExit(videoView);
            }
            Iterator<T> it = getStrongVideoViews().iterator();
            while (it.hasNext()) {
                ((VideoView) it.next()).onStopPictureInPicture(this.currentPiPViewCandidate.get());
            }
            this.isInPiP = false;
        }
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onVideoViewRegistered(VideoView videoView, Collection<? extends VideoView> allVideoViews) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        Intrinsics.checkNotNullParameter(allVideoViews, "allVideoViews");
        this.videoViews.add(new WeakReference<>(videoView));
        if (this.videoViews.size() == 1) {
            addPiPHelperFragment();
        }
        videoView.addVideoViewListener(this);
        electAutoPipViewCandidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onVideoViewUnregistered$lambda$10(VideoView videoView, WeakReference it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it.get(), videoView);
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onVideoViewUnregistered(final VideoView videoView, Collection<? extends VideoView> allVideoViews) {
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        Intrinsics.checkNotNullParameter(allVideoViews, "allVideoViews");
        CollectionsKt.retainAll((List) this.videoViews, new Function1() { // from class: expo.modules.video.managers.PictureInPictureManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PictureInPictureManager.onVideoViewUnregistered$lambda$10(videoView, (WeakReference) obj));
            }
        });
        if (this.videoViews.isEmpty()) {
            removePiPHelperFragment();
        }
        videoView.removeVideoViewListener(this);
        findAndSetupPipCandidate();
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onAppBackgrounded() {
        Object next;
        CoroutineScope mainQueue;
        Iterator<T> it = getStrongVideoViews().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((VideoView) next).getPipParams().getWillEnter());
        VideoView videoViewFindAutoPiPViewCandidate = (VideoView) next;
        if (videoViewFindAutoPiPViewCandidate == null) {
            videoViewFindAutoPiPViewCandidate = findAutoPiPViewCandidate(getStrongVideoViews());
        }
        this.currentPiPViewCandidate = new WeakReference<>(videoViewFindAutoPiPViewCandidate);
        if (videoViewFindAutoPiPViewCandidate != null) {
            applyPipParamsForView(videoViewFindAutoPiPViewCandidate);
        }
        AppContext appContext = this.appContext.get();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new AnonymousClass2(null), 3, null);
    }

    /* JADX INFO: renamed from: expo.modules.video.managers.PictureInPictureManager$onAppBackgrounded$2, reason: invalid class name */
    /* JADX INFO: compiled from: PictureInPictureManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.managers.PictureInPictureManager$onAppBackgrounded$2", f = "PictureInPictureManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PictureInPictureManager.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ExoPlayer player;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                List<VideoView> strongVideoViews = PictureInPictureManager.this.getStrongVideoViews();
                PictureInPictureManager pictureInPictureManager = PictureInPictureManager.this;
                for (VideoView videoView : strongVideoViews) {
                    if (pictureInPictureManager.shouldPauseOnBackground(videoView)) {
                        VideoPlayer videoPlayer = videoView.getVideoPlayer();
                        if (videoPlayer != null && (player = videoPlayer.getPlayer()) != null) {
                            player.pause();
                        }
                        videoView.setWasAutoPaused(true);
                    }
                    videoView.getPlayerView().setUseController(false);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: expo.modules.video.managers.PictureInPictureManager$onAppForegrounded$1, reason: invalid class name */
    /* JADX INFO: compiled from: PictureInPictureManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.video.managers.PictureInPictureManager$onAppForegrounded$1", f = "PictureInPictureManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PictureInPictureManager.this.new AnonymousClass1(continuation);
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
            for (VideoView videoView : PictureInPictureManager.this.getStrongVideoViews()) {
                videoView.getPlayerView().setUseController(videoView.getUseNativeControls());
            }
            return Unit.INSTANCE;
        }
    }

    @Override // expo.modules.video.listeners.VideoManagerListener
    public void onAppForegrounded() {
        CoroutineScope mainQueue;
        AppContext appContext = this.appContext.get();
        if (appContext == null || (mainQueue = appContext.getMainQueue()) == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(mainQueue, null, null, new AnonymousClass1(null), 3, null);
    }

    private final void addPiPHelperFragment() {
        Activity activity = this.mainActivity.get();
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity != null) {
            PictureInPictureHelperFragment pictureInPictureHelperFragment = new PictureInPictureHelperFragment(this);
            this.pipHelperFragment = pictureInPictureHelperFragment;
            fragmentActivity.getSupportFragmentManager().beginTransaction().add(pictureInPictureHelperFragment, pictureInPictureHelperFragment.getId()).commitAllowingStateLoss();
        }
    }

    private final void removePiPHelperFragment() {
        PictureInPictureHelperFragment pictureInPictureHelperFragment;
        PictureInPictureHelperFragment pictureInPictureHelperFragment2 = this.pipHelperFragment;
        if (pictureInPictureHelperFragment2 != null) {
            pictureInPictureHelperFragment2.release();
        }
        Activity activity = this.mainActivity.get();
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity == null || (pictureInPictureHelperFragment = this.pipHelperFragment) == null) {
            return;
        }
        fragmentActivity.getSupportFragmentManager().beginTransaction().remove(pictureInPictureHelperFragment).commitAllowingStateLoss();
    }

    private final void electAutoPipViewCandidate() {
        if (this.isInPiP) {
            return;
        }
        this.currentPiPViewCandidate = new WeakReference<>(findAutoPiPViewCandidate(getStrongVideoViews()));
    }

    private final VideoView findAutoPiPViewCandidate(List<? extends VideoView> videoViews) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : videoViews) {
            if (((VideoView) obj).getPipParams().getAutoEnter()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (ViewVisibilityUtilsKt.isVisibleOnScreen((VideoView) obj2)) {
                arrayList4.add(obj2);
            }
        }
        List listReversed = CollectionsKt.reversed(CollectionsKt.sortedWith(arrayList4, new Comparator() { // from class: expo.modules.video.managers.PictureInPictureManager$findAutoPiPViewCandidate$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Float.valueOf(ViewVisibilityUtilsKt.visiblePercentage((VideoView) t)), Float.valueOf(ViewVisibilityUtilsKt.visiblePercentage((VideoView) t2)));
            }
        }));
        ArrayList arrayList5 = new ArrayList();
        for (Object obj3 : arrayList3) {
            VideoView videoView = (VideoView) obj3;
            VideoPlayer videoPlayer = videoView.getVideoPlayer();
            if ((videoPlayer != null && videoPlayer.getPlaying()) || videoView.getWasAutoPaused()) {
                arrayList5.add(obj3);
            }
        }
        ArrayList arrayList6 = arrayList5;
        ArrayList arrayList7 = new ArrayList();
        for (Object obj4 : listReversed) {
            VideoPlayer videoPlayer2 = ((VideoView) obj4).getVideoPlayer();
            if (videoPlayer2 != null && videoPlayer2.getPlaying()) {
                arrayList7.add(obj4);
            }
        }
        return (VideoView) CollectionsKt.firstOrNull(CollectionsKt.flatten(CollectionsKt.listOf((Object[]) new List[]{arrayList7, arrayList6, listReversed, arrayList2})));
    }

    private final void maybeWarnAboutAutoEnterViews() {
        AppContext appContext;
        Logger jsLogger;
        List<VideoView> strongVideoViews = getStrongVideoViews();
        ArrayList arrayList = new ArrayList();
        for (Object obj : strongVideoViews) {
            if (((VideoView) obj).getAutoEnterPiP()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() <= 1 || (appContext = this.appContext.get()) == null || (jsLogger = appContext.getJsLogger()) == null) {
            return;
        }
        Logger.warn$default(jsLogger, "expo-video: Detected multiple `VideoViews` with `startsPictureInPictureAutomatically` set to `true`while entering picture in picture. To ensure no visual issues when auto-entering PiP, make sure that there is only one active `VideoView` with that property.", null, 2, null);
    }

    private final void layoutForPiPEnter(VideoView videoView) {
        Activity activity = this.mainActivity.get();
        if (activity == null) {
            return;
        }
        PlayerView playerView = videoView.getPlayerView();
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        ViewGroup viewGroup = (ViewGroup) decorView.findViewById(R.id.content);
        ViewParent parent = playerView.getParent();
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup2 != null) {
            viewGroup2.removeView(playerView);
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!Intrinsics.areEqual(childAt, playerView)) {
                this.rootViewChildrenOriginalVisibility.put(Integer.valueOf(childAt.getId()), Integer.valueOf(childAt.getVisibility()));
                viewGroup.getChildAt(i).setVisibility(8);
            }
        }
        viewGroup.addView(playerView, new FrameLayout.LayoutParams(-1, -1));
    }

    private final void layoutForPiPExit(VideoView videoView) {
        Activity activity = this.mainActivity.get();
        if (activity == null) {
            return;
        }
        PlayerView playerView = videoView != null ? videoView.getPlayerView() : null;
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        ViewGroup viewGroup = (ViewGroup) decorView.findViewById(R.id.content);
        PlayerView playerView2 = playerView;
        viewGroup.removeView(playerView2);
        if (videoView != null) {
            videoView.addView(playerView2);
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            Integer num = this.rootViewChildrenOriginalVisibility.get(Integer.valueOf(childAt.getId()));
            if (num != null) {
                childAt.setVisibility(num.intValue());
            }
        }
        this.rootViewChildrenOriginalVisibility.clear();
    }

    private final boolean paramChangeInfluencesAutoEnter(PiPParams previous, PiPParams piPParams) {
        return (previous.getAutoEnter() == piPParams.getAutoEnter() && previous.getCanEnter() == piPParams.getCanEnter() && previous.getBlocksAppFromEntering() == piPParams.getBlocksAppFromEntering()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldPauseOnBackground(VideoView videoView) {
        if (videoView.getIsInFullscreen()) {
            return false;
        }
        List<VideoView> strongVideoViews = getStrongVideoViews();
        if (!(strongVideoViews instanceof Collection) || !strongVideoViews.isEmpty()) {
            Iterator<T> it = strongVideoViews.iterator();
            while (it.hasNext()) {
                if (((VideoView) it.next()).getIsInFullscreen()) {
                    return true;
                }
            }
        }
        VideoView videoView2 = this.currentPiPViewCandidate.get();
        PiPParams pipParams = videoView.getPipParams();
        boolean z = pipParams.getAutoEnter() || pipParams.getWillEnter();
        boolean zAreEqual = Intrinsics.areEqual(videoView, videoView2);
        if (videoView2 != null) {
            return z && !zAreEqual;
        }
        VideoPlayer videoPlayer = videoView.getVideoPlayer();
        return !(videoPlayer != null ? videoPlayer.getStaysActiveInBackground() : false);
    }
}
