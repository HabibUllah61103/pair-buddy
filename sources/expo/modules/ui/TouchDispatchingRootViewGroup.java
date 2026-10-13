package expo.modules.ui;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import com.facebook.react.config.ReactFeatureFlags;
import com.facebook.react.uimanager.JSPointerDispatcher;
import com.facebook.react.uimanager.JSTouchDispatcher;
import com.facebook.react.uimanager.RootView;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.events.EventDispatcher;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RNHostView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0014J0\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0018H\u0014J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#H\u0017J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010&\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#H\u0016J\u001a\u0010'\u001a\u00020\u00162\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020#H\u0016J\u0018\u0010+\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020#H\u0016J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u001cH\u0016J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u000200H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u00061"}, d2 = {"Lexpo/modules/ui/TouchDispatchingRootViewGroup;", "Landroid/widget/FrameLayout;", "Lcom/facebook/react/uimanager/RootView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "jsTouchDispatcher", "Lcom/facebook/react/uimanager/JSTouchDispatcher;", "jsPointerDispatcher", "Lcom/facebook/react/uimanager/JSPointerDispatcher;", "eventDispatcher", "Lcom/facebook/react/uimanager/events/EventDispatcher;", "getEventDispatcher", "()Lcom/facebook/react/uimanager/events/EventDispatcher;", "setEventDispatcher", "(Lcom/facebook/react/uimanager/events/EventDispatcher;)V", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "getReactContext", "()Lcom/facebook/react/uimanager/ThemedReactContext;", "onMeasure", "", "widthMeasureSpec", "", "heightMeasureSpec", "onLayout", "changed", "", "left", ViewProps.TOP, "right", ViewProps.BOTTOM, "onInterceptTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onTouchEvent", "onInterceptHoverEvent", "onHoverEvent", "onChildStartedNativeGesture", "childView", "Landroid/view/View;", "ev", "onChildEndedNativeGesture", "requestDisallowInterceptTouchEvent", "disallowIntercept", "handleException", "t", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TouchDispatchingRootViewGroup extends FrameLayout implements RootView {
    private EventDispatcher eventDispatcher;
    private JSPointerDispatcher jsPointerDispatcher;
    private final JSTouchDispatcher jsTouchDispatcher;

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TouchDispatchingRootViewGroup(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        TouchDispatchingRootViewGroup touchDispatchingRootViewGroup = this;
        this.jsTouchDispatcher = new JSTouchDispatcher(touchDispatchingRootViewGroup);
        if (ReactFeatureFlags.dispatchPointerEvents) {
            this.jsPointerDispatcher = new JSPointerDispatcher(touchDispatchingRootViewGroup);
        }
    }

    public final EventDispatcher getEventDispatcher() {
        return this.eventDispatcher;
    }

    public final void setEventDispatcher(EventDispatcher eventDispatcher) {
        this.eventDispatcher = eventDispatcher;
    }

    private final ThemedReactContext getReactContext() {
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext");
        return (ThemedReactContext) context;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), View.MeasureSpec.getSize(heightMeasureSpec));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null) {
            this.jsTouchDispatcher.handleTouchEvent(event, eventDispatcher, getReactContext());
            JSPointerDispatcher jSPointerDispatcher = this.jsPointerDispatcher;
            if (jSPointerDispatcher != null) {
                jSPointerDispatcher.handleMotionEvent(event, eventDispatcher, true);
            }
        }
        return super.onInterceptTouchEvent(event);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null) {
            this.jsTouchDispatcher.handleTouchEvent(event, eventDispatcher, getReactContext());
            JSPointerDispatcher jSPointerDispatcher = this.jsPointerDispatcher;
            if (jSPointerDispatcher != null) {
                jSPointerDispatcher.handleMotionEvent(event, eventDispatcher, false);
            }
        }
        super.onTouchEvent(event);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent event) {
        JSPointerDispatcher jSPointerDispatcher;
        Intrinsics.checkNotNullParameter(event, "event");
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null && (jSPointerDispatcher = this.jsPointerDispatcher) != null) {
            jSPointerDispatcher.handleMotionEvent(event, eventDispatcher, true);
        }
        return super.onInterceptHoverEvent(event);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent event) {
        JSPointerDispatcher jSPointerDispatcher;
        Intrinsics.checkNotNullParameter(event, "event");
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null && (jSPointerDispatcher = this.jsPointerDispatcher) != null) {
            jSPointerDispatcher.handleMotionEvent(event, eventDispatcher, false);
        }
        return super.onHoverEvent(event);
    }

    @Override // com.facebook.react.uimanager.RootView
    public void onChildStartedNativeGesture(View childView, MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null) {
            this.jsTouchDispatcher.onChildStartedNativeGesture(ev, eventDispatcher, getReactContext());
            JSPointerDispatcher jSPointerDispatcher = this.jsPointerDispatcher;
            if (jSPointerDispatcher != null) {
                jSPointerDispatcher.onChildStartedNativeGesture(childView, ev, eventDispatcher);
            }
        }
    }

    @Override // com.facebook.react.uimanager.RootView
    public void onChildEndedNativeGesture(View childView, MotionEvent ev) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(ev, "ev");
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null) {
            this.jsTouchDispatcher.onChildEndedNativeGesture(ev, eventDispatcher);
        }
        JSPointerDispatcher jSPointerDispatcher = this.jsPointerDispatcher;
        if (jSPointerDispatcher != null) {
            jSPointerDispatcher.onChildEndedNativeGesture();
        }
    }

    @Override // com.facebook.react.uimanager.RootView
    public void handleException(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        getReactContext().getReactApplicationContext().handleException(new RuntimeException(t));
    }
}
