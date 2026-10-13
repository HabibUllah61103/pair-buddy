package expo.modules.ui;

import expo.modules.kotlin.views.ComposeProps;
import expo.modules.ui.convertibles.ContentAlignment;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PullToRefreshBoxView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J%\u0010\u001b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0003JO\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072$\b\u0002\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000eHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R-\u0010\b\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nj\u0002`\r0\tj\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\""}, d2 = {"Lexpo/modules/ui/PullToRefreshBoxProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "isRefreshing", "", "contentAlignment", "Lexpo/modules/ui/convertibles/ContentAlignment;", "indicator", "Lexpo/modules/ui/PullToRefreshIndicatorProps;", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(ZLexpo/modules/ui/convertibles/ContentAlignment;Lexpo/modules/ui/PullToRefreshIndicatorProps;Ljava/util/List;)V", "()Z", "getContentAlignment", "()Lexpo/modules/ui/convertibles/ContentAlignment;", "getIndicator", "()Lexpo/modules/ui/PullToRefreshIndicatorProps;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PullToRefreshBoxProps implements ComposeProps {
    public static final int $stable = 8;
    private final ContentAlignment contentAlignment;
    private final PullToRefreshIndicatorProps indicator;
    private final boolean isRefreshing;
    private final List<Map<String, Object>> modifiers;

    public PullToRefreshBoxProps() {
        this(false, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PullToRefreshBoxProps copy$default(PullToRefreshBoxProps pullToRefreshBoxProps, boolean z, ContentAlignment contentAlignment, PullToRefreshIndicatorProps pullToRefreshIndicatorProps, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = pullToRefreshBoxProps.isRefreshing;
        }
        if ((i & 2) != 0) {
            contentAlignment = pullToRefreshBoxProps.contentAlignment;
        }
        if ((i & 4) != 0) {
            pullToRefreshIndicatorProps = pullToRefreshBoxProps.indicator;
        }
        if ((i & 8) != 0) {
            list = pullToRefreshBoxProps.modifiers;
        }
        return pullToRefreshBoxProps.copy(z, contentAlignment, pullToRefreshIndicatorProps, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsRefreshing() {
        return this.isRefreshing;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ContentAlignment getContentAlignment() {
        return this.contentAlignment;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PullToRefreshIndicatorProps getIndicator() {
        return this.indicator;
    }

    public final List<Map<String, Object>> component4() {
        return this.modifiers;
    }

    public final PullToRefreshBoxProps copy(boolean isRefreshing, ContentAlignment contentAlignment, PullToRefreshIndicatorProps indicator, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(indicator, "indicator");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new PullToRefreshBoxProps(isRefreshing, contentAlignment, indicator, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PullToRefreshBoxProps)) {
            return false;
        }
        PullToRefreshBoxProps pullToRefreshBoxProps = (PullToRefreshBoxProps) other;
        return this.isRefreshing == pullToRefreshBoxProps.isRefreshing && this.contentAlignment == pullToRefreshBoxProps.contentAlignment && Intrinsics.areEqual(this.indicator, pullToRefreshBoxProps.indicator) && Intrinsics.areEqual(this.modifiers, pullToRefreshBoxProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.isRefreshing) * 31;
        ContentAlignment contentAlignment = this.contentAlignment;
        return ((((iHashCode + (contentAlignment == null ? 0 : contentAlignment.hashCode())) * 31) + this.indicator.hashCode()) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "PullToRefreshBoxProps(isRefreshing=" + this.isRefreshing + ", contentAlignment=" + this.contentAlignment + ", indicator=" + this.indicator + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PullToRefreshBoxProps(boolean z, ContentAlignment contentAlignment, PullToRefreshIndicatorProps indicator, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(indicator, "indicator");
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.isRefreshing = z;
        this.contentAlignment = contentAlignment;
        this.indicator = indicator;
        this.modifiers = modifiers;
    }

    public final boolean isRefreshing() {
        return this.isRefreshing;
    }

    public final ContentAlignment getContentAlignment() {
        return this.contentAlignment;
    }

    public /* synthetic */ PullToRefreshBoxProps(boolean z, ContentAlignment contentAlignment, PullToRefreshIndicatorProps pullToRefreshIndicatorProps, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : contentAlignment, (i & 4) != 0 ? new PullToRefreshIndicatorProps(null, null, null, 7, null) : pullToRefreshIndicatorProps, (i & 8) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final PullToRefreshIndicatorProps getIndicator() {
        return this.indicator;
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
