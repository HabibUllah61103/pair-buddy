package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: FloatingToolbar.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ \u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u001fH\u0096@¢\u0006\u0004\b \u0010!J\f\u0010\"\u001a\u00020#*\u00020#H\u0016R\u0016\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Landroidx/compose/material3/ExitAlwaysFloatingToolbarScrollBehavior;", "Landroidx/compose/material3/FloatingToolbarScrollBehavior;", "exitDirection", "Landroidx/compose/material3/FloatingToolbarExitDirection;", "state", "Landroidx/compose/material3/FloatingToolbarState;", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "flingAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "<init>", "(ILandroidx/compose/material3/FloatingToolbarState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getExitDirection-8LIK8-E", "()I", "I", "getState", "()Landroidx/compose/material3/FloatingToolbarState;", "getSnapAnimationSpec", "()Landroidx/compose/animation/core/AnimationSpec;", "getFlingAnimationSpec", "()Landroidx/compose/animation/core/DecayAnimationSpec;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", "consumed", "available", Constants.ScionAnalytics.PARAM_SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "floatingScrollBehavior", "Landroidx/compose/ui/Modifier;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExitAlwaysFloatingToolbarScrollBehavior implements FloatingToolbarScrollBehavior {
    public static final int $stable = 0;
    private final int exitDirection;
    private final DecayAnimationSpec<Float> flingAnimationSpec;
    private final AnimationSpec<Float> snapAnimationSpec;
    private final FloatingToolbarState state;

    public /* synthetic */ ExitAlwaysFloatingToolbarScrollBehavior(int i, FloatingToolbarState floatingToolbarState, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, floatingToolbarState, animationSpec, decayAnimationSpec);
    }

    private ExitAlwaysFloatingToolbarScrollBehavior(int i, FloatingToolbarState floatingToolbarState, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec) {
        this.exitDirection = i;
        this.state = floatingToolbarState;
        this.snapAnimationSpec = animationSpec;
        this.flingAnimationSpec = decayAnimationSpec;
    }

    @Override // androidx.compose.material3.FloatingToolbarScrollBehavior
    /* JADX INFO: renamed from: getExitDirection-8LIK8-E, reason: not valid java name and from getter */
    public int getExitDirection() {
        return this.exitDirection;
    }

    @Override // androidx.compose.material3.FloatingToolbarScrollBehavior
    public FloatingToolbarState getState() {
        return this.state;
    }

    @Override // androidx.compose.material3.FloatingToolbarScrollBehavior
    public AnimationSpec<Float> getSnapAnimationSpec() {
        return this.snapAnimationSpec;
    }

    @Override // androidx.compose.material3.FloatingToolbarScrollBehavior
    public DecayAnimationSpec<Float> getFlingAnimationSpec() {
        return this.flingAnimationSpec;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo658onPostScrollDzOQY0M(long consumed, long available, int source) {
        FloatingToolbarState state = getState();
        int i = (int) (consumed & 4294967295L);
        state.setContentOffset(state.getContentOffset() + Float.intBitsToFloat(i));
        FloatingToolbarState state2 = getState();
        state2.setOffset(state2.getOffset() + Float.intBitsToFloat(i));
        return Offset.INSTANCE.m5829getZeroF1C5BW0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
    
        if (r13 == r0) goto L30;
     */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo657onPostFlingRZ2iAVY(long r9, long r11, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r13) {
        /*
            r8 = this;
            boolean r0 = r13 instanceof androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$onPostFling$1
            if (r0 == 0) goto L14
            r0 = r13
            androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$onPostFling$1 r0 = (androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$onPostFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r13 = r0.label
            int r13 = r13 - r2
            r0.label = r13
            goto L19
        L14:
            androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$onPostFling$1 r0 = new androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$onPostFling$1
            r0.<init>(r8, r13)
        L19:
            r6 = r0
            java.lang.Object r13 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r7 = 2
            r2 = 1
            if (r1 == 0) goto L3f
            if (r1 == r2) goto L39
            if (r1 != r7) goto L31
            long r9 = r6.J$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto La3
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            long r11 = r6.J$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L82
        L3f:
            kotlin.ResultKt.throwOnFailure(r13)
            float r13 = androidx.compose.ui.unit.Velocity.m9131getYimpl(r11)
            r1 = 0
            int r13 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r13 <= 0) goto L73
            androidx.compose.material3.FloatingToolbarState r13 = r8.getState()
            float r13 = r13.getOffset()
            int r13 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r13 != 0) goto L58
            goto L6c
        L58:
            androidx.compose.material3.FloatingToolbarState r13 = r8.getState()
            float r13 = r13.getOffset()
            androidx.compose.material3.FloatingToolbarState r3 = r8.getState()
            float r3 = r3.getOffsetLimit()
            int r13 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r13 != 0) goto L73
        L6c:
            androidx.compose.material3.FloatingToolbarState r13 = r8.getState()
            r13.setContentOffset(r1)
        L73:
            r6.J$0 = r11
            r6.label = r2
            r1 = r8
            r2 = r9
            r4 = r11
            java.lang.Object r13 = super.mo657onPostFlingRZ2iAVY(r2, r4, r6)
            if (r13 != r0) goto L81
            goto La2
        L81:
            r11 = r4
        L82:
            androidx.compose.ui.unit.Velocity r13 = (androidx.compose.ui.unit.Velocity) r13
            long r9 = r13.getPackedValue()
            androidx.compose.material3.FloatingToolbarState r13 = r8.getState()
            float r11 = androidx.compose.ui.unit.Velocity.m9131getYimpl(r11)
            androidx.compose.animation.core.AnimationSpec r12 = r8.getSnapAnimationSpec()
            androidx.compose.animation.core.DecayAnimationSpec r1 = r8.getFlingAnimationSpec()
            r6.J$0 = r9
            r6.label = r7
            java.lang.Object r13 = androidx.compose.material3.FloatingToolbarKt.access$settleFloatingToolbar(r13, r11, r12, r1, r6)
            if (r13 != r0) goto La3
        La2:
            return r0
        La3:
            androidx.compose.ui.unit.Velocity r13 = (androidx.compose.ui.unit.Velocity) r13
            long r11 = r13.getPackedValue()
            long r9 = androidx.compose.ui.unit.Velocity.m9134plusAH228Gc(r9, r11)
            androidx.compose.ui.unit.Velocity r9 = androidx.compose.ui.unit.Velocity.m9121boximpl(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior.mo657onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.material3.FloatingToolbarScrollBehavior
    public Modifier floatingScrollBehavior(Modifier modifier) {
        Orientation orientation;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        int exitDirection = getExitDirection();
        if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2697getStart8LIK8E()) || FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2696getEnd8LIK8E())) {
            orientation = Orientation.Horizontal;
        } else {
            orientation = Orientation.Vertical;
        }
        Orientation orientation2 = orientation;
        return OnGloballyPositionedModifierKt.onGloballyPositioned(DraggableKt.draggable$default(LayoutModifierKt.layout(modifier, new Function3() { // from class: androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return ExitAlwaysFloatingToolbarScrollBehavior.floatingScrollBehavior$lambda$1(booleanRef, this, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        }), DraggableKt.DraggableState(new Function1() { // from class: androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExitAlwaysFloatingToolbarScrollBehavior.floatingScrollBehavior$lambda$0(this.f$0, booleanRef, ((Float) obj).floatValue());
            }
        }), orientation2, false, null, false, null, new AnonymousClass2(null), false, TsExtractor.TS_PACKET_SIZE, null), new Function1() { // from class: androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExitAlwaysFloatingToolbarScrollBehavior.floatingScrollBehavior$lambda$2(this.f$0, booleanRef, (LayoutCoordinates) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit floatingScrollBehavior$lambda$0(ExitAlwaysFloatingToolbarScrollBehavior exitAlwaysFloatingToolbarScrollBehavior, Ref.BooleanRef booleanRef, float f) {
        if (CollectionsKt.listOf((Object[]) new FloatingToolbarExitDirection[]{FloatingToolbarExitDirection.m2688boximpl(FloatingToolbarExitDirection.INSTANCE.m2697getStart8LIK8E()), FloatingToolbarExitDirection.m2688boximpl(FloatingToolbarExitDirection.INSTANCE.m2696getEnd8LIK8E())}).contains(FloatingToolbarExitDirection.m2688boximpl(exitAlwaysFloatingToolbarScrollBehavior.getExitDirection())) && booleanRef.element) {
            f = -f;
        }
        int exitDirection = exitAlwaysFloatingToolbarScrollBehavior.getExitDirection();
        if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2697getStart8LIK8E()) || FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2698getTop8LIK8E())) {
            FloatingToolbarState state = exitAlwaysFloatingToolbarScrollBehavior.getState();
            state.setOffset(state.getOffset() + f);
        } else if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2696getEnd8LIK8E()) || FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2695getBottom8LIK8E())) {
            FloatingToolbarState state2 = exitAlwaysFloatingToolbarScrollBehavior.getState();
            state2.setOffset(state2.getOffset() - f);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult floatingScrollBehavior$lambda$1(Ref.BooleanRef booleanRef, final ExitAlwaysFloatingToolbarScrollBehavior exitAlwaysFloatingToolbarScrollBehavior, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        booleanRef.element = measureScope.getLayoutDirection() == LayoutDirection.Rtl;
        final Placeable placeableMo7509measureBRTryo0 = measurable.mo7509measureBRTryo0(constraints.getValue());
        final float offset = (CollectionsKt.listOf((Object[]) new FloatingToolbarExitDirection[]{FloatingToolbarExitDirection.m2688boximpl(FloatingToolbarExitDirection.INSTANCE.m2697getStart8LIK8E()), FloatingToolbarExitDirection.m2688boximpl(FloatingToolbarExitDirection.INSTANCE.m2696getEnd8LIK8E())}).contains(FloatingToolbarExitDirection.m2688boximpl(exitAlwaysFloatingToolbarScrollBehavior.getExitDirection())) && booleanRef.element) ? -exitAlwaysFloatingToolbarScrollBehavior.getState().getOffset() : exitAlwaysFloatingToolbarScrollBehavior.getState().getOffset();
        return MeasureScope.layout$default(measureScope, placeableMo7509measureBRTryo0.getWidth(), placeableMo7509measureBRTryo0.getHeight(), null, new Function1() { // from class: androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ExitAlwaysFloatingToolbarScrollBehavior.floatingScrollBehavior$lambda$1$0(this.f$0, placeableMo7509measureBRTryo0, offset, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit floatingScrollBehavior$lambda$1$0(ExitAlwaysFloatingToolbarScrollBehavior exitAlwaysFloatingToolbarScrollBehavior, Placeable placeable, float f, Placeable.PlacementScope placementScope) {
        int exitDirection = exitAlwaysFloatingToolbarScrollBehavior.getExitDirection();
        if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2697getStart8LIK8E())) {
            Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, MathKt.roundToInt(f), 0, 0.0f, (Function1) null, 12, (Object) null);
        } else if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2696getEnd8LIK8E())) {
            Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, -MathKt.roundToInt(f), 0, 0.0f, (Function1) null, 12, (Object) null);
        } else if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2698getTop8LIK8E())) {
            Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, 0, MathKt.roundToInt(f), 0.0f, (Function1) null, 12, (Object) null);
        } else if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2695getBottom8LIK8E())) {
            Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, 0, -MathKt.roundToInt(f), 0.0f, (Function1) null, 12, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$floatingScrollBehavior$2, reason: invalid class name */
    /* JADX INFO: compiled from: FloatingToolbar.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "velocity", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.ExitAlwaysFloatingToolbarScrollBehavior$floatingScrollBehavior$2", f = "FloatingToolbar.kt", i = {}, l = {708}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function3<CoroutineScope, Float, Continuation<? super Unit>, Object> {
        /* synthetic */ float F$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Float f, Continuation<? super Unit> continuation) {
            return invoke(coroutineScope, f.floatValue(), continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, float f, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = ExitAlwaysFloatingToolbarScrollBehavior.this.new AnonymousClass2(continuation);
            anonymousClass2.F$0 = f;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                float f = this.F$0;
                this.label = 1;
                if (FloatingToolbarKt.settleFloatingToolbar(ExitAlwaysFloatingToolbarScrollBehavior.this.getState(), f, ExitAlwaysFloatingToolbarScrollBehavior.this.getSnapAnimationSpec(), ExitAlwaysFloatingToolbarScrollBehavior.this.getFlingAnimationSpec(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit floatingScrollBehavior$lambda$2(ExitAlwaysFloatingToolbarScrollBehavior exitAlwaysFloatingToolbarScrollBehavior, Ref.BooleanRef booleanRef, LayoutCoordinates layoutCoordinates) {
        float f;
        float fIntBitsToFloat;
        float f2;
        float fIntBitsToFloat2;
        float f3;
        long jPositionInParent = LayoutCoordinatesKt.positionInParent(layoutCoordinates);
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        long jMo7517getSizeYbymL2g = parentLayoutCoordinates != null ? parentLayoutCoordinates.mo7517getSizeYbymL2g() : IntSize.INSTANCE.m9068getZeroYbymL2g();
        int iMo7517getSizeYbymL2g = (int) (layoutCoordinates.mo7517getSizeYbymL2g() >> 32);
        int iMo7517getSizeYbymL2g2 = (int) (layoutCoordinates.mo7517getSizeYbymL2g() & 4294967295L);
        int exitDirection = exitAlwaysFloatingToolbarScrollBehavior.getExitDirection();
        if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2697getStart8LIK8E())) {
            if (booleanRef.element) {
                f = (int) (jMo7517getSizeYbymL2g >> 32);
                fIntBitsToFloat = Float.intBitsToFloat((int) (jPositionInParent >> 32));
                f3 = f - fIntBitsToFloat;
            } else {
                f2 = iMo7517getSizeYbymL2g;
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (jPositionInParent >> 32));
                f3 = f2 + fIntBitsToFloat2;
            }
        } else if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2696getEnd8LIK8E())) {
            if (booleanRef.element) {
                f2 = iMo7517getSizeYbymL2g;
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (jPositionInParent >> 32));
                f3 = f2 + fIntBitsToFloat2;
            } else {
                f = (int) (jMo7517getSizeYbymL2g >> 32);
                fIntBitsToFloat = Float.intBitsToFloat((int) (jPositionInParent >> 32));
                f3 = f - fIntBitsToFloat;
            }
        } else if (FloatingToolbarExitDirection.m2691equalsimpl0(exitDirection, FloatingToolbarExitDirection.INSTANCE.m2698getTop8LIK8E())) {
            f2 = iMo7517getSizeYbymL2g2;
            fIntBitsToFloat2 = Float.intBitsToFloat((int) (jPositionInParent & 4294967295L));
            f3 = f2 + fIntBitsToFloat2;
        } else {
            f = (int) (jMo7517getSizeYbymL2g & 4294967295L);
            fIntBitsToFloat = Float.intBitsToFloat((int) (jPositionInParent & 4294967295L));
            f3 = f - fIntBitsToFloat;
        }
        exitAlwaysFloatingToolbarScrollBehavior.getState().setOffsetLimit(-(f3 - exitAlwaysFloatingToolbarScrollBehavior.getState().getOffset()));
        return Unit.INSTANCE;
    }
}
