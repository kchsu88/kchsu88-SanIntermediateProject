.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageComposition"
.end annotation


# instance fields
.field public final regions:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final state:I

.field public final timeOutSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(IIILccsanandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageRegion;",
            ">;)V"
        }
    .end annotation

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    .line 886
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    .line 887
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    .line 888
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Lccsanandroid/util/SparseArray;

    .line 889
    return-void
.end method
