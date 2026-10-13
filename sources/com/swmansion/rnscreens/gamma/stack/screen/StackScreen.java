package com.swmansion.rnscreens.gamma.stack.screen;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.facebook.react.uimanager.ThemedReactContext;
import com.reactcommunity.rndatetimepicker.RNConstants;
import com.swmansion.rnscreens.ext.ViewExtKt;
import com.swmansion.rnscreens.gamma.common.FragmentProviding;
import com.swmansion.rnscreens.gamma.stack.host.StackHost;
import com.swmansion.rnscreens.gamma.stack.screen.event.StackScreenDismissEvent;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: StackScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001=B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010*\u001a\u00020+H\u0000¢\u0006\u0002\b,J\u0015\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0000¢\u0006\u0002\b1J\r\u00102\u001a\u00020+H\u0000¢\u0006\u0002\b3J0\u00104\u001a\u00020+2\u0006\u00105\u001a\u00020\b2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u0002072\u0006\u0010:\u001a\u000207H\u0014J\n\u0010;\u001a\u0004\u0018\u00010<H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R+\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u001e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006>"}, d2 = {"Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;", "Landroid/view/ViewGroup;", "Lcom/swmansion/rnscreens/gamma/common/FragmentProviding;", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "<init>", "(Lcom/facebook/react/uimanager/ThemedReactContext;)V", RNConstants.ARG_VALUE, "", "isNativelyDismissed", "isNativelyDismissed$react_native_screens_release", "()Z", "setNativelyDismissed$react_native_screens_release", "(Z)V", "stackHost", "Ljava/lang/ref/WeakReference;", "Lcom/swmansion/rnscreens/gamma/stack/host/StackHost;", "getStackHost$react_native_screens_release", "()Ljava/lang/ref/WeakReference;", "setStackHost$react_native_screens_release", "(Ljava/lang/ref/WeakReference;)V", "<set-?>", "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;", "activityMode", "getActivityMode", "()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;", "setActivityMode", "(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;)V", "activityMode$delegate", "Lkotlin/properties/ReadWriteProperty;", "", "screenKey", "getScreenKey", "()Ljava/lang/String;", "setScreenKey", "(Ljava/lang/String;)V", "eventEmitter", "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;", "getEventEmitter$react_native_screens_release", "()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;", "setEventEmitter$react_native_screens_release", "(Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenEventEmitter;)V", "onViewManagerAddEventEmitters", "", "onViewManagerAddEventEmitters$react_native_screens_release", "createAppearanceEventsEmitter", "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenAppearanceEventsEmitter;", "viewLifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "createAppearanceEventsEmitter$react_native_screens_release", StackScreenDismissEvent.EVENT_REGISTRATION_NAME, "onDismiss$react_native_screens_release", "onLayout", "changed", CmcdData.STREAM_TYPE_LIVE, "", "t", "r", "b", "getAssociatedFragment", "Landroidx/fragment/app/Fragment;", "ActivityMode", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StackScreen extends ViewGroup implements FragmentProviding {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(StackScreen.class, "activityMode", "getActivityMode()Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;", 0))};

    /* JADX INFO: renamed from: activityMode$delegate, reason: from kotlin metadata */
    private final ReadWriteProperty activityMode;
    public StackScreenEventEmitter eventEmitter;
    private boolean isNativelyDismissed;
    private final ThemedReactContext reactContext;
    private String screenKey;
    private WeakReference<StackHost> stackHost;

    /* JADX INFO: compiled from: StackScreen.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen$ActivityMode;", "", "<init>", "(Ljava/lang/String;I)V", "DETACHED", "ATTACHED", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum ActivityMode {
        DETACHED,
        ATTACHED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<ActivityMode> getEntries() {
            return $ENTRIES;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StackScreen(ThemedReactContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.reactContext = reactContext;
        this.stackHost = new WeakReference<>(null);
        Delegates delegates = Delegates.INSTANCE;
        final ActivityMode activityMode = ActivityMode.DETACHED;
        this.activityMode = new ObservableProperty<ActivityMode>(activityMode) { // from class: com.swmansion.rnscreens.gamma.stack.screen.StackScreen$special$$inlined$observable$1
            @Override // kotlin.properties.ObservableProperty
            protected void afterChange(KProperty<?> property, StackScreen.ActivityMode oldValue, StackScreen.ActivityMode newValue) {
                StackHost stackHost;
                Intrinsics.checkNotNullParameter(property, "property");
                if (oldValue == newValue || (stackHost = this.getStackHost$react_native_screens_release().get()) == null) {
                    return;
                }
                stackHost.stackScreenChangedActivityMode$react_native_screens_release(this);
            }
        };
    }

    /* JADX INFO: renamed from: isNativelyDismissed$react_native_screens_release, reason: from getter */
    public final boolean getIsNativelyDismissed() {
        return this.isNativelyDismissed;
    }

    public final void setNativelyDismissed$react_native_screens_release(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("[RNScreens] Natively dismissed StackScreen must remain dismissed.".toString());
        }
        this.isNativelyDismissed = true;
    }

    public final WeakReference<StackHost> getStackHost$react_native_screens_release() {
        return this.stackHost;
    }

    public final void setStackHost$react_native_screens_release(WeakReference<StackHost> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.stackHost = weakReference;
    }

    public final ActivityMode getActivityMode() {
        return (ActivityMode) this.activityMode.getValue(this, $$delegatedProperties[0]);
    }

    public final void setActivityMode(ActivityMode activityMode) {
        Intrinsics.checkNotNullParameter(activityMode, "<set-?>");
        this.activityMode.setValue(this, $$delegatedProperties[0], activityMode);
    }

    public final String getScreenKey() {
        return this.screenKey;
    }

    public final void setScreenKey(String str) {
        if (this.screenKey != null) {
            throw new IllegalArgumentException("[RNScreens] StackScreen can't change its screenKey.".toString());
        }
        this.screenKey = str;
    }

    public final StackScreenEventEmitter getEventEmitter$react_native_screens_release() {
        StackScreenEventEmitter stackScreenEventEmitter = this.eventEmitter;
        if (stackScreenEventEmitter != null) {
            return stackScreenEventEmitter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("eventEmitter");
        return null;
    }

    public final void setEventEmitter$react_native_screens_release(StackScreenEventEmitter stackScreenEventEmitter) {
        Intrinsics.checkNotNullParameter(stackScreenEventEmitter, "<set-?>");
        this.eventEmitter = stackScreenEventEmitter;
    }

    public final void onViewManagerAddEventEmitters$react_native_screens_release() {
        if (getId() == -1) {
            throw new IllegalStateException("[RNScreens] StackScreen must have its tag set when registering event emitters".toString());
        }
        setEventEmitter$react_native_screens_release(new StackScreenEventEmitter(this.reactContext, getId()));
    }

    public final StackScreenAppearanceEventsEmitter createAppearanceEventsEmitter$react_native_screens_release(LifecycleOwner viewLifecycleOwner) {
        Intrinsics.checkNotNullParameter(viewLifecycleOwner, "viewLifecycleOwner");
        return new StackScreenAppearanceEventsEmitter(viewLifecycleOwner.getLifecycle(), getEventEmitter$react_native_screens_release());
    }

    public final void onDismiss$react_native_screens_release() {
        if (getActivityMode() == ActivityMode.ATTACHED) {
            setNativelyDismissed$react_native_screens_release(true);
        }
        getEventEmitter$react_native_screens_release().emitOnDismiss$react_native_screens_release(this.isNativelyDismissed);
    }

    @Override // com.swmansion.rnscreens.gamma.common.FragmentProviding
    public Fragment getAssociatedFragment() {
        Fragment fragmentFindFragmentOrNull = ViewExtKt.findFragmentOrNull(this);
        if (fragmentFindFragmentOrNull == null) {
            return null;
        }
        if (fragmentFindFragmentOrNull instanceof StackScreenFragment) {
            return fragmentFindFragmentOrNull;
        }
        throw new IllegalStateException(("[RNScreens] Unexpected fragment type: " + fragmentFindFragmentOrNull.getClass().getSimpleName()).toString());
    }
}
