package expo.modules.imagemanipulator;

import android.graphics.Bitmap;
import expo.modules.imagemanipulator.transformers.ImageTransformer;
import expo.modules.kotlin.runtime.Runtime;
import expo.modules.kotlin.sharedobjects.SharedObject;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ImageManipulatorContext.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lexpo/modules/imagemanipulator/ImageManipulatorContext;", "Lexpo/modules/kotlin/sharedobjects/SharedObject;", "runtimeContext", "Lexpo/modules/kotlin/runtime/Runtime;", "Lexpo/modules/kotlin/RuntimeContext;", "task", "Lexpo/modules/imagemanipulator/ManipulatorTask;", "<init>", "(Lexpo/modules/kotlin/runtime/Runtime;Lexpo/modules/imagemanipulator/ManipulatorTask;)V", "addTransformer", "transformer", "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;", "reset", "render", "Landroid/graphics/Bitmap;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sharedObjectDidRelease", "", "expo-image-manipulator_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageManipulatorContext extends SharedObject {
    private final ManipulatorTask task;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageManipulatorContext(Runtime runtimeContext, ManipulatorTask task) {
        super(runtimeContext);
        Intrinsics.checkNotNullParameter(runtimeContext, "runtimeContext");
        Intrinsics.checkNotNullParameter(task, "task");
        this.task = task;
    }

    public final ImageManipulatorContext addTransformer(ImageTransformer transformer) {
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        this.task.addTransformer(transformer);
        return this;
    }

    public final ImageManipulatorContext reset() {
        this.task.reset();
        return this;
    }

    public final Object render(Continuation<? super Bitmap> continuation) {
        return this.task.render(continuation);
    }

    @Override // expo.modules.kotlin.sharedobjects.SharedObject
    public void sharedObjectDidRelease() {
        this.task.cancel();
    }
}
