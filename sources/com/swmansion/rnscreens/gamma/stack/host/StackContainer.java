package com.swmansion.rnscreens.gamma.stack.host;

import android.content.Context;
import android.util.Log;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.swmansion.rnscreens.gamma.helpers.FragmentManagerHelper;
import com.swmansion.rnscreens.gamma.helpers.ViewIdGenerator;
import com.swmansion.rnscreens.gamma.stack.screen.StackScreen;
import com.swmansion.rnscreens.gamma.stack.screen.StackScreenFragment;
import com.swmansion.rnscreens.utils.RNSLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StackContainer.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 42\u00020\u00012\u00020\u0002:\u00014B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\b\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\r\u0010\u001d\u001a\u00020\u001bH\u0000¢\u0006\u0002\b\u001eJ\r\u0010\u001f\u001a\u00020\u001bH\u0000¢\u0006\u0002\b J\u0015\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0000¢\u0006\u0002\b$J\u0015\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0000¢\u0006\u0002\b&J\u0010\u0010'\u001a\u00020\u001b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)H\u0002J\u0010\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u000fH\u0002J\b\u0010-\u001a\u00020\u001bH\u0002J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020#H\u0002J\b\u00100\u001a\u00020\u001bH\u0016J\u0018\u00101\u001a\u00020\u001b2\u0006\u0010,\u001a\u0002022\u0006\u00103\u001a\u00020\u0015H\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/swmansion/rnscreens/gamma/stack/host/StackContainer;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;", "context", "Landroid/content/Context;", "delegate", "Ljava/lang/ref/WeakReference;", "Lcom/swmansion/rnscreens/gamma/stack/host/StackContainerDelegate;", "<init>", "(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "requireFragmentManager", "stackModel", "", "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreenFragment;", "pendingPopOperations", "Lcom/swmansion/rnscreens/gamma/stack/host/PopOperation;", "pendingPushOperations", "Lcom/swmansion/rnscreens/gamma/stack/host/PushOperation;", "hasPendingOperations", "", "getHasPendingOperations", "()Z", "fragmentOpExecutor", "Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperationExecutor;", "onAttachedToWindow", "", "onDetachedFromWindow", "setupFragmentManger", "setupFragmentManger$react_native_screens_release", "performContainerUpdateIfNeeded", "performContainerUpdateIfNeeded$react_native_screens_release", "enqueuePushOperation", "stackScreen", "Lcom/swmansion/rnscreens/gamma/stack/screen/StackScreen;", "enqueuePushOperation$react_native_screens_release", "enqueuePopOperation", "enqueuePopOperation$react_native_screens_release", "performOperations", "applyOperationsAndComputeFragmentManagerOperations", "", "Lcom/swmansion/rnscreens/gamma/stack/host/FragmentOperation;", "onNativeFragmentPop", "fragment", "dumpStackModel", "createFragmentForScreen", "screen", "onBackStackChanged", "onBackStackChangeCommitted", "Landroidx/fragment/app/Fragment;", "pop", "Companion", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StackContainer extends CoordinatorLayout implements FragmentManager.OnBackStackChangedListener {
    public static final String TAG = "StackContainer";
    private final WeakReference<StackContainerDelegate> delegate;
    private FragmentManager fragmentManager;
    private final FragmentOperationExecutor fragmentOpExecutor;
    private final List<PopOperation> pendingPopOperations;
    private final List<PushOperation> pendingPushOperations;
    private final List<StackScreenFragment> stackModel;

    @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
    public void onBackStackChanged() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StackContainer(Context context, WeakReference<StackContainerDelegate> delegate) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        this.stackModel = new ArrayList();
        this.pendingPopOperations = new ArrayList();
        this.pendingPushOperations = new ArrayList();
        this.fragmentOpExecutor = new FragmentOperationExecutor();
        setId(ViewIdGenerator.INSTANCE.generateViewId());
    }

    private final FragmentManager requireFragmentManager() {
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("[RNScreens] Attempt to use nullish FragmentManager".toString());
    }

    private final boolean getHasPendingOperations() {
        return (this.pendingPushOperations.isEmpty() && this.pendingPopOperations.isEmpty()) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        RNSLog.INSTANCE.d(TAG, "StackContainer [" + getId() + "] attached to window");
        super.onAttachedToWindow();
        setupFragmentManger$react_native_screens_release();
        performContainerUpdateIfNeeded$react_native_screens_release();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        requireFragmentManager().removeOnBackStackChangedListener(this);
        this.fragmentManager = null;
    }

    public final void setupFragmentManger$react_native_screens_release() {
        FragmentManager fragmentManagerFindFragmentManagerForView = FragmentManagerHelper.INSTANCE.findFragmentManagerForView(this);
        if (fragmentManagerFindFragmentManagerForView == null) {
            throw new IllegalStateException("[RNScreens] Nullish fragment manager - can't run container operations".toString());
        }
        fragmentManagerFindFragmentManagerForView.addOnBackStackChangedListener(this);
        this.fragmentManager = fragmentManagerFindFragmentManagerForView;
    }

    public final void performContainerUpdateIfNeeded$react_native_screens_release() {
        if (getHasPendingOperations() && isAttachedToWindow()) {
            performOperations(requireFragmentManager());
        }
    }

    public final void enqueuePushOperation$react_native_screens_release(StackScreen stackScreen) {
        Intrinsics.checkNotNullParameter(stackScreen, "stackScreen");
        this.pendingPushOperations.add(new PushOperation(stackScreen));
    }

    public final void enqueuePopOperation$react_native_screens_release(StackScreen stackScreen) {
        Intrinsics.checkNotNullParameter(stackScreen, "stackScreen");
        this.pendingPopOperations.add(new PopOperation(stackScreen));
    }

    private final void performOperations(FragmentManager fragmentManager) {
        this.fragmentOpExecutor.executeOperations$react_native_screens_release(fragmentManager, applyOperationsAndComputeFragmentManagerOperations(), false);
        dumpStackModel();
    }

    private final List<FragmentOperation> applyOperationsAndComputeFragmentManagerOperations() {
        Object next;
        ArrayList arrayList = new ArrayList();
        for (PopOperation popOperation : this.pendingPopOperations) {
            Iterator<T> it = this.stackModel.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((StackScreenFragment) next).getStackScreen() != popOperation.getScreen());
            if (next == null) {
                throw new IllegalStateException("[RNScreens] Unable to find a fragment to pop".toString());
            }
            StackScreenFragment stackScreenFragment = (StackScreenFragment) next;
            if (this.stackModel.size() <= 1) {
                throw new IllegalStateException("[RNScreens] Attempt to pop last screen from the stack".toString());
            }
            arrayList.add(new PopBackStackOp(stackScreenFragment));
            List<StackScreenFragment> list = this.stackModel;
            if (list.remove(CollectionsKt.getLastIndex(list)) != stackScreenFragment) {
                throw new IllegalStateException("[RNScreens] Attempt to pop non-top screen".toString());
            }
        }
        Iterator<T> it2 = this.pendingPushOperations.iterator();
        while (it2.hasNext()) {
            StackScreenFragment stackScreenFragmentCreateFragmentForScreen = createFragmentForScreen(((PushOperation) it2.next()).getScreen());
            arrayList.add(new AddOp(stackScreenFragmentCreateFragmentForScreen, getId(), !this.stackModel.isEmpty(), false, 8, null));
            this.stackModel.add(stackScreenFragmentCreateFragmentForScreen);
        }
        if (this.stackModel.isEmpty()) {
            throw new IllegalStateException("[RNScreens] Stack should never be empty after updates".toString());
        }
        arrayList.add(new SetPrimaryNavFragmentOp((StackScreenFragment) CollectionsKt.last((List) this.stackModel)));
        this.pendingPopOperations.clear();
        this.pendingPushOperations.clear();
        return arrayList;
    }

    private final void onNativeFragmentPop(StackScreenFragment fragment) {
        Log.d(TAG, "StackContainer [" + getId() + "] natively removed fragment " + fragment.getStackScreen().getScreenKey());
        if (!this.stackModel.remove(fragment)) {
            throw new IllegalArgumentException("[RNScreens] onNativeFragmentPop must be called with the fragment present in stack model".toString());
        }
        if (this.stackModel.isEmpty()) {
            throw new IllegalStateException("[RNScreens] Stack model should not be empty after a native pop".toString());
        }
        FragmentManager fragmentManagerRequireFragmentManager = requireFragmentManager();
        if (fragmentManagerRequireFragmentManager.getPrimaryNavigationFragment() == fragment) {
            FragmentOperationExecutor.executeOperations$react_native_screens_release$default(this.fragmentOpExecutor, fragmentManagerRequireFragmentManager, CollectionsKt.listOf(new SetPrimaryNavFragmentOp((StackScreenFragment) CollectionsKt.last((List) this.stackModel))), false, 4, null);
        }
    }

    private final void dumpStackModel() {
        Log.d(TAG, "StackContainer [" + getId() + "] MODEL BEGIN");
        Iterator<T> it = this.stackModel.iterator();
        while (it.hasNext()) {
            Log.d(TAG, String.valueOf(((StackScreenFragment) it.next()).getStackScreen().getScreenKey()));
        }
    }

    private final StackScreenFragment createFragmentForScreen(StackScreen screen) {
        StackScreenFragment stackScreenFragment = new StackScreenFragment(screen);
        Log.d(TAG, "Created Fragment " + stackScreenFragment + " for screen " + screen.getScreenKey());
        return stackScreenFragment;
    }

    @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
    public void onBackStackChangeCommitted(Fragment fragment, boolean pop) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (!(fragment instanceof StackScreenFragment)) {
            Log.w(TAG, "[RNScreens] Unexpected type of fragment: " + fragment.getClass().getSimpleName());
        } else if (pop) {
            StackContainerDelegate stackContainerDelegate = this.delegate.get();
            if (stackContainerDelegate != null) {
                stackContainerDelegate.onScreenDismiss(((StackScreenFragment) fragment).getStackScreen());
            }
            if (this.stackModel.contains(fragment)) {
                onNativeFragmentPop((StackScreenFragment) fragment);
            }
        }
    }
}
