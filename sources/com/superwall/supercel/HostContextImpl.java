package com.superwall.supercel;

import com.sun.jna.Callback;
import com.sun.jna.Pointer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CEL.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 '2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002'(B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u000f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ<\u0010\u0014\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\u00152!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u0002H\u00150\u0017H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0016J \u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u001eH\u0016J \u0010%\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0016J\u0006\u0010&\u001a\u00020\u0005R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\rX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {"Lcom/superwall/supercel/HostContextImpl;", "Lcom/superwall/supercel/Disposable;", "Ljava/lang/AutoCloseable;", "Lcom/superwall/supercel/HostContext;", "pointer", "Lcom/sun/jna/Pointer;", "(Lcom/sun/jna/Pointer;)V", "noPointer", "Lcom/superwall/supercel/NoPointer;", "(Lcom/superwall/supercel/NoPointer;)V", "callCounter", "Ljava/util/concurrent/atomic/AtomicLong;", "cleanable", "Lcom/superwall/supercel/UniffiCleaner$Cleanable;", "getCleanable", "()Lcom/superwall/supercel/UniffiCleaner$Cleanable;", "getPointer", "()Lcom/sun/jna/Pointer;", "wasDestroyed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "callWithPointer", "R", "block", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "ptr", "callWithPointer$supercel_release", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "close", "", "computedProperty", "", "args", Callback.METHOD_NAME, "Lcom/superwall/supercel/ResultCallback;", "destroy", "deviceProperty", "uniffiClonePointer", "Companion", "UniffiCleanAction", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class HostContextImpl implements Disposable, AutoCloseable, HostContext {
    private final AtomicLong callCounter;
    private final UniffiCleaner.Cleanable cleanable;
    private final Pointer pointer;
    private final AtomicBoolean wasDestroyed;

    public HostContextImpl(Pointer pointer) {
        Intrinsics.checkNotNullParameter(pointer, "pointer");
        this.wasDestroyed = new AtomicBoolean(false);
        this.callCounter = new AtomicLong(1L);
        this.pointer = pointer;
        this.cleanable = UniffiLib.INSTANCE.getCLEANER$supercel_release().register(this, new UniffiCleanAction(pointer));
    }

    public HostContextImpl(NoPointer noPointer) {
        Intrinsics.checkNotNullParameter(noPointer, "noPointer");
        this.wasDestroyed = new AtomicBoolean(false);
        this.callCounter = new AtomicLong(1L);
        this.pointer = null;
        this.cleanable = UniffiLib.INSTANCE.getCLEANER$supercel_release().register(this, new UniffiCleanAction(null));
    }

    protected final Pointer getPointer() {
        return this.pointer;
    }

    protected final UniffiCleaner.Cleanable getCleanable() {
        return this.cleanable;
    }

    @Override // com.superwall.supercel.Disposable
    public void destroy() {
        if (this.wasDestroyed.compareAndSet(false, true) && this.callCounter.decrementAndGet() == 0) {
            this.cleanable.clean();
        }
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        destroy();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
    
        if (r7.callCounter.decrementAndGet() == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        r7.cleanable.clean();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
    
        throw r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> R callWithPointer$supercel_release(kotlin.jvm.functions.Function1<? super com.sun.jna.Pointer, ? extends R> r8) {
        /*
            r7 = this;
            java.lang.String r0 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
        L5:
            java.util.concurrent.atomic.AtomicLong r0 = access$getCallCounter$p(r7)
            long r0 = r0.get()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L7b
            r4 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 == 0) goto L5a
            java.util.concurrent.atomic.AtomicLong r4 = access$getCallCounter$p(r7)
            r5 = 1
            long r5 = r5 + r0
            boolean r0 = r4.compareAndSet(r0, r5)
            if (r0 == 0) goto L5
            com.sun.jna.Pointer r0 = r7.uniffiClonePointer()     // Catch: java.lang.Throwable -> L45
            java.lang.Object r8 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L45
            java.util.concurrent.atomic.AtomicLong r0 = access$getCallCounter$p(r7)
            long r0 = r0.decrementAndGet()
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L44
            com.superwall.supercel.UniffiCleaner$Cleanable r0 = access$getCleanable(r7)
            r0.clean()
        L44:
            return r8
        L45:
            r8 = move-exception
            java.util.concurrent.atomic.AtomicLong r0 = access$getCallCounter$p(r7)
            long r0 = r0.decrementAndGet()
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L59
            com.superwall.supercel.UniffiCleaner$Cleanable r0 = access$getCleanable(r7)
            r0.clean()
        L59:
            throw r8
        L5a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r7.getClass()
            java.lang.String r1 = r1.getSimpleName()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " call counter would overflow"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0)
            throw r8
        L7b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r7.getClass()
            java.lang.String r1 = r1.getSimpleName()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " object has already been destroyed"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.supercel.HostContextImpl.callWithPointer$supercel_release(kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX INFO: compiled from: CEL.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/superwall/supercel/HostContextImpl$UniffiCleanAction;", "Ljava/lang/Runnable;", "pointer", "Lcom/sun/jna/Pointer;", "(Lcom/sun/jna/Pointer;)V", "run", "", "supercel_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class UniffiCleanAction implements Runnable {
        private final Pointer pointer;

        public UniffiCleanAction(Pointer pointer) {
            this.pointer = pointer;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: E */
        @Override // java.lang.Runnable
        public void run() throws E, InternalException {
            Pointer pointer = this.pointer;
            if (pointer != null) {
                UniffiNullRustCallStatusErrorHandler uniffiNullRustCallStatusErrorHandler = UniffiNullRustCallStatusErrorHandler.INSTANCE;
                UniffiRustCallStatus uniffiRustCallStatus = new UniffiRustCallStatus();
                UniffiLib.INSTANCE.getINSTANCE$supercel_release().uniffi_cel_eval_fn_free_hostcontext(pointer, uniffiRustCallStatus);
                Unit unit = Unit.INSTANCE;
                CELKt.uniffiCheckCallStatus(uniffiNullRustCallStatusErrorHandler, uniffiRustCallStatus);
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E */
    public final Pointer uniffiClonePointer() throws E, InternalException {
        UniffiNullRustCallStatusErrorHandler uniffiNullRustCallStatusErrorHandler = UniffiNullRustCallStatusErrorHandler.INSTANCE;
        UniffiRustCallStatus uniffiRustCallStatus = new UniffiRustCallStatus();
        UniffiLib iNSTANCE$supercel_release = UniffiLib.INSTANCE.getINSTANCE$supercel_release();
        Pointer pointer = this.pointer;
        Intrinsics.checkNotNull(pointer);
        Pointer pointerUniffi_cel_eval_fn_clone_hostcontext = iNSTANCE$supercel_release.uniffi_cel_eval_fn_clone_hostcontext(pointer, uniffiRustCallStatus);
        CELKt.uniffiCheckCallStatus(uniffiNullRustCallStatusErrorHandler, uniffiRustCallStatus);
        return pointerUniffi_cel_eval_fn_clone_hostcontext;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0076, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0082, code lost:
    
        if (r10.callCounter.decrementAndGet() == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0084, code lost:
    
        r10.cleanable.clean();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        throw r0;
     */
    @Override // com.superwall.supercel.HostContext
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computedProperty(java.lang.String r11, java.lang.String r12, com.superwall.supercel.ResultCallback r13) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.supercel.HostContextImpl.computedProperty(java.lang.String, java.lang.String, com.superwall.supercel.ResultCallback):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0076, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0082, code lost:
    
        if (r10.callCounter.decrementAndGet() == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0084, code lost:
    
        r10.cleanable.clean();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        throw r0;
     */
    @Override // com.superwall.supercel.HostContext
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void deviceProperty(java.lang.String r11, java.lang.String r12, com.superwall.supercel.ResultCallback r13) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.superwall.supercel.HostContextImpl.deviceProperty(java.lang.String, java.lang.String, com.superwall.supercel.ResultCallback):void");
    }
}
