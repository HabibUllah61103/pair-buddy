package expo.modules.video;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: VideoModule.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class VideoModuleKt$VideoViewComponent$11$1 implements Function0<Unit> {

    /* JADX INFO: Incorrect field signature: TT; */
    final /* synthetic */ VideoView $view;

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    public VideoModuleKt$VideoViewComponent$11$1(VideoView videoView) {
        this.$view = videoView;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() throws PictureInPictureEnterException, PictureInPictureUnsupportedException {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() throws PictureInPictureEnterException, PictureInPictureUnsupportedException {
        this.$view.enterPictureInPicture();
    }
}
