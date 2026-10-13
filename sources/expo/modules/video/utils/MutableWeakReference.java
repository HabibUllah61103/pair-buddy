package expo.modules.video.utils;

import androidx.exifinterface.media.ExifInterface;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: MutableWeakReference.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0002BO\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012>\b\u0002\u0010\u0004\u001a8\u0012\u0015\u0012\u0013\u0018\u00018\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00018\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\u0011\u001a\u0004\u0018\u00018\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0086\u0002¢\u0006\u0002\u0010\u0015J,\u0010\u0016\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u0017\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\u0018J\r\u0010\u0019\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cRG\u0010\u0004\u001a8\u0012\u0015\u0012\u0013\u0018\u00018\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00018\u0000¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lexpo/modules/video/utils/MutableWeakReference;", ExifInterface.GPS_DIRECTION_TRUE, "", "initialValue", "didSet", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "new", "old", "", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "getDidSet", "()Lkotlin/jvm/functions/Function2;", "ref", "Ljava/lang/ref/WeakReference;", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "setValue", RNConstants.ARG_VALUE, "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "get", "()Ljava/lang/Object;", "set", "(Ljava/lang/Object;)V", "expo-video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutableWeakReference<T> {
    private final Function2<T, T, Unit> didSet;
    private WeakReference<T> ref;

    /* JADX WARN: Multi-variable type inference failed */
    public MutableWeakReference(T t, Function2<? super T, ? super T, Unit> function2) {
        this.didSet = function2;
        this.ref = new WeakReference<>(t);
    }

    public /* synthetic */ MutableWeakReference(Object obj, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? null : function2);
    }

    public final Function2<T, T, Unit> getDidSet() {
        return this.didSet;
    }

    public final T getValue(Object thisRef, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return get();
    }

    public final void setValue(Object thisRef, KProperty<?> property, T value) {
        Intrinsics.checkNotNullParameter(property, "property");
        set(value);
    }

    public final T get() {
        return this.ref.get();
    }

    public final void set(T value) {
        T t = this.ref.get();
        this.ref = new WeakReference<>(value);
        Function2<T, T, Unit> function2 = this.didSet;
        if (function2 != null) {
            function2.invoke(t, value);
        }
    }
}
