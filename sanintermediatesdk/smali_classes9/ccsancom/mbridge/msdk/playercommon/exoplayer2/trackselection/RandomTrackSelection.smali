.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public varargs constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)V

    .line 64
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 65
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IJ)V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)V

    .line 86
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 87
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 88
    return-void
.end method


# virtual methods
.method public final getSelectedIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public final getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSelectionReason()I
    .locals 1

    .line 122
    const/4 v0, 0x3

    return v0
.end method

.method public final updateSelectedTrack(JJJ)V
    .locals 0

    .line 94
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 95
    nop

    .line 96
    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    iget p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge p4, p6, :cond_1

    .line 97
    invoke-virtual {p0, p4, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result p6

    if-nez p6, :cond_0

    .line 98
    add-int/lit8 p5, p5, 0x1

    .line 96
    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 103
    iget p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-eq p5, p4, :cond_4

    .line 105
    nop

    .line 106
    const/4 p4, 0x0

    :goto_1
    iget p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge p3, p5, :cond_4

    .line 107
    invoke-virtual {p0, p3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result p5

    if-nez p5, :cond_3

    iget p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 p6, p4, 0x1

    if-ne p5, p4, :cond_2

    .line 108
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 109
    return-void

    .line 107
    :cond_2
    move p4, p6

    .line 106
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 113
    :cond_4
    return-void
.end method
