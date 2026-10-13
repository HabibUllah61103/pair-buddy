package expo.modules.ui;

import expo.modules.kotlin.types.Either;
import expo.modules.kotlin.views.ComposeProps;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CarouselView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012$\b\u0002\u0010\f\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000ej\u0002`\u00110\rj\u0002`\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0017\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u001fJ%\u0010(\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000ej\u0002`\u00110\rj\u0002`\u0012HÆ\u0003Jz\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2$\b\u0002\u0010\f\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000ej\u0002`\u00110\rj\u0002`\u0012HÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020\u000b2\b\u0010,\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010-\u001a\u00020.HÖ\u0001J\t\u0010/\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR-\u0010\f\u001a\u001e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000ej\u0002`\u00110\rj\u0002`\u0012¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u00060"}, d2 = {"Lexpo/modules/ui/HorizontalUncontainedCarouselProps;", "Lexpo/modules/kotlin/views/ComposeProps;", "itemWidth", "", "itemSpacing", "contentPadding", "Lexpo/modules/kotlin/types/Either;", "Lexpo/modules/ui/PaddingValuesRecord;", "flingBehavior", "Lexpo/modules/ui/FlingBehaviorType;", "userScrollEnabled", "", "modifiers", "", "", "", "", "Lexpo/modules/ui/ModifierType;", "Lexpo/modules/ui/ModifierList;", "<init>", "(FLjava/lang/Float;Lexpo/modules/kotlin/types/Either;Lexpo/modules/ui/FlingBehaviorType;Ljava/lang/Boolean;Ljava/util/List;)V", "getItemWidth", "()F", "getItemSpacing", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getContentPadding", "()Lexpo/modules/kotlin/types/Either;", "getFlingBehavior", "()Lexpo/modules/ui/FlingBehaviorType;", "getUserScrollEnabled", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getModifiers", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(FLjava/lang/Float;Lexpo/modules/kotlin/types/Either;Lexpo/modules/ui/FlingBehaviorType;Ljava/lang/Boolean;Ljava/util/List;)Lexpo/modules/ui/HorizontalUncontainedCarouselProps;", "equals", "other", "hashCode", "", "toString", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class HorizontalUncontainedCarouselProps implements ComposeProps {
    public static final int $stable = 8;
    private final Either<Float, PaddingValuesRecord> contentPadding;
    private final FlingBehaviorType flingBehavior;
    private final Float itemSpacing;
    private final float itemWidth;
    private final List<Map<String, Object>> modifiers;
    private final Boolean userScrollEnabled;

    public HorizontalUncontainedCarouselProps() {
        this(0.0f, null, null, null, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HorizontalUncontainedCarouselProps copy$default(HorizontalUncontainedCarouselProps horizontalUncontainedCarouselProps, float f, Float f2, Either either, FlingBehaviorType flingBehaviorType, Boolean bool, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            f = horizontalUncontainedCarouselProps.itemWidth;
        }
        if ((i & 2) != 0) {
            f2 = horizontalUncontainedCarouselProps.itemSpacing;
        }
        if ((i & 4) != 0) {
            either = horizontalUncontainedCarouselProps.contentPadding;
        }
        if ((i & 8) != 0) {
            flingBehaviorType = horizontalUncontainedCarouselProps.flingBehavior;
        }
        if ((i & 16) != 0) {
            bool = horizontalUncontainedCarouselProps.userScrollEnabled;
        }
        if ((i & 32) != 0) {
            list = horizontalUncontainedCarouselProps.modifiers;
        }
        Boolean bool2 = bool;
        List list2 = list;
        return horizontalUncontainedCarouselProps.copy(f, f2, either, flingBehaviorType, bool2, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getItemWidth() {
        return this.itemWidth;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getItemSpacing() {
        return this.itemSpacing;
    }

    public final Either<Float, PaddingValuesRecord> component3() {
        return this.contentPadding;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final FlingBehaviorType getFlingBehavior() {
        return this.flingBehavior;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getUserScrollEnabled() {
        return this.userScrollEnabled;
    }

    public final List<Map<String, Object>> component6() {
        return this.modifiers;
    }

    public final HorizontalUncontainedCarouselProps copy(float itemWidth, Float itemSpacing, Either<Float, PaddingValuesRecord> contentPadding, FlingBehaviorType flingBehavior, Boolean userScrollEnabled, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new HorizontalUncontainedCarouselProps(itemWidth, itemSpacing, contentPadding, flingBehavior, userScrollEnabled, modifiers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HorizontalUncontainedCarouselProps)) {
            return false;
        }
        HorizontalUncontainedCarouselProps horizontalUncontainedCarouselProps = (HorizontalUncontainedCarouselProps) other;
        return Float.compare(this.itemWidth, horizontalUncontainedCarouselProps.itemWidth) == 0 && Intrinsics.areEqual((Object) this.itemSpacing, (Object) horizontalUncontainedCarouselProps.itemSpacing) && Intrinsics.areEqual(this.contentPadding, horizontalUncontainedCarouselProps.contentPadding) && this.flingBehavior == horizontalUncontainedCarouselProps.flingBehavior && Intrinsics.areEqual(this.userScrollEnabled, horizontalUncontainedCarouselProps.userScrollEnabled) && Intrinsics.areEqual(this.modifiers, horizontalUncontainedCarouselProps.modifiers);
    }

    public int hashCode() {
        int iHashCode = Float.hashCode(this.itemWidth) * 31;
        Float f = this.itemSpacing;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Either<Float, PaddingValuesRecord> either = this.contentPadding;
        int iHashCode3 = (iHashCode2 + (either == null ? 0 : either.hashCode())) * 31;
        FlingBehaviorType flingBehaviorType = this.flingBehavior;
        int iHashCode4 = (iHashCode3 + (flingBehaviorType == null ? 0 : flingBehaviorType.hashCode())) * 31;
        Boolean bool = this.userScrollEnabled;
        return ((iHashCode4 + (bool != null ? bool.hashCode() : 0)) * 31) + this.modifiers.hashCode();
    }

    public String toString() {
        return "HorizontalUncontainedCarouselProps(itemWidth=" + this.itemWidth + ", itemSpacing=" + this.itemSpacing + ", contentPadding=" + this.contentPadding + ", flingBehavior=" + this.flingBehavior + ", userScrollEnabled=" + this.userScrollEnabled + ", modifiers=" + this.modifiers + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HorizontalUncontainedCarouselProps(float f, Float f2, Either<Float, PaddingValuesRecord> either, FlingBehaviorType flingBehaviorType, Boolean bool, List<? extends Map<String, ? extends Object>> modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.itemWidth = f;
        this.itemSpacing = f2;
        this.contentPadding = either;
        this.flingBehavior = flingBehaviorType;
        this.userScrollEnabled = bool;
        this.modifiers = modifiers;
    }

    public final float getItemWidth() {
        return this.itemWidth;
    }

    public final Float getItemSpacing() {
        return this.itemSpacing;
    }

    public final Either<Float, PaddingValuesRecord> getContentPadding() {
        return this.contentPadding;
    }

    public final FlingBehaviorType getFlingBehavior() {
        return this.flingBehavior;
    }

    public final Boolean getUserScrollEnabled() {
        return this.userScrollEnabled;
    }

    public /* synthetic */ HorizontalUncontainedCarouselProps(float f, Float f2, Either either, FlingBehaviorType flingBehaviorType, Boolean bool, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 200.0f : f, (i & 2) != 0 ? null : f2, (i & 4) != 0 ? null : either, (i & 8) != 0 ? null : flingBehaviorType, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<Map<String, Object>> getModifiers() {
        return this.modifiers;
    }
}
