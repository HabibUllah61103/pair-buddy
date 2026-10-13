package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;

/* JADX INFO: compiled from: EditingBuffer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"updateRangeAfterDelete", "Landroidx/compose/ui/text/TextRange;", TypedValues.Attributes.S_TARGET, "deleted", "updateRangeAfterDelete-pWDy79M", "(JJ)J", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class EditingBufferKt {
    /* JADX INFO: renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m8503updateRangeAfterDeletepWDy79M(long j, long j2) {
        int iM8331getLengthimpl;
        int iM8333getMinimpl = TextRange.m8333getMinimpl(j);
        int iM8332getMaximpl = TextRange.m8332getMaximpl(j);
        if (TextRange.m8337intersects5zctL8(j2, j)) {
            if (TextRange.m8325contains5zctL8(j2, j)) {
                iM8333getMinimpl = TextRange.m8333getMinimpl(j2);
                iM8332getMaximpl = iM8333getMinimpl;
            } else {
                if (TextRange.m8325contains5zctL8(j, j2)) {
                    iM8331getLengthimpl = TextRange.m8331getLengthimpl(j2);
                } else if (TextRange.m8326containsimpl(j2, iM8333getMinimpl)) {
                    iM8333getMinimpl = TextRange.m8333getMinimpl(j2);
                    iM8331getLengthimpl = TextRange.m8331getLengthimpl(j2);
                } else {
                    iM8332getMaximpl = TextRange.m8333getMinimpl(j2);
                }
                iM8332getMaximpl -= iM8331getLengthimpl;
            }
        } else if (iM8332getMaximpl > TextRange.m8333getMinimpl(j2)) {
            iM8333getMinimpl -= TextRange.m8331getLengthimpl(j2);
            iM8331getLengthimpl = TextRange.m8331getLengthimpl(j2);
            iM8332getMaximpl -= iM8331getLengthimpl;
        }
        return TextRangeKt.TextRange(iM8333getMinimpl, iM8332getMaximpl);
    }
}
