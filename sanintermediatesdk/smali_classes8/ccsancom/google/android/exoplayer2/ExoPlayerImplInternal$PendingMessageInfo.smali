.class final Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Lccsancom/google/android/exoplayer2/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/PlayerMessage;)V
    .locals 0
    .param p1, "message"    # Lccsancom/google/android/exoplayer2/PlayerMessage;

    .line 2967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2968
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lccsancom/google/android/exoplayer2/PlayerMessage;

    .line 2969
    return-void
.end method


# virtual methods
.method public compareTo(Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I
    .locals 5
    .param p1, "other"    # Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    .line 2979
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v3, v4, :cond_3

    .line 2981
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    .line 2983
    :cond_3
    if-nez v0, :cond_4

    .line 2985
    return v2

    .line 2988
    :cond_4
    iget v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v1, p1, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    .line 2989
    .local v0, "comparePeriodIndex":I
    if-eqz v0, :cond_5

    .line 2990
    return v0

    .line 2992
    :cond_5
    iget-wide v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v3, p1, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v1, v2, v3, v4}, Lccsancom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2959
    check-cast p1, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .locals 0
    .param p1, "periodIndex"    # I
    .param p2, "periodTimeUs"    # J
    .param p4, "periodUid"    # Ljava/lang/Object;

    .line 2972
    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 2973
    iput-wide p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 2974
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2975
    return-void
.end method
